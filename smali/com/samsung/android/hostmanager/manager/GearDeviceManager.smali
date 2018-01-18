.class public Lcom/samsung/android/hostmanager/manager/GearDeviceManager;
.super Lcom/samsung/android/hostmanager/manager/DeviceManager;
.source "GearDeviceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeviceID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/manager/DeviceManager;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mDeviceID:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mDeviceID:Ljava/lang/String;

    .line 26
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->initManagers(Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getBackupRestoreManager()Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "getBackupRestoreManager"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/samsung/android/hostmanager/br/GearBnRManager;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mDeviceID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/br/GearBnRManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    return-object v0
.end method

.method public getConnectedGearDeivceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceManagerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "Gear"

    return-object v0
.end method

.method public getNotificationManager()Lcom/samsung/android/hostmanager/manager/INotificationManager;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "getInstance starts"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mINotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mINotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v0}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "try to create new object"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/samsung/android/hostmanager/notification/GearNotificationManager;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mDeviceID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/notification/GearNotificationManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mINotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mINotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mINotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v0}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    sget-object v0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "object shall be destroyed"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mINotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v0}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->destroy()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mINotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mINotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    return-object v0
.end method

.method public getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "getPackageManager"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mIPackageManager:Lcom/samsung/android/hostmanager/manager/IPackageManager;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/samsung/android/hostmanager/pm/GearPackageManager;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mDeviceID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mIPackageManager:Lcom/samsung/android/hostmanager/manager/IPackageManager;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mIPackageManager:Lcom/samsung/android/hostmanager/manager/IPackageManager;

    return-object v0
.end method

.method public getSetupManager()Lcom/samsung/android/hostmanager/manager/ISetupManager;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mISetupManager:Lcom/samsung/android/hostmanager/manager/ISetupManager;

    return-object v0
.end method

.method public getStatusManager()Lcom/samsung/android/hostmanager/manager/IStatusManager;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mIStatusManager:Lcom/samsung/android/hostmanager/manager/IStatusManager;

    return-object v0
.end method

.method public initManagers(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "initManagers"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/samsung/android/hostmanager/status/GearStatusManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/hostmanager/status/GearStatusManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mIStatusManager:Lcom/samsung/android/hostmanager/manager/IStatusManager;

    .line 40
    new-instance v0, Lcom/samsung/android/hostmanager/setup/GearSetupManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/hostmanager/setup/GearSetupManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mISetupManager:Lcom/samsung/android/hostmanager/manager/ISetupManager;

    .line 41
    new-instance v0, Lcom/samsung/android/hostmanager/pm/GearPackageManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mIPackageManager:Lcom/samsung/android/hostmanager/manager/IPackageManager;

    .line 43
    return-void
.end method

.method public restoreNotificationManager()Lcom/samsung/android/hostmanager/manager/INotificationManager;
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "restoreNotificationManager"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mINotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mINotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v0}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->destroy()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mINotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->getNotificationManager()Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mINotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v0}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->restore()V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/manager/GearDeviceManager;->mINotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    return-object v0
.end method
