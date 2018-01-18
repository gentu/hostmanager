.class public abstract Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
.super Ljava/lang/Object;
.source "IBackupRestoreManager.java"


# instance fields
.field public mDeviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public abstract appDataBackup(Ljava/lang/String;I)V
.end method

.method public abstract backupWearable(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract getBackupList(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getConnectedDeviceType()Ljava/lang/String;
.end method

.method public abstract isBackupAvailable()Z
.end method

.method public abstract onBackupRequest(I)V
.end method

.method public abstract onReadyRestore(I)V
.end method

.method public abstract onSystemBackupRequest(I)V
.end method

.method public abstract readBackupTimePref()V
.end method

.method public abstract removeBackupData(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/BackupInfo;)Z
.end method

.method public abstract requestDBQuery(Ljava/lang/String;I)Ljava/util/List;
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
.end method

.method public abstract restoreWearable(Lcom/samsung/android/hostmanager/aidl/BackupInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setDeviceModelNumber(Ljava/lang/String;)V
.end method

.method public abstract setListener(Landroid/os/Handler;)V
.end method

.method public abstract setWearableBackupAppList(Ljava/lang/String;)V
.end method

.method public abstract startReset()V
.end method

.method public abstract validateMacAddress(Ljava/lang/String;)Z
.end method
