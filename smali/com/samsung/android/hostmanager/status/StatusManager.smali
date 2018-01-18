.class public abstract Lcom/samsung/android/hostmanager/status/StatusManager;
.super Ljava/lang/Object;
.source "StatusManager.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/manager/IStatusManager;


# static fields
.field public static final FALSE:Ljava/lang/String; = "false"

.field private static final PREFIX_FOLDER:Ljava/lang/String; = "hmStatus"

.field private static final TAG:Ljava/lang/String;

.field public static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field protected mDeviceId:Ljava/lang/String;

.field private mFeaturesDefaultValWearable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHostDevice:Lcom/samsung/android/hostmanager/status/HostDevice;

.field private mHostDeviceStatus:Lcom/samsung/android/hostmanager/status/HostStatus;

.field private mModelName:Ljava/lang/String;

.field private mTimeStamp:Ljava/lang/String;

.field private mWearableDeviceStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWearablePhoneNumberEditedByUser:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/hostmanager/status/StatusManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mWearableDeviceStatus:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/samsung/android/hostmanager/status/HostStatus;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/status/HostStatus;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mHostDeviceStatus:Lcom/samsung/android/hostmanager/status/HostStatus;

    .line 45
    iput-object v1, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mHostDevice:Lcom/samsung/android/hostmanager/status/HostDevice;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    .line 51
    iput-object v1, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mTimeStamp:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mModelName:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mWearablePhoneNumberEditedByUser:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mDeviceId:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ST::============= Create StatusManager deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/status/StatusManager;->prepareFeaturesDefaultValWearable()V

    .line 39
    return-void
.end method

.method private calibrateWearableStatus(Lcom/samsung/android/hostmanager/aidl/DeviceInfo;)Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .locals 14
    .param p1, "deviceItem"    # Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    .prologue
    .line 324
    sget-object v11, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    const-string v12, "ST::calibrateWearableStatus()"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getModelNumber()Ljava/lang/String;

    move-result-object v9

    .line 328
    .local v9, "modelNumber":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 329
    invoke-virtual {p1, v9}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setDeviceType(Ljava/lang/String;)V

    .line 347
    :cond_0
    if-eqz v9, :cond_1

    .line 348
    const-string v11, "SM-V700"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 349
    sget-object v11, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ST::calibrateWearableStatus:: detect model:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getModelNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v11, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v12, "sensor.heartrate"

    const-string v13, "false"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v11, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v12, "sensor.irled"

    const-string v13, "false"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_1
    const/4 v10, 0x0

    .line 357
    .local v10, "wearableDeviceFeatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceFeature()Ljava/util/HashMap;

    move-result-object v10

    .line 361
    if-eqz v10, :cond_5

    .line 362
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 363
    .local v1, "debugSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 365
    .local v0, "debugIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 367
    .local v7, "logData":Ljava/lang/StringBuffer;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 368
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 369
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 373
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 374
    .local v8, "logRet":Ljava/lang/String;
    sget-object v11, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ST::calibrateWearableStatus::WearableDeviceFeature : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v0    # "debugIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1    # "debugSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7    # "logData":Ljava/lang/StringBuffer;
    .end local v8    # "logRet":Ljava/lang/String;
    :goto_1
    iget-object v11, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 381
    .local v3, "defaultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 382
    .local v2, "defaultIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 383
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 384
    .restart local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 385
    .local v6, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 386
    .local v4, "defaultVal":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 387
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "key":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 388
    .restart local v6    # "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "defaultVal":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 393
    .restart local v4    # "defaultVal":Ljava/lang/String;
    :cond_4
    if-eqz v10, :cond_3

    .line 394
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 395
    sget-object v11, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ST::calibrateWearableStatus:: key=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] does not exist. DefaultVal=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] added"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceFeature()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 376
    .end local v2    # "defaultIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "defaultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "defaultVal":Ljava/lang/String;
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "key":Ljava/lang/String;
    :cond_5
    sget-object v11, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    const-string v12, "ST::calibrateWearableStatus::WearableDeviceFeature is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 401
    .restart local v2    # "defaultIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v3    # "defaultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_6
    return-object p1
.end method

.method private getWearablePhoneNumberEditedByUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mWearablePhoneNumberEditedByUser:Ljava/lang/String;

    return-object v0
.end method

.method private prepareFeaturesDefaultValWearable()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "camera"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.backuprestore"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.packagemanager"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.notification"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.mobileaegis"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "scs"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "voicecall"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "gps"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "wps"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "wifidirect"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "screen.width"

    const-string v2, "320"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "screen.height"

    const-string v2, "320"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "sensor.barometer"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "sensor.magnetometer"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "sensor.photometer"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "sensor.heartrate"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "sensor.ultraviolet"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "sensor.irled"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.font"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.tts"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.ime"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.widget.type"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.myapps.order"

    const-string v2, "appsOrderXml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.myapps.iconbg"

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.moreimages.num"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.devicestatus"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.gesture.palmmotion"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.connection.auto.necklet"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.time.autosync"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.packagemanager.install.ack"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.findmygear.lockreset"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.privacypolicy.reportdiagnostic"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.privacypolicy.newsbriefing"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.callforward.auto"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.callforward.auto"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.wallpaperimages.num"

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mFeaturesDefaultValWearable:Ljava/util/HashMap;

    const-string v1, "support.styleclock.num"

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mWearableDeviceStatus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 416
    return-void
.end method

.method public getHostDevice()Lcom/samsung/android/hostmanager/status/HostDevice;
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mHostDevice:Lcom/samsung/android/hostmanager/status/HostDevice;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Lcom/samsung/android/hostmanager/status/HostDevice;

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mDeviceId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/status/HostDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mHostDevice:Lcom/samsung/android/hostmanager/status/HostDevice;

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mHostDevice:Lcom/samsung/android/hostmanager/status/HostDevice;

    return-object v0
.end method

.method public getHostStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .locals 7

    .prologue
    .line 106
    sget-object v4, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    const-string v5, "ST::getHostStatus()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "dirPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "hmStatus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "HostStatus.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "fileChk":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v2, "file":Ljava/io/File;
    sget-object v4, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ST::getHostStatus::fileChk="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 117
    iget-object v4, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mHostDevice:Lcom/samsung/android/hostmanager/status/HostDevice;

    if-nez v4, :cond_0

    .line 118
    new-instance v4, Lcom/samsung/android/hostmanager/status/HostDevice;

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mDeviceId:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/hostmanager/status/HostDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mHostDevice:Lcom/samsung/android/hostmanager/status/HostDevice;

    .line 120
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mHostDevice:Lcom/samsung/android/hostmanager/status/HostDevice;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/status/HostDevice;->requestGetHostStatus()Lcom/samsung/android/hostmanager/status/HostStatus;

    move-result-object v4

    .line 129
    :goto_0
    return-object v4

    .line 124
    :cond_1
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;-><init>()V

    .line 125
    .local v0, "deviceinfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v3}, Lcom/samsung/android/hostmanager/status/StatusParser;->ParseDeviceStatusFromXML(Landroid/content/Context;Lcom/samsung/android/hostmanager/aidl/DeviceInfo;Ljava/lang/String;)V

    .line 128
    iget-object v4, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mHostDeviceStatus:Lcom/samsung/android/hostmanager/status/HostStatus;

    invoke-virtual {v4, v0}, Lcom/samsung/android/hostmanager/status/HostStatus;->setHostStatus(Lcom/samsung/android/hostmanager/aidl/DeviceInfo;)V

    .line 129
    iget-object v4, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mHostDeviceStatus:Lcom/samsung/android/hostmanager/status/HostStatus;

    goto :goto_0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mModelName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .locals 6

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    const-string v4, "ST::getWearableStatus()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v3, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mWearableDeviceStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/status/StatusManager;->refreshWearableDevices()Z

    .line 261
    sget-object v3, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ST::getWearableStatus:: tried to refresh status, current size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mWearableDeviceStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    sget-object v3, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ST::getWearableStatus::mWearableDeviceStatus list size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mWearableDeviceStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v3, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mWearableDeviceStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 266
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 267
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    .line 268
    .local v0, "deviceItem":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    sget-object v3, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ST::getWearableStatus::mDeviceId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / deviceItem.getDeviceID() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v2, 0x0

    .line 271
    .local v2, "peerID":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getConnectivity()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getConnectivity()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "peerID"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 272
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getConnectivity()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "peerID"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "peerID":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 273
    .restart local v2    # "peerID":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ST::getWearableStatus::deviceItem peerID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/status/StatusManager;->getWearablePhoneNumberEditedByUser()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 282
    sget-object v3, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    const-string v4, "ST::getWearableStatus::wearablePhoneNumber updated"

    invoke-direct {p0}, Lcom/samsung/android/hostmanager/status/StatusManager;->getWearablePhoneNumberEditedByUser()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceFeature()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "phonenumber"

    invoke-direct {p0}, Lcom/samsung/android/hostmanager/status/StatusManager;->getWearablePhoneNumberEditedByUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    .end local v0    # "deviceItem":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .end local v2    # "peerID":Ljava/lang/String;
    :cond_4
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 257
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public hasWearableStatus()Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mWearableDeviceStatus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChangedHostStatus()Z
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 136
    sget-object v11, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    const-string v12, "ST::isChangedHostStatus()"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "dirPath":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "hmStatus"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "HostStatus.xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, "fileChk":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v5, "file":Ljava/io/File;
    sget-object v11, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ST::isChangedHostStatus::fileChk="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 146
    sget-object v11, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    const-string v12, "ST::isChangedHostStatus::HostStatus.xml not exist"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return v10

    .line 151
    :cond_0
    new-instance v3, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    invoke-direct {v3}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;-><init>()V

    .line 152
    .local v3, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v3, v6}, Lcom/samsung/android/hostmanager/status/StatusParser;->ParseDeviceStatusFromXML(Landroid/content/Context;Lcom/samsung/android/hostmanager/aidl/DeviceInfo;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 155
    sget-object v11, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    const-string v12, "ST::isChangedHostStatus::HostStatus parse failed"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getMCC()Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, "savedMCC":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 161
    const-string v7, ""

    .line 164
    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getMNC()Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, "savedMNC":Ljava/lang/String;
    if-nez v8, :cond_3

    .line 166
    const-string v8, ""

    .line 169
    :cond_3
    const/4 v9, 0x0

    .line 170
    .local v9, "savedPhoneNumber":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceFeature()Ljava/util/HashMap;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 171
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceFeature()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "phonenumber"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "savedPhoneNumber":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 173
    .restart local v9    # "savedPhoneNumber":Ljava/lang/String;
    :cond_4
    if-nez v9, :cond_5

    .line 174
    const-string v9, ""

    .line 177
    :cond_5
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "currentMCC":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 179
    const-string v0, ""

    .line 182
    :cond_6
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "currentMNC":Ljava/lang/String;
    if-nez v1, :cond_7

    .line 184
    const-string v1, ""

    .line 187
    :cond_7
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "currentPhoneNumber":Ljava/lang/String;
    if-nez v2, :cond_8

    .line 189
    const-string v2, ""

    .line 192
    :cond_8
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 193
    sget-object v11, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ST::isChangedHostStatus::savedMCC=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] currentMCC=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] savedMNC=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] currentMNC=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] savedPhoneNUmber=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] currentPhoneNumber=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_1
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 202
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 203
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 204
    :cond_9
    sget-object v10, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    const-string v11, "ST::isChangedHostStatus::SIM info is changed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 197
    :cond_a
    sget-object v11, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ST::isChangedHostStatus::savedMCC=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] currentMCC=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] savedMNC=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] currentMNC=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] savedPhoneNUmber=[_____] currentPhoneNumber=[_____]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 207
    :cond_b
    sget-object v11, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    const-string v12, "ST::isChangedHostStatus::nothing changed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public refreshWearableDevices()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 216
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ST::refreshWearableDevices() mModelName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/status/StatusManager;->getModelName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " deviceID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/status/StatusManager;->getModelName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 220
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    const-string v8, "ST::refreshWearableDevices:: mModelName is not ready."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "hmStatus_deviceType"

    invoke-virtual {v7, v8, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 223
    .local v4, "sp":Landroid/content/SharedPreferences;
    iget-object v7, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mDeviceId:Ljava/lang/String;

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "prefModelName":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 226
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    const-string v8, "ST::refreshWearableDevices:: Getting ModelName from Pref"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/status/StatusManager;->setModelName(Ljava/lang/String;)V

    .line 234
    .end local v2    # "prefModelName":Ljava/lang/String;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mWearableDeviceStatus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 236
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "hmStatus"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mModelName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "rootPath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "WearableStatus.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 241
    sget-object v7, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    const-string v8, "jangil::refreshWearableDevices::WearableStatus.xml not exists!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "rootPath":Ljava/lang/String;
    :cond_1
    :goto_0
    return v6

    .line 244
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v3    # "rootPath":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    const-string v7, "jangil::refreshWearableDevices::WearableStatus.xml exists!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v5, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    invoke-direct {v5}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;-><init>()V

    .line 248
    .local v5, "wearableInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5, v1}, Lcom/samsung/android/hostmanager/status/StatusParser;->ParseDeviceStatusFromXML(Landroid/content/Context;Lcom/samsung/android/hostmanager/aidl/DeviceInfo;Ljava/lang/String;)V

    .line 250
    iget-object v6, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mWearableDeviceStatus:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/samsung/android/hostmanager/status/StatusManager;->calibrateWearableStatus(Lcom/samsung/android/hostmanager/aidl/DeviceInfo;)Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mModelName:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeStamp"    # Ljava/lang/String;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mTimeStamp:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public setWearablePhoneNumberEditedByUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/samsung/android/hostmanager/status/StatusManager;->mWearablePhoneNumberEditedByUser:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public syncWearableStatus()Z
    .locals 2

    .prologue
    .line 292
    sget-object v0, Lcom/samsung/android/hostmanager/status/StatusManager;->TAG:Ljava/lang/String;

    const-string v1, "ST::syncWearableStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v0, 0x0

    return v0
.end method
