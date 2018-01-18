.class public Lcom/samsung/android/hostmanager/br/GearBnRManager;
.super Lcom/samsung/android/hostmanager/br/BackupRestoreManager;
.source "GearBnRManager.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;-><init>(Ljava/lang/String;)V

    .line 13
    const-class v0, Lcom/samsung/android/hostmanager/br/GearBnRManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/GearBnRManager;->TAG:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/GearBnRManager;->TAG:Ljava/lang/String;

    const-string v1, "GearBnRManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method


# virtual methods
.method public appDataBackup(Ljava/lang/String;I)V
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "backupType"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/GearBnRManager;->TAG:Ljava/lang/String;

    const-string v1, "appDataBackup()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-super {p0, p1, p2}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appDataBackup(Ljava/lang/String;I)V

    .line 66
    return-void
.end method

.method public backupWearable(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "appPackage"    # Ljava/lang/String;
    .param p3, "appVersion"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/GearBnRManager;->TAG:Ljava/lang/String;

    const-string v1, "backupWearable()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->backupWearable(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getBackupList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/BackupInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/GearBnRManager;->TAG:Ljava/lang/String;

    const-string v1, "getBackupList()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-super {p0, p1}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->getBackupList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedDeviceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/GearBnRManager;->TAG:Ljava/lang/String;

    const-string v1, "getConnectedDeviceType()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-super {p0}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->getConnectedDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBackupAvailable()Z
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/GearBnRManager;->TAG:Ljava/lang/String;

    const-string v1, "isBackupAvailable()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super {p0}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->isBackupAvailable()Z

    move-result v0

    return v0
.end method

.method public onBackupRequest(I)V
    .locals 2
    .param p1, "systemBackupType"    # I

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/GearBnRManager;->TAG:Ljava/lang/String;

    const-string v1, "onBackupRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-super {p0, p1}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->onBackupRequest(I)V

    .line 23
    return-void
.end method

.method public onReadyRestore(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/GearBnRManager;->TAG:Ljava/lang/String;

    const-string v1, "onReadyRestore()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-super {p0, p1}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->onReadyRestore(I)V

    .line 101
    return-void
.end method

.method public onSystemBackupRequest(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/GearBnRManager;->TAG:Ljava/lang/String;

    const-string v1, "onSystemBackupRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-super {p0, p1}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->onSystemBackupRequest(I)V

    .line 106
    return-void
.end method

.method public readBackupTimePref()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/GearBnRManager;->TAG:Ljava/lang/String;

    const-string v1, "readBackupTimePref()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super {p0}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->readBackupTimePref()V

    .line 76
    return-void
.end method

.method public removeBackupData(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/BackupInfo;)Z
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "restoreInfo"    # Lcom/samsung/android/hostmanager/aidl/BackupInfo;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/GearBnRManager;->TAG:Ljava/lang/String;

    const-string v1, "removeBackupData()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0, p1, p2}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->removeBackupData(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/BackupInfo;)Z

    move-result v0

    return v0
.end method

.method public requestDBQuery(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "queryType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/HistoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/GearBnRManager;->TAG:Ljava/lang/String;

    const-string v1, "requestDBQuery()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-super {p0, p1, p2}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->requestDBQuery(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public restoreWearable(Lcom/samsung/android/hostmanager/aidl/BackupInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "restoreInfo"    # Lcom/samsung/android/hostmanager/aidl/BackupInfo;
    .param p2, "deviceID"    # Ljava/lang/String;
    .param p3, "appID"    # Ljava/lang/String;
    .param p4, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/GearBnRManager;->TAG:Ljava/lang/String;

    const-string v1, "restoreWearable()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->restoreWearable(Lcom/samsung/android/hostmanager/aidl/BackupInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceModelNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/GearBnRManager;->TAG:Ljava/lang/String;

    const-string v1, "setDeviceModelNumber()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-super {p0, p1}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->setDeviceModelNumber(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public setListener(Landroid/os/Handler;)V
    .locals 2
    .param p1, "hmsetuphandler"    # Landroid/os/Handler;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/GearBnRManager;->TAG:Ljava/lang/String;

    const-string v1, "setListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-super {p0, p1}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->setListener(Landroid/os/Handler;)V

    .line 86
    return-void
.end method

.method public setWearableBackupAppList(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/GearBnRManager;->TAG:Ljava/lang/String;

    const-string v1, "setWearableBackupAppList()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-super {p0, p1}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->setWearableBackupAppList(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public startReset()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/GearBnRManager;->TAG:Ljava/lang/String;

    const-string v1, "startReset()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-super {p0}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->startReset()V

    .line 96
    return-void
.end method

.method public validateMacAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "macId"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/GearBnRManager;->TAG:Ljava/lang/String;

    const-string v1, "validateMacAddress()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-super {p0, p1}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->validateMacAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
