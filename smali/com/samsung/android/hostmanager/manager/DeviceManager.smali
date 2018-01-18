.class public abstract Lcom/samsung/android/hostmanager/manager/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# instance fields
.field protected mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

.field protected mINotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

.field protected mIPackageManager:Lcom/samsung/android/hostmanager/manager/IPackageManager;

.field protected mISetupManager:Lcom/samsung/android/hostmanager/manager/ISetupManager;

.field protected mIStatusManager:Lcom/samsung/android/hostmanager/manager/IStatusManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBackupRestoreManager()Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
.end method

.method public abstract getDeviceManagerType()Ljava/lang/String;
.end method

.method public abstract getNotificationManager()Lcom/samsung/android/hostmanager/manager/INotificationManager;
.end method

.method public abstract getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;
.end method

.method public abstract getSetupManager()Lcom/samsung/android/hostmanager/manager/ISetupManager;
.end method

.method public abstract getStatusManager()Lcom/samsung/android/hostmanager/manager/IStatusManager;
.end method

.method public abstract initManagers(Ljava/lang/String;)V
.end method

.method public abstract restoreNotificationManager()Lcom/samsung/android/hostmanager/manager/INotificationManager;
.end method
