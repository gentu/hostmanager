.class public Lcom/samsung/android/hostmanager/manager/BlinkDeviceManager;
.super Lcom/samsung/android/hostmanager/manager/DeviceManager;
.source "BlinkDeviceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeviceID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/samsung/android/hostmanager/manager/BlinkDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/manager/BlinkDeviceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/manager/DeviceManager;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/manager/BlinkDeviceManager;->mDeviceID:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/samsung/android/hostmanager/manager/BlinkDeviceManager;->mDeviceID:Ljava/lang/String;

    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/manager/BlinkDeviceManager;->initManagers(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getBackupRestoreManager()Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceManagerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "Blink"

    return-object v0
.end method

.method public getNotificationManager()Lcom/samsung/android/hostmanager/manager/INotificationManager;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSetupManager()Lcom/samsung/android/hostmanager/manager/ISetupManager;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/hostmanager/manager/BlinkDeviceManager;->mISetupManager:Lcom/samsung/android/hostmanager/manager/ISetupManager;

    return-object v0
.end method

.method public getStatusManager()Lcom/samsung/android/hostmanager/manager/IStatusManager;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/hostmanager/manager/BlinkDeviceManager;->mIStatusManager:Lcom/samsung/android/hostmanager/manager/IStatusManager;

    return-object v0
.end method

.method public initManagers(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 21
    sget-object v0, Lcom/samsung/android/hostmanager/manager/BlinkDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "initManagers"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/samsung/android/hostmanager/status/BlinkStatusManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/hostmanager/status/BlinkStatusManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/manager/BlinkDeviceManager;->mIStatusManager:Lcom/samsung/android/hostmanager/manager/IStatusManager;

    .line 23
    new-instance v0, Lcom/samsung/android/hostmanager/setup/BlinkSetupManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/hostmanager/setup/BlinkSetupManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/manager/BlinkDeviceManager;->mISetupManager:Lcom/samsung/android/hostmanager/manager/ISetupManager;

    .line 24
    return-void
.end method

.method public restoreNotificationManager()Lcom/samsung/android/hostmanager/manager/INotificationManager;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method
