.class public Lcom/samsung/android/hostmanager/manager/ManagerUtils;
.super Ljava/lang/Object;
.source "ManagerUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/samsung/android/hostmanager/manager/ManagerUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackupRestoreManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    .locals 4
    .param p0, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "deviceMgr":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    const/4 v0, 0x0

    .line 59
    .local v0, "IBackupRestoreMgr":Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getBackupRestoreManager()Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 63
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->TAG:Ljava/lang/String;

    const-string v3, "DeviceManager is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;
    .locals 4
    .param p0, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11
    const/4 v1, 0x0

    .line 12
    .local v1, "deviceMgr":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    const/4 v0, 0x0

    .line 13
    .local v0, "InotificationMgr":Lcom/samsung/android/hostmanager/manager/INotificationManager;
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getNotificationManager()Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v0

    .line 19
    :goto_0
    return-object v0

    .line 17
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->TAG:Ljava/lang/String;

    const-string v3, "DeviceManager is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPackageManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IPackageManager;
    .locals 4
    .param p0, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "deviceMgr":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    const/4 v0, 0x0

    .line 71
    .local v0, "IPackageMgr":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 75
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->TAG:Ljava/lang/String;

    const-string v3, "DeviceManager is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSetupManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/ISetupManager;
    .locals 4
    .param p0, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 36
    .local v1, "deviceMgr":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    const/4 v0, 0x0

    .line 37
    .local v0, "ISetupMgr":Lcom/samsung/android/hostmanager/manager/ISetupManager;
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getSetupManager()Lcom/samsung/android/hostmanager/manager/ISetupManager;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 41
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->TAG:Ljava/lang/String;

    const-string v3, "DeviceManager is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;
    .locals 3
    .param p0, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, "sm":Lcom/samsung/android/hostmanager/manager/ISetupManager;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getSetupManager()Lcom/samsung/android/hostmanager/manager/ISetupManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 53
    :goto_0
    check-cast v1, Lcom/samsung/android/hostmanager/setup/SetupManager;

    .end local v1    # "sm":Lcom/samsung/android/hostmanager/manager/ISetupManager;
    return-object v1

    .line 50
    .restart local v1    # "sm":Lcom/samsung/android/hostmanager/manager/ISetupManager;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStatusManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IStatusManager;
    .locals 4
    .param p0, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
        }
    .end annotation

    .prologue
    .line 23
    const/4 v1, 0x0

    .line 24
    .local v1, "deviceMgr":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    const/4 v0, 0x0

    .line 25
    .local v0, "IStatusMgr":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getStatusManager()Lcom/samsung/android/hostmanager/manager/IStatusManager;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 29
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->TAG:Ljava/lang/String;

    const-string v3, "DeviceManager is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
