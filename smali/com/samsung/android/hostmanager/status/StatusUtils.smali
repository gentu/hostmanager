.class public final Lcom/samsung/android/hostmanager/status/StatusUtils;
.super Ljava/lang/Object;
.source "StatusUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/samsung/android/hostmanager/status/StatusUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCorrectPhoneNumer(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 876
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "unknown"

    .end local p0    # "phoneNumber":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static getAppFeatureWearable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "deviceId"    # Ljava/lang/String;
    .param p1, "appFeatureID"    # Ljava/lang/String;

    .prologue
    .line 321
    sget-object v9, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ST::StatusUtils::getAppFeatureWearable()::deviceID=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] feature=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v7, 0x0

    .line 326
    .local v7, "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getStatusManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 331
    :goto_0
    const/4 v8, 0x0

    .line 333
    .local v8, "value":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 334
    invoke-interface {v7}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v0

    .line 336
    .local v0, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    if-eqz v0, :cond_4

    .line 338
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v5

    .line 339
    .local v5, "listAppInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    if-eqz v5, :cond_2

    .line 340
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 341
    .local v6, "listAppInfoSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 343
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getFeatures()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 344
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 347
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 349
    .local v4, "key":Ljava/lang/String;
    const-string v9, "feature"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 350
    sget-object v10, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ST::StatusUtils::getAppFeatureWearable::id="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getFeatures()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    const-string v12, "id"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " found"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getFeatures()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    const-string v10, "id"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 353
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getFeatures()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "value":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 354
    .restart local v8    # "value":Ljava/lang/String;
    sget-object v9, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ST::StatusUtils::getAppFeatureWearable::ret="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_3

    .line 370
    .end local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .end local v2    # "i":I
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "listAppInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    .end local v6    # "listAppInfoSize":I
    :cond_2
    :goto_2
    sget-object v9, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ST::StatusUtils::getAppFeatureWearable::appFeatureID=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] value=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-object v8

    .line 327
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto/16 :goto_0

    .line 341
    .end local v1    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    .restart local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .restart local v2    # "i":I
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "listAppInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    .restart local v6    # "listAppInfoSize":I
    .restart local v8    # "value":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 366
    .end local v2    # "i":I
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "listAppInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    .end local v6    # "listAppInfoSize":I
    :cond_4
    sget-object v9, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v10, "ST::StatusUtils::getAppFeatureWearable::deviceInfo is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getAutoCFDSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 1018
    const-string v1, "gear_number_pref"

    const-string v2, "auto_call_forward_pref"

    invoke-static {p0, p1, v1, v2}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->getPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1019
    .local v0, "mAutoCFD":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "false"

    .end local v0    # "mAutoCFD":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getCallForwardingActionSim1(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 961
    const-string v2, "gear_number_pref"

    const-string v3, "cfwd_requested_pref"

    invoke-static {p0, p1, v2, v3}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->getPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, "lastActivateMode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, -0x1

    .line 965
    .local v1, "lastActivateModeInt":I
    :goto_0
    return v1

    .line 964
    .end local v1    # "lastActivateModeInt":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 963
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getCallForwardingActionSim2(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 969
    const-string v2, "gear_number_pref"

    const-string v3, "cfwd_requested_pref_sim2"

    invoke-static {p0, p1, v2, v3}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->getPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 971
    .local v0, "lastActivateMode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, -0x1

    .line 973
    .local v1, "lastActivateModeInt":I
    :goto_0
    return v1

    .line 972
    .end local v1    # "lastActivateModeInt":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 971
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .locals 5
    .param p0, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 83
    sget-object v2, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ST::StatusUtils::getDeviceInfo()::deviceID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getStatusManager()Lcom/samsung/android/hostmanager/manager/IStatusManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    :goto_0
    sget-object v2, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ST::StatusUtils::getDeviceInfo::deviceType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-object v0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDeviceType(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ST::StatusUtils::getDeviceType()::deviceID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, "deviceType":Ljava/lang/String;
    const/4 v0, 0x0

    .line 57
    .local v0, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v1

    .line 60
    .local v1, "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getStatusManager()Lcom/samsung/android/hostmanager/manager/IStatusManager;

    move-result-object v4

    .line 62
    .local v4, "status":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    if-eqz v4, :cond_0

    .line 63
    invoke-interface {v4}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v0

    .line 67
    .end local v4    # "status":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :cond_0
    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceType()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 77
    .end local v1    # "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :goto_0
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ST::StatusUtils::getDeviceType::deviceType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v2

    .line 70
    .restart local v1    # "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :cond_1
    :try_start_1
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v6, "ST::StatusUtils::getDeviceType::deviceInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 73
    .end local v1    # "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :catch_0
    move-exception v3

    .line 74
    .local v3, "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getGearFakeModel(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 401
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v8, "getGearFakeModel()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v2, ""

    .line 404
    .local v2, "fakeModel":Ljava/lang/String;
    const/4 v3, 0x0

    .line 405
    .local v3, "gearModel":Ljava/lang/String;
    const-string v4, ""

    .line 408
    .local v4, "gearPlatform":Ljava/lang/String;
    const/4 v6, 0x0

    .line 410
    .local v6, "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getStatusManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 415
    :goto_0
    if-eqz v6, :cond_0

    .line 416
    invoke-interface {v6}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v0

    .line 417
    .local v0, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    if-eqz v0, :cond_2

    .line 418
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDevicePlatform()Ljava/lang/String;

    move-result-object v4

    .line 424
    .end local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :cond_0
    :goto_1
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "WearableInfoForSamsungApps"

    const-string v9, "MODELNAME"

    invoke-static {v7, p0, v8, v9}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->getPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 426
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getModelName()Ljava/lang/String;

    move-result-object v5

    .line 427
    .local v5, "model":Ljava/lang/String;
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Host model name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 430
    const-string v7, "SM-V700"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "tizen"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 431
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SM-V700T"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 439
    :cond_1
    :goto_2
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getGearFakeModel()-->FakeModel: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-object v2

    .line 411
    .end local v5    # "model":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 412
    .local v1, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 420
    .end local v1    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    .restart local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :cond_2
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v8, "getGearFakeModel::deviceInfo is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 432
    .end local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .restart local v5    # "model":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 433
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 435
    :cond_4
    move-object v2, v5

    .line 436
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v8, "getGearFakeModel::gearModel is null or empty"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getGearOSVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 376
    sget-object v4, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v5, "getGearOSVersion()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v2, ""

    .line 381
    .local v2, "gearOSVersion":Ljava/lang/String;
    const/4 v3, 0x0

    .line 383
    .local v3, "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getStatusManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 388
    :goto_0
    if-eqz v3, :cond_0

    .line 389
    invoke-interface {v3}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v0

    .line 390
    .local v0, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDevicePlatformVersion()Ljava/lang/String;

    move-result-object v2

    .line 397
    .end local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :cond_0
    :goto_1
    return-object v2

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 393
    .end local v1    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    .restart local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :cond_1
    sget-object v4, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v5, "getGearOSVersion::deviceInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getMCC(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 826
    .line 827
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 826
    invoke-static {p0, v0}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getMCC(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMNC(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 831
    .line 832
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 831
    invoke-static {p0, v0}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getMNC(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 518
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 521
    :try_start_0
    sget-object v4, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v5, "getMessagePackageName"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v1, "com.android.mms"

    .line 523
    .local v1, "originalPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/floatingfeature/FloatingFeatureFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/floatingfeature/FloatingFeatureInterface;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-interface {v4, v5, v1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/floatingfeature/FloatingFeatureInterface;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 525
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 526
    sget-object v4, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v5, "getMessagePackageName M OS "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 544
    .end local v1    # "originalPackageName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 532
    .restart local v1    # "originalPackageName":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v4, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v5, "getMessagePackageName N OS "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 534
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_1
    move-object v1, v3

    .line 538
    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v3, v1

    goto :goto_1

    .line 540
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "originalPackageName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 544
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v1, "com.android.mms"

    goto :goto_0
.end method

.method public static getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 836
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v6, "ST::StatusUtils::getPhoneNumber()::getPhoneNumber starts"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 838
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 839
    .local v1, "phoneNumber":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 840
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 844
    :goto_0
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v6, "ST::StatusUtils::getPhoneNumber::getPhoneNumber before checking"

    invoke-static {v5, v6, v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    invoke-static {v1}, Lcom/samsung/android/hostmanager/status/StatusUtils;->checkCorrectPhoneNumer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 846
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v6, "ST::StatusUtils::getPhoneNumber::getPhoneNumber after checking"

    invoke-static {v5, v6, v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->hasTwoSim()Z

    move-result v0

    .line 849
    .local v0, "hasTwoSim":Z
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ST::StatusUtils::getPhoneNumber::hasTwoSim ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->get2SimValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 852
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v6, "ST::StatusUtils::getPhoneNumber::SIM2 :: try to get phone number"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/APIChecker;->getTelephonyService2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 854
    .local v4, "telephonyManager2":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .line 855
    .local v2, "phoneNumber2":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 856
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 860
    :goto_1
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v6, "ST::StatusUtils::getPhoneNumber::SIM2 :: getPhoneNumber before checking"

    invoke-static {v5, v6, v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-static {v2}, Lcom/samsung/android/hostmanager/status/StatusUtils;->checkCorrectPhoneNumer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 864
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v6, "ST::StatusUtils::getPhoneNumber::SIM2 :: getPhoneNumber after checking"

    invoke-static {v5, v6, v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v6, "ST::StatusUtils::getPhoneNumber::SIM2 :: lets change phone number"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    move-object v1, v2

    .line 871
    .end local v2    # "phoneNumber2":Ljava/lang/String;
    .end local v4    # "telephonyManager2":Landroid/telephony/TelephonyManager;
    :cond_0
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v6, "ST::StatusUtils::getPhoneNumber::getPhoneNumber return"

    invoke-static {v5, v6, v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    return-object v1

    .line 842
    .end local v0    # "hasTwoSim":Z
    :cond_1
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v6, "ST::StatusUtils::getPhoneNumber::telephonyManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 858
    .restart local v0    # "hasTwoSim":Z
    .restart local v2    # "phoneNumber2":Ljava/lang/String;
    .restart local v4    # "telephonyManager2":Landroid/telephony/TelephonyManager;
    :cond_2
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v6, "ST::StatusUtils::getPhoneNumber::SIM2 :: telephonyManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getPhoneNumberSim1Pref(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 914
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "gear_number_pref"

    const-string v3, "phone_number_slot1"

    invoke-static {v1, p0, v2, v3}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->getPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, "number":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v2, "getPhoneNumberSim1Pref ends"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    return-object v0
.end method

.method public static getPhoneNumberSim2Pref(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 930
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "gear_number_pref"

    const-string v3, "phone_number_slot2"

    invoke-static {v1, p0, v2, v3}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->getPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "number":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v2, "getPhoneNumberSim2Pref ends"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    return-object v0
.end method

.method public static getSupportFeatureWearable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "deviceID"    # Ljava/lang/String;
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 183
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ST::StatusUtils::getSupportFeatureWearable()::deviceID=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] feature=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v2, 0x0

    .line 188
    .local v2, "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getStatusManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 193
    :goto_0
    const/4 v3, 0x0

    .line 194
    .local v3, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 195
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v0

    .line 196
    .local v0, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceFeature()Ljava/util/HashMap;

    move-result-object v4

    .line 198
    .local v4, "wearableDeviceFeatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 199
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 206
    .end local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .end local v4    # "wearableDeviceFeatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ST::StatusUtils::getSupportFeatureWearable::feature=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] value=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-object v3

    .line 189
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 202
    .end local v1    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    .restart local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v6, "ST::StatusUtils::getSupportFeatureWearable::deviceInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getWearableCFType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 1106
    sget-object v4, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v5, "getWearableCFType()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const-string v3, "SS"

    .line 1108
    .local v3, "mCfwdtype":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getWearableMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1109
    .local v0, "MCC":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getWearableMNC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1111
    .local v1, "MNC":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getInstance()Lcom/samsung/android/hostmanager/callforward/CallForwardParser;

    move-result-object v4

    .line 1112
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getInstance()Lcom/samsung/android/hostmanager/callforward/CallForwardParser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getInputStreamCF()Ljava/io/InputStream;

    move-result-object v5

    .line 1111
    invoke-virtual {v4, v5, v0, v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->parseCallForwardSetupInfo(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    move-result-object v2

    .line 1114
    .local v2, "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    if-eqz v2, :cond_0

    .line 1115
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getCfType()Ljava/lang/String;

    move-result-object v3

    .line 1120
    :goto_0
    if-eqz v2, :cond_1

    .line 1121
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getCfType()Ljava/lang/String;

    move-result-object v3

    .line 1126
    :goto_1
    return-object v3

    .line 1117
    :cond_0
    sget-object v4, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v5, "callForwardSetup is null. default set"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1123
    :cond_1
    sget-object v4, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v5, "callForwardSetup is null. default set"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getWearableDevicePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 254
    sget-object v6, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ST::StatusUtils::getWearableDevicePhoneNumber()::deviceID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v4, 0x0

    .line 259
    .local v4, "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getStatusManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 264
    :goto_0
    const/4 v2, 0x0

    .line 265
    .local v2, "featureVoiceCall":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "gear_number_pref"

    const-string v8, "wearable_phoneNumber_pref"

    invoke-static {v6, p0, v7, v8}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->getPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "phoneNumber":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v7, "ST::StatusUtils::getWearableDevicePhoneNumber::phoneNumber from SharedPref"

    invoke-static {v6, v7, v3}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 268
    invoke-interface {v4}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v0

    .line 269
    .local v0, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceFeature()Ljava/util/HashMap;

    move-result-object v5

    .line 271
    .local v5, "wearableDeviceFeatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    .line 272
    const-string v6, "voicecall"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "featureVoiceCall":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 273
    .restart local v2    # "featureVoiceCall":Ljava/lang/String;
    const-string v6, "true"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 274
    const-string v6, "phonenumber"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "phoneNumber":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 280
    .end local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .end local v5    # "wearableDeviceFeatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "phoneNumber":Ljava/lang/String;
    :cond_0
    sget-object v6, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v7, "ST::StatusUtils::getWearableDevicePhoneNumber"

    invoke-static {v6, v7, v3}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-object v3

    .line 260
    .end local v2    # "featureVoiceCall":Ljava/lang/String;
    .end local v3    # "phoneNumber":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWearableDevicePhoneNumberfromXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 289
    sget-object v6, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ST::StatusUtils::getWearableDevicePhoneNumberfromXML()::deviceID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v4, 0x0

    .line 294
    .local v4, "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getStatusManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 299
    :goto_0
    const/4 v2, 0x0

    .line 300
    .local v2, "featureVoiceCall":Ljava/lang/String;
    const/4 v3, 0x0

    .line 302
    .local v3, "phoneNumber":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 303
    invoke-interface {v4}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v0

    .line 304
    .local v0, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceFeature()Ljava/util/HashMap;

    move-result-object v5

    .line 306
    .local v5, "wearableDeviceFeatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    .line 307
    const-string v6, "voicecall"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "featureVoiceCall":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 308
    .restart local v2    # "featureVoiceCall":Ljava/lang/String;
    const-string v6, "true"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 309
    const-string v6, "phonenumber"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "phoneNumber":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 315
    .end local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .end local v5    # "wearableDeviceFeatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "phoneNumber":Ljava/lang/String;
    :cond_0
    sget-object v6, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v7, "ST::StatusUtils::getWearableDevicePhoneNumber"

    invoke-static {v6, v7, v3}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-object v3

    .line 295
    .end local v2    # "featureVoiceCall":Ljava/lang/String;
    .end local v3    # "phoneNumber":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWearableMCC(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 1044
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ST:tatusUtils::getWearableMCC():deviceID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const/4 v0, 0x0

    .line 1047
    .local v0, "MCC":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1050
    .local v1, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v2

    .line 1053
    .local v2, "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    if-eqz v2, :cond_0

    .line 1054
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getStatusManager()Lcom/samsung/android/hostmanager/manager/IStatusManager;

    move-result-object v4

    .line 1055
    .local v4, "status":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    if-eqz v4, :cond_0

    .line 1056
    invoke-interface {v4}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v1

    .line 1060
    .end local v4    # "status":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :cond_0
    if-eqz v1, :cond_1

    .line 1061
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getMCC()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1070
    .end local v2    # "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :goto_0
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ST:statusUtils::getWearableMCC:MCC = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return-object v0

    .line 1063
    .restart local v2    # "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :cond_1
    :try_start_1
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v6, "ST:statusUtils::getWearableMCC:deviceInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1066
    .end local v2    # "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :catch_0
    move-exception v3

    .line 1067
    .local v3, "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWearableMNC(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 1075
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ST:tatusUtils::getWearableMNC():deviceID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const/4 v0, 0x0

    .line 1078
    .local v0, "MNC":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1081
    .local v1, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v2

    .line 1084
    .local v2, "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    if-eqz v2, :cond_0

    .line 1085
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getStatusManager()Lcom/samsung/android/hostmanager/manager/IStatusManager;

    move-result-object v4

    .line 1086
    .local v4, "status":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    if-eqz v4, :cond_0

    .line 1087
    invoke-interface {v4}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v1

    .line 1091
    .end local v4    # "status":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :cond_0
    if-eqz v1, :cond_1

    .line 1092
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getMNC()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1101
    .end local v2    # "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :goto_0
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ST:statusUtils::getWearableMNC:MNC = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    return-object v0

    .line 1094
    .restart local v2    # "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :cond_1
    :try_start_1
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v6, "ST:statusUtils::getWearableMNC:deviceInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1097
    .end local v2    # "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :catch_0
    move-exception v3

    .line 1098
    .local v3, "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isCallForwardAgree(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 1023
    sget-object v1, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCallForwardAgree, deviceID ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "gear_number_pref"

    const-string v3, "callforward_agree_pref"

    invoke-static {v1, p1, v2, v3}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->getPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "mCallForwardAgree":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isMultiSimChecked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 977
    sget-object v1, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMultiSimChecked, deviceID ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const-string v1, "gear_number_pref"

    const-string v2, "multisim_select_pref"

    invoke-static {p0, p1, v1, v2}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->getPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 981
    .local v0, "multiSim":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 758
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 760
    .local v0, "enable":I
    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_1

    .line 761
    :cond_0
    sget-object v3, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ST::StatusUtils::isPackageEnabled::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is diabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    .end local v0    # "enable":I
    :goto_0
    return v2

    .line 764
    .restart local v0    # "enable":I
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ST::StatusUtils::isPackageEnabled::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is enabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    const/4 v2, 0x1

    goto :goto_0

    .line 767
    .end local v0    # "enable":I
    :catch_0
    move-exception v1

    .line 768
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ST::StatusUtils::isPackageEnabled::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isPreloadedApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 774
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 777
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 778
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v4, 0x81

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 783
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 782
    :catch_0
    move-exception v1

    .line 783
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isPreloadedPackageWearable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "deviceID"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 787
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ST::StatusUtils::isPreloadedPackageWearable()::deviceID=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] packageName=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v3, 0x0

    .line 792
    .local v3, "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getStatusManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 797
    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->hasWearableStatus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 799
    if-nez p0, :cond_1

    .line 800
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v6, "ST::StatusUtils::isPreloadedPackageWearable:: deviceID is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_0
    :goto_1
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ST::StatusUtils::isPreloadedPacakgeWearable::packageName=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] ret=false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v5, 0x0

    :goto_2
    return v5

    .line 793
    :catch_0
    move-exception v1

    .line 794
    .local v1, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 802
    .end local v1    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    :cond_1
    invoke-interface {v3}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v0

    .line 803
    .local v0, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v6, "ST::StatusUtils::isPreloadedPackageWearable:: Start to check PreloadedPackage"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    if-nez v0, :cond_2

    .line 805
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v6, "ST::StatusUtils::isPreloadedPackageWearable:: deviceInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 807
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 808
    .local v4, "wearableStatusGetAppInfoListSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v4, :cond_0

    .line 810
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 811
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v6, "ST::StatusUtils::isPreloadedPackageWearable:: package detected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPreloaded()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 813
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ST::StatusUtils::isPreloadedPackageWearable::packageName=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] ret=true"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v5, 0x1

    goto :goto_2

    .line 808
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public static isSKTCarrier()Z
    .locals 4

    .prologue
    .line 1030
    sget-object v2, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v3, "isSKTCarrier"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/4 v1, 0x0

    .line 1032
    .local v1, "ret":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getInstance()Lcom/samsung/android/hostmanager/callforward/CallForwardParser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getCallForwardSetupSim1()Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    move-result-object v0

    .line 1033
    .local v0, "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    if-eqz v0, :cond_1

    .line 1034
    const-string v2, "SKT"

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getCarrier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1035
    const/4 v1, 0x1

    .line 1040
    :cond_0
    :goto_0
    return v1

    .line 1037
    :cond_1
    sget-object v2, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v3, "callForwardSetup is null. default set"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isSafetyAssistanceReceiverRegistered(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 706
    const/4 v2, 0x0

    .line 708
    .local v2, "isEnableSendHelpMessageMenu":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 709
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.SAFETY_MESSAGE_TRIGGER_WITH_MEDIA"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    const-string v5, "emergencymessage/URI"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 712
    .local v4, "safetyMessageReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 714
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 715
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 716
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 719
    const-string v6, "com.sec.android.app.safetyassurance.permission.PRIVATE"

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 720
    const/4 v2, 0x1

    goto :goto_0

    .line 724
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ST::StatusUtils::isSafetyAssistanceReceiverRegistered "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    return v2
.end method

.method private static isSafetyAssistanceReceiverRegisteredGrant(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 681
    const/4 v2, 0x0

    .line 683
    .local v2, "isEnableSendHelpMessageMenu":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 684
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.SAFETY_MESSAGE_TRIGGER_WITH_MEDIA_GRANTED"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    const-string v5, "emergencymessage/granted/URI"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 687
    .local v4, "safetyMessageReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 689
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 690
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 691
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 694
    const-string v6, "com.sec.android.app.safetyassurance.permission.PRIVATE_GRANTED"

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 695
    const/4 v2, 0x1

    goto :goto_0

    .line 699
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ST::StatusUtils::isSafetyAssistanceReceiverRegisteredGrant "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return v2
.end method

.method private static isSafetyAssistanceReceiverRegisteredGrantNOS(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 656
    const/4 v2, 0x0

    .line 658
    .local v2, "isEnableSendHelpMessageMenu":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 659
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "com.sec.android.app.safetyassurance.action.SAFETY_MESSAGE_TRIGGER_WITH_MEDIA_GRANTED"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    const-string v5, "emergencymessage/granted/URI"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 662
    .local v4, "safetyMessageReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 664
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 665
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 666
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 669
    const-string v6, "com.sec.android.app.safetyassurance.permission.PRIVATE_GRANTED"

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 670
    const/4 v2, 0x1

    goto :goto_0

    .line 674
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ST::StatusUtils::isSafetyAssistanceReceiverRegisteredGrantNOS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return v2
.end method

.method public static isShowAutoCallForward(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 985
    sget-object v3, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isShowAutoCallForward, deviceID ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] wearable auto feature - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "support.callforward.auto"

    invoke-static {p1, v5}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isSupportFeatureWearable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const-string v2, "false"

    .line 988
    .local v2, "ret":Ljava/lang/String;
    const-string v1, "SS"

    .line 991
    .local v1, "mCfwdtype":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getInstance()Lcom/samsung/android/hostmanager/callforward/CallForwardParser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getCallForwardSetupSim1()Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    move-result-object v0

    .line 992
    .local v0, "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    if-eqz v0, :cond_3

    .line 993
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getCfType()Ljava/lang/String;

    move-result-object v1

    .line 1000
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->isDualModel()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "voicecall"

    .line 1001
    invoke-static {p1, v3}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isSupportFeatureWearable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "support.callforward.auto"

    .line 1002
    invoke-static {p1, v3}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isSupportFeatureWearable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1003
    const-string v3, "SS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "USSD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1004
    :cond_0
    const-string v2, "true"

    .line 1006
    :cond_1
    const-string v3, "460"

    invoke-static {p0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1007
    sget-object v3, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v4, "isShowAutoCallForward. china model does not support auto"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const-string v2, "false"

    .line 1012
    :cond_2
    const-string v3, "gear_number_pref"

    const-string v4, "auto_cf_pref"

    invoke-static {p0, p1, v3, v4, v2}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->setPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    sget-object v3, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isShowAutoCallForward, ret ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return-object v2

    .line 995
    :cond_3
    sget-object v3, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v4, "callForwardSetup is null. default set"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isShowReverseAutoCallForward(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 1131
    sget-object v2, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isShowReverseAutoCallForward, deviceID ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] wearable reverse auto feature - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "support.callforward.reverse"

    .line 1132
    invoke-static {p1, v4}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isSupportFeatureWearable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1131
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const-string v1, "false"

    .line 1135
    .local v1, "ret":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getWearableCFType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    .local v0, "mCfwdtype":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isShowReverseAutoCallForward, mCfwdtype ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const-string v2, "support.callforward.reverse"

    invoke-static {p1, v2}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isSupportFeatureWearable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1140
    const-string v2, "SS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "USSD"

    .line 1141
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1143
    :cond_0
    const-string v1, "true"

    .line 1146
    :cond_1
    const-string v2, "gear_number_pref"

    const-string v3, "reverse_cf_pref"

    invoke-static {p0, p1, v2, v3, v1}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->setPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    sget-object v2, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isShowReverseAutoCallForward, ret ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    return-object v1
.end method

.method public static isSupportAppPackageWearable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "deviceID"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ST::StatusUtils::isSupportAppPackageWearable()::deviceID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v6, 0x0

    .line 105
    .local v6, "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getStatusManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 110
    :goto_0
    const/4 v5, 0x0

    .line 111
    .local v5, "ret":Z
    if-eqz v6, :cond_1

    .line 112
    invoke-interface {v6}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v0

    .line 113
    .local v0, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v4

    .line 116
    .local v4, "listAppInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    if-eqz v4, :cond_1

    .line 117
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    .line 118
    .local v3, "info":Lcom/samsung/android/hostmanager/aidl/AppInfo;
    if-eqz v3, :cond_0

    .line 119
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "devicePackageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 122
    const/4 v5, 0x1

    .line 134
    .end local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .end local v1    # "devicePackageName":Ljava/lang/String;
    .end local v3    # "info":Lcom/samsung/android/hostmanager/aidl/AppInfo;
    .end local v4    # "listAppInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    :cond_1
    :goto_1
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ST::StatusUtils::isSupportAppPackageWearable::ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return v5

    .line 106
    .end local v5    # "ret":Z
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v2    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    .restart local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .restart local v5    # "ret":Z
    :cond_2
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v8, "ST::StatusUtils::isSupportAppPackageWearable::deviceInfo = null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isSupportFeatureHost(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "deviceID"    # Ljava/lang/String;
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 215
    sget-object v6, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ST::StatusUtils::isSupportFeatureHost()::deviceID=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] feature=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v2, 0x0

    .line 220
    .local v2, "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getStatusManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 225
    :goto_0
    const/4 v3, 0x0

    .line 226
    .local v3, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 227
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getHostStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v0

    .line 228
    .local v0, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceFeature()Ljava/util/HashMap;

    move-result-object v4

    .line 230
    .local v4, "wearableDeviceFeatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 231
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 238
    .end local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .end local v4    # "wearableDeviceFeatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    sget-object v6, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ST::StatusUtils::isSupportFeatureHost::feature=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] value=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    if-eqz v3, :cond_3

    .line 240
    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 241
    const/4 v5, 0x1

    .line 247
    :cond_1
    :goto_2
    return v5

    .line 221
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v1    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    .restart local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v7, "ST::StatusUtils::isSupportFeatureHost::deviceInfo is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 246
    .end local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :cond_3
    sget-object v6, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v7, "ST::StatusUtils::isSupportFeatureHost value is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static isSupportFeatureWearable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "deviceID"    # Ljava/lang/String;
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 143
    sget-object v6, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ST::StatusUtils::isSupportFeatureWearable()::deviceID=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] feature=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v2, 0x0

    .line 148
    .local v2, "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getStatusManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 153
    :goto_0
    const/4 v3, 0x0

    .line 154
    .local v3, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 155
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v0

    .line 156
    .local v0, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceFeature()Ljava/util/HashMap;

    move-result-object v4

    .line 158
    .local v4, "wearableDeviceFeatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 159
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 166
    .end local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .end local v4    # "wearableDeviceFeatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    sget-object v6, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ST::StatusUtils::isSupportFeatureWearable::feature=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] value=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-eqz v3, :cond_3

    .line 168
    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 169
    const/4 v5, 0x1

    .line 175
    :cond_1
    :goto_2
    return v5

    .line 149
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v1    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    .restart local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v7, "ST::StatusUtils::isSupportFeatureWearable::deviceInfo is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 174
    .end local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :cond_3
    sget-object v6, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v7, "ST::StatusUtils::isSupportFeatureWearable value is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static putTimeStampFromPref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "deviceID"    # Ljava/lang/String;
    .param p1, "timeStamp"    # Ljava/lang/String;

    .prologue
    .line 446
    sget-object v3, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ST::putTimeStampFromPref TIMESTAMP PUT!!::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-static {p0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 450
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "hmStatus_timestamp"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 451
    .local v2, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 452
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_timestamp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 453
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 458
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sharedPref":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 455
    :cond_0
    sget-object v3, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v4, "ST::deviceType is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static readFileAsString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 731
    const/4 v3, 0x0

    .line 732
    .local v3, "result":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/class/sensors/accelerometer_sensor/"

    const-string v6, "name"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 743
    .local v4, "scanner":Ljava/util/Scanner;
    invoke-virtual {v4}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 744
    invoke-virtual {v4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    .line 745
    .local v2, "line":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/accelerometer_sensor/name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    .line 753
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "scanner":Ljava/util/Scanner;
    :goto_0
    return-object v2

    .line 749
    .restart local v4    # "scanner":Ljava/util/Scanner;
    :cond_0
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "scanner":Ljava/util/Scanner;
    :goto_1
    move-object v2, v3

    .line 753
    goto :goto_0

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static supportMessaging(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 501
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 504
    .local v0, "hasSystemFeatureTelephony":Z
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isInstalledApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 506
    .local v1, "isInstalledMessaging":Z
    invoke-static {p0}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 507
    move v2, v1

    .line 512
    .local v2, "result":Z
    :goto_1
    sget-object v3, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ST::StatusUtils::supportMessaging "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return v2

    .line 501
    .end local v0    # "hasSystemFeatureTelephony":Z
    .end local v1    # "isInstalledMessaging":Z
    .end local v2    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 509
    .restart local v0    # "hasSystemFeatureTelephony":Z
    .restart local v1    # "isInstalledMessaging":Z
    :cond_1
    move v2, v0

    .restart local v2    # "result":Z
    goto :goto_1
.end method

.method public static supportSafetyAssistance(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 639
    invoke-static {p0}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    :goto_0
    return v0

    .line 643
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isSafetyAssistanceReceiverRegisteredGrant(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isSafetyAssistanceReceiverRegistered(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isSafetyAssistanceReceiverRegisteredGrantNOS(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "com.sec.android.app.safetyassurance"

    .line 644
    invoke-static {p0, v1}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 645
    sget-object v0, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v1, "ST::StatusUtils::supportSafetyAssistance true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v0, 0x1

    goto :goto_0

    .line 648
    :cond_2
    sget-object v1, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v2, "ST::StatusUtils::supportSafetyAssistance false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static supportSmartRelay(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 550
    const/4 v5, 0x0

    .line 553
    .local v5, "sensorManager":Landroid/hardware/SensorManager;
    const-string v7, "sensor"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "sensorManager":Landroid/hardware/SensorManager;
    check-cast v5, Landroid/hardware/SensorManager;

    .line 555
    .restart local v5    # "sensorManager":Landroid/hardware/SensorManager;
    invoke-virtual {v5, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    if-nez v7, :cond_0

    .line 556
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v8, "ST::StatusUtils::supportSmartRelay::ACCELEROMETER sensor is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :goto_0
    return v9

    .line 558
    :cond_0
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    if-nez v7, :cond_1

    .line 559
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v8, "ST::StatusUtils::supportSmartRelay::GYROSCOPE sensor is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 561
    :cond_1
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    if-nez v7, :cond_2

    .line 562
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v8, "ST::StatusUtils::supportSmartRelay::PROXIMITY sensor is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 566
    :cond_2
    const/4 v6, 0x0

    .line 567
    .local v6, "sensorName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 569
    .local v1, "accelerometerSensor":Landroid/hardware/Sensor;
    invoke-virtual {v5, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 570
    if-eqz v1, :cond_4

    .line 571
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    .line 575
    :goto_1
    const-string v3, "MPU-6050"

    .line 576
    .local v3, "notSupported1":Ljava/lang/String;
    const-string v4, "LSM330"

    .line 577
    .local v4, "notSupported2":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 578
    .local v2, "contained":Ljava/lang/Boolean;
    if-eqz v6, :cond_3

    .line 579
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 580
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    .line 581
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 584
    :cond_3
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ST::StatusUtils::supportSmartRelay::accelerometerSensor.getName() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 588
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v8, "ST::StatusUtils::supportSmartRelay::accelerometerSensor name contained true so will return false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 573
    .end local v2    # "contained":Ljava/lang/Boolean;
    .end local v3    # "notSupported1":Ljava/lang/String;
    .end local v4    # "notSupported2":Ljava/lang/String;
    :cond_4
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v10, "ST::StatusUtils::supportSmartRelay::accelerometerSensor is null"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 593
    .restart local v2    # "contained":Ljava/lang/Boolean;
    .restart local v3    # "notSupported1":Ljava/lang/String;
    .restart local v4    # "notSupported2":Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 594
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v8, "ST::StatusUtils::supportSmartRelay::this is tablet model, so will return false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 598
    :cond_6
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v7

    if-nez v7, :cond_7

    .line 599
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v8, "ST::StatusUtils::supportSmartRelay::this is not samsung device , so will return false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 605
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 606
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/pm/PMFeatureFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PMFeatureInterface;

    move-result-object v10

    invoke-interface {v10}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PMFeatureInterface;->FEATURE_FOLDER_TYPE()Ljava/lang/String;

    move-result-object v10

    .line 605
    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 607
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/pm/PMFeatureFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PMFeatureInterface;

    move-result-object v10

    invoke-interface {v10}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PMFeatureInterface;->FEATURE_DUAL_LCD()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v8

    .line 605
    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 609
    .local v0, "HasFolderTypeFeature":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 610
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v8, "ST::StatusUtils::supportSmartRelay::this is folder type device , so will return false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "HasFolderTypeFeature":Ljava/lang/Boolean;
    :cond_8
    move v7, v9

    .line 607
    goto :goto_2

    .restart local v0    # "HasFolderTypeFeature":Ljava/lang/Boolean;
    :cond_9
    move v9, v8

    .line 614
    goto/16 :goto_0
.end method

.method public static supportSwiftKey(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 619
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 620
    .local v4, "thisDataPath":Ljava/lang/String;
    const-string v5, "com.samsung.android.hostmanager"

    .line 621
    .local v5, "thisPkgname":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 623
    .local v1, "endIndex":I
    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "currentDeviceLoginmodeDataPath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "com.sec.android.inputmethod/app_SwiftKey"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 625
    .local v3, "sipSwiftUserPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 626
    .local v2, "sipDir":Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 627
    sget-object v6, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v7, "ST::StatusUtils::supportSwiftKey::WordsTransfer: sipDir exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v6, 0x1

    .line 631
    :goto_0
    return v6

    .line 630
    :cond_0
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ST::StatusUtils::isSupportSwiftKey::WordsTransfer: sipDir NOT exists, sipDir="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static supportTelephony(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 462
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.telephony"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    .line 468
    .local v0, "hasSystemFeatureTelephony":Z
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 473
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/systemproperty/SystemPropertyFactory;->getAndroidSystemProperty()Lcom/samsung/android/app/watchmanager/plugin/libinterface/systemproperty/AndroidSystemInterface;

    move-result-object v6

    invoke-interface {v6, p0}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/systemproperty/AndroidSystemInterface;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    .line 476
    .local v2, "supportVoiceCall":Z
    invoke-static {p0}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 479
    move v1, v2

    .line 492
    .local v1, "retValue":Z
    :goto_1
    sget-object v4, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ST::StatusUtils::supportTelephony::hasSystemFeatureTelephony "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " supportVoiceCall "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return v1

    .end local v0    # "hasSystemFeatureTelephony":Z
    .end local v1    # "retValue":Z
    .end local v2    # "supportVoiceCall":Z
    :cond_0
    move v0, v5

    .line 462
    goto :goto_0

    .line 481
    .restart local v0    # "hasSystemFeatureTelephony":Z
    .restart local v2    # "supportVoiceCall":Z
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    move v1, v4

    .restart local v1    # "retValue":Z
    :goto_2
    goto :goto_1

    .end local v1    # "retValue":Z
    :cond_2
    move v1, v5

    goto :goto_2

    .line 485
    .end local v2    # "supportVoiceCall":Z
    :cond_3
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 486
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    if-nez v6, :cond_4

    move v2, v5

    .line 487
    .restart local v2    # "supportVoiceCall":Z
    :goto_3
    sget-object v6, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ST::StatusUtils::supportTelephony::supportVoiceCall others "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    move v1, v4

    .restart local v1    # "retValue":Z
    :goto_4
    goto :goto_1

    .end local v1    # "retValue":Z
    .end local v2    # "supportVoiceCall":Z
    :cond_4
    move v2, v4

    .line 486
    goto :goto_3

    .restart local v2    # "supportVoiceCall":Z
    :cond_5
    move v1, v5

    .line 489
    goto :goto_4
.end method

.method public static updateCallForwardingActionSim1(Ljava/lang/String;I)V
    .locals 4
    .param p0, "deviceID"    # Ljava/lang/String;
    .param p1, "action"    # I

    .prologue
    .line 945
    sget-object v0, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallForwardingActionSim1, device ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], action ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gear_number_pref"

    const-string v2, "cfwd_requested_pref"

    .line 948
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 947
    invoke-static {v0, p0, v1, v2, v3}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->setPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    sget-object v0, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v1, "updateCallForwardingActionSim1 ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    return-void
.end method

.method public static updateCallForwardingActionSim2(Ljava/lang/String;I)V
    .locals 4
    .param p0, "deviceID"    # Ljava/lang/String;
    .param p1, "action"    # I

    .prologue
    .line 953
    sget-object v0, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallForwardingActionSim2, device ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], action ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gear_number_pref"

    const-string v2, "cfwd_requested_pref_sim2"

    .line 956
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 955
    invoke-static {v0, p0, v1, v2, v3}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->setPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    sget-object v0, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v1, "updateCallForwardingActionSim2 ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    return-void
.end method

.method public static updateCallForwardingGearStatusAction(Ljava/lang/String;I)V
    .locals 4
    .param p0, "deviceID"    # Ljava/lang/String;
    .param p1, "action"    # I

    .prologue
    .line 937
    sget-object v0, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallForwardingGearStatus, device ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], action ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gear_number_pref"

    const-string v2, "cfwd_gear_status_pref"

    .line 940
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 939
    invoke-static {v0, p0, v1, v2, v3}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->setPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    sget-object v0, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v1, "updateCallForwardingGearStatus ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    return-void
.end method

.method public static updateDualModelPref(Ljava/lang/String;Z)V
    .locals 4
    .param p0, "deviceID"    # Ljava/lang/String;
    .param p1, "isDual"    # Z

    .prologue
    .line 880
    sget-object v1, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v2, "updateDualModelPref starts"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "dual":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "gear_number_pref"

    const-string v3, "host_dual_model"

    invoke-static {v1, p0, v2, v3, v0}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->setPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    sget-object v1, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDualModelPref ends, dual ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    return-void
.end method

.method public static updatePhoneNumberSim1Pref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "deviceID"    # Ljava/lang/String;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 905
    sget-object v0, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v1, "updatePhoneNumberSim1Pref starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gear_number_pref"

    const-string v2, "phone_number_slot1"

    invoke-static {v0, p0, v1, v2, p1}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->setPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    sget-object v0, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v1, "updatePhoneNumberSim1Pref ends"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    return-void
.end method

.method public static updatePhoneNumberSim2Pref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "deviceID"    # Ljava/lang/String;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 921
    sget-object v0, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v1, "updatePhoneNumberSim2Pref starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gear_number_pref"

    const-string v2, "phone_number_slot2"

    invoke-static {v0, p0, v1, v2, p1}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->setPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    sget-object v0, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v1, "updatePhoneNumberSim2Pref ends"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    return-void
.end method

.method public static updatePhoneTypeSim1Pref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "deviceID"    # Ljava/lang/String;
    .param p1, "phoneType"    # Ljava/lang/String;

    .prologue
    .line 889
    sget-object v0, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v1, "updatePhoneTypeSim1Pref starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gear_number_pref"

    const-string v2, "phone_type_slot1"

    invoke-static {v0, p0, v1, v2, p1}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->setPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    sget-object v0, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhoneTypeSim1Pref ends, dual ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void
.end method

.method public static updatePhoneTypeSim2Pref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "deviceID"    # Ljava/lang/String;
    .param p1, "phoneType"    # Ljava/lang/String;

    .prologue
    .line 897
    sget-object v0, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    const-string v1, "updatePhoneTypeSim2Pref starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gear_number_pref"

    const-string v2, "phone_type_slot2"

    invoke-static {v0, p0, v1, v2, p1}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->setPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    sget-object v0, Lcom/samsung/android/hostmanager/status/StatusUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhoneTypeSim2Pref ends, dual ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return-void
.end method
