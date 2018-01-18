.class public Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;
.super Ljava/lang/Object;
.source "WearableDeviceFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile mDeviceManagerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hostmanager/manager/DeviceManager;",
            ">;"
        }
    .end annotation
.end field

.field private static mMutex:Ljava/lang/Object;

.field private static volatile mWearableDeviceFactory:Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    const-string v1, "WearableDeviceFactory()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 37
    sget-object v1, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    .line 41
    :cond_0
    monitor-exit v1

    .line 43
    :cond_1
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkDeviceManagerType(Lcom/samsung/android/hostmanager/manager/DeviceManager;)V
    .locals 11
    .param p1, "addDeviceManager"    # Lcom/samsung/android/hostmanager/manager/DeviceManager;

    .prologue
    .line 203
    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkDeviceManagerType()::devicemanager = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    if-eqz v7, :cond_1

    .line 205
    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkDeviceManagerType()::mDeviceManagerList.size() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getDeviceManagerType()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    .line 212
    :cond_0
    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    const-string v8, "checkDeviceManagerType()::addDeviceManager is null"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 207
    :cond_1
    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    const-string v8, "checkDeviceManagerType()::mDeviceManagerList is null"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_2
    sget-object v8, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mMutex:Ljava/lang/Object;

    monitor-enter v8

    .line 216
    :try_start_0
    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 217
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 219
    .local v1, "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 220
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 221
    .local v5, "key":Ljava/lang/String;
    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    check-cast v1, Lcom/samsung/android/hostmanager/manager/DeviceManager;

    .line 222
    .restart local v1    # "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getDeviceManagerType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 223
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getDeviceManagerType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getDeviceManagerType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    .line 225
    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getStatusManager()Lcom/samsung/android/hostmanager/manager/IStatusManager;

    move-result-object v6

    .line 226
    .local v6, "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    if-eqz v6, :cond_5

    .line 227
    invoke-interface {v6}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v2

    .line 228
    .local v2, "deviceinfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    if-eqz v2, :cond_4

    .line 229
    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    const-string v9, "checkDeviceManagerType()::cm::remove old deviceManager for new device"

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkDeviceManagerType()::cm::old deviceID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkDeviceManagerType()::cm::old getDeviceName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .end local v2    # "deviceinfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getStatusManager()Lcom/samsung/android/hostmanager/manager/IStatusManager;

    move-result-object v0

    .line 239
    .local v0, "addStatusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    if-eqz v0, :cond_7

    .line 240
    invoke-interface {v0}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v2

    .line 241
    .restart local v2    # "deviceinfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    if-eqz v2, :cond_6

    .line 242
    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkDeviceManagerType()::cm::new deviceID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkDeviceManagerType()::cm::new getDeviceName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    .end local v0    # "addStatusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    .end local v2    # "deviceinfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .end local v6    # "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :goto_3
    :try_start_2
    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 262
    .end local v1    # "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 233
    .restart local v1    # "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    .restart local v2    # "deviceinfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :cond_4
    :try_start_3
    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    const-string v9, "checkDeviceManagerType()::deviceManager.getStatusManager().getWearableStatus() is null"

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 251
    .end local v2    # "deviceinfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .end local v6    # "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :catch_0
    move-exception v3

    .line 252
    .local v3, "e":Ljava/lang/NullPointerException;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 236
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v6    # "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :cond_5
    :try_start_5
    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    const-string v9, "checkDeviceManagerType()::deviceManager.getStatusManager() is null"

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 245
    .restart local v0    # "addStatusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    .restart local v2    # "deviceinfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :cond_6
    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    const-string v9, "checkDeviceManagerType()::addDeviceManager.getStatusManager().getWearableStatus() is null"

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 248
    .end local v2    # "deviceinfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :cond_7
    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    const-string v9, "checkDeviceManagerType()::addDeviceManager.getStatusManager() is null"

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 256
    .end local v0    # "addStatusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    .end local v6    # "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :cond_8
    if-nez v1, :cond_9

    .line 257
    :try_start_6
    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    const-string v9, "checkDeviceManagerType()::deviceManager is null"

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 259
    :cond_9
    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    const-string v9, "checkDeviceManagerType()::deviceManager.getDeviceManagerType() is null"

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 262
    .end local v5    # "key":Ljava/lang/String;
    :cond_a
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mWearableDeviceFactory:Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    if-nez v0, :cond_1

    .line 47
    sget-object v1, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mWearableDeviceFactory:Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mWearableDeviceFactory:Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mWearableDeviceFactory:Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addDevice(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 64
    sget-object v5, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CM::addDevice() deviceID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mDeviceManagerList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", deviceName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v5, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    if-eqz v5, :cond_7

    .line 69
    sget-object v5, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, "devicemanager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "deviceBtName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 74
    sget-object v5, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deviceBtName is null. set to deviceName("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    move-object v0, p2

    .line 76
    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "DeviceInfo"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 78
    .local v2, "preference":Landroid/content/SharedPreferences;
    const-string v5, "MODEL_NAME"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    sget-object v5, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deviceBtName from Pref = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .end local v2    # "preference":Landroid/content/SharedPreferences;
    :cond_0
    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    sget-object v4, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    const-string v5, "deviceBtName is not exist."

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .end local v0    # "deviceBtName":Ljava/lang/String;
    .end local v1    # "devicemanager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :goto_0
    return v3

    .line 87
    .restart local v0    # "deviceBtName":Ljava/lang/String;
    .restart local v1    # "devicemanager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Gear Blink"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 88
    new-instance v1, Lcom/samsung/android/hostmanager/manager/BlinkDeviceManager;

    .end local v1    # "devicemanager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    invoke-direct {v1, p1}, Lcom/samsung/android/hostmanager/manager/BlinkDeviceManager;-><init>(Ljava/lang/String;)V

    .line 96
    .restart local v1    # "devicemanager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->checkDeviceManagerType(Lcom/samsung/android/hostmanager/manager/DeviceManager;)V

    .line 98
    if-eqz v1, :cond_5

    .line 99
    sget-object v3, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v3, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    const-string v5, "addDevice() added successfully"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 101
    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Gear 2"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Gear 3"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Gear S"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Gear"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    :cond_4
    new-instance v1, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;

    .end local v1    # "devicemanager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    invoke-direct {v1, p1}, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;-><init>(Ljava/lang/String;)V

    .restart local v1    # "devicemanager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    goto :goto_1

    .line 104
    :cond_5
    sget-object v3, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    const-string v4, "addDevice invalid device!!!!"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v3, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device Not Supported !!!!, DeviceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 108
    .end local v0    # "deviceBtName":Ljava/lang/String;
    .end local v1    # "devicemanager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :cond_6
    sget-object v3, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    const-string v5, "deviceID already exists in list"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 109
    goto/16 :goto_0

    .line 112
    :cond_7
    sget-object v4, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    const-string v5, "mDeviceManagerList is null or deviceID already exists in list"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getConnectedDeviceIdByType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 181
    sget-object v4, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConnectedDeviceIdByType()::deviceType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v4, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 183
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 184
    .local v3, "returnDeviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    const/4 v1, 0x0

    .line 186
    .local v1, "key":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "key":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 188
    .restart local v1    # "key":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "returnDeviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    check-cast v3, Lcom/samsung/android/hostmanager/manager/DeviceManager;

    .line 189
    .restart local v3    # "returnDeviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    sget-object v4, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDeviceManagerByType()::deviceType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getDeviceManagerType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", address = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getDeviceManagerType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 195
    .end local v1    # "key":Ljava/lang/String;
    .local v2, "key":Ljava/lang/String;
    :goto_0
    return-object v2

    .end local v2    # "key":Ljava/lang/String;
    .restart local v1    # "key":Ljava/lang/String;
    :cond_1
    move-object v2, v1

    .end local v1    # "key":Ljava/lang/String;
    .restart local v2    # "key":Ljava/lang/String;
    goto :goto_0
.end method

.method public getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 148
    sget-object v1, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceManager() deviceID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDeviceManagerList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    if-nez p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 153
    invoke-static {p1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->addDevice(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 154
    sget-object v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/manager/DeviceManager;

    goto :goto_0

    .line 159
    :cond_2
    sget-object v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/manager/DeviceManager;

    goto :goto_0
.end method

.method public getDeviceManagerByType(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;
    .locals 7
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 164
    sget-object v4, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDeviceManagerByType()::deviceType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v4, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 166
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 168
    .local v2, "returnDeviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    .local v1, "key":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "returnDeviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    check-cast v2, Lcom/samsung/android/hostmanager/manager/DeviceManager;

    .line 171
    .restart local v2    # "returnDeviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    sget-object v4, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDeviceManagerByType()::deviceType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getDeviceManagerType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", address = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getDeviceManagerType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 177
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "returnDeviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    .local v3, "returnDeviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :goto_0
    return-object v3

    .end local v3    # "returnDeviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    .restart local v2    # "returnDeviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :cond_1
    move-object v3, v2

    .end local v2    # "returnDeviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    .restart local v3    # "returnDeviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    goto :goto_0
.end method

.method public getDeviceManagerList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hostmanager/manager/DeviceManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    sget-object v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    return-object v0
.end method

.method public removeDevice(Ljava/lang/String;)I
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 126
    sget-object v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDevice() deviceID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->mDeviceManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    .line 132
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->TAG:Ljava/lang/String;

    const-string v1, "removeDevice invalid device!!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v0, -0x1

    goto :goto_0
.end method
