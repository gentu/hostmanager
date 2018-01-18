.class public interface abstract Lcom/samsung/android/hostmanager/manager/IPackageManager;
.super Ljava/lang/Object;
.source "IPackageManager.java"


# virtual methods
.method public abstract addEntriesInInstalledWgtOnly(Z)V
.end method

.method public abstract changeWGTVersionFormat(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract deletePMBackup(Ljava/lang/String;)V
.end method

.method public abstract getAppNameFromPcakgeName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getChildAPKPathFromApp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDeviceType(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getImageByteArray(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public abstract getInstalledWGTPackageInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSignatureFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTemporaryPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getWGTOnlyVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getWGTOnlyVersionName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getWgtFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract handleAppInstallFailForWifiDirect(Ljava/lang/String;I)V
.end method

.method public abstract handleIfUninstallFromGearManager(Ljava/lang/String;)Z
.end method

.method public abstract installApp(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract installAppWithSignature(Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)Z
.end method

.method public abstract installAppWithSignature(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method public abstract installAppWithSignatureFromGearStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method public abstract installWGT(Landroid/net/Uri;I)V
.end method

.method public abstract installWGT(Ljava/lang/String;I)V
.end method

.method public abstract isEligibleForRestore(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isRemovable(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isWgtOnlyApp(Ljava/lang/String;)Z
.end method

.method public abstract isWgtOnlyAppInstalled(Ljava/lang/String;)Z
.end method

.method public abstract onClockUninstallResultReceived(Ljava/lang/String;I)V
.end method

.method public abstract onWappUninstallResultReceived(Ljava/lang/String;I)V
.end method

.method public abstract onWearableAppUninstallResultReceived(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract putInReinstallList(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract registerUnknownSourceReceiver()V
.end method

.method public abstract removeFromReinstallList(Ljava/lang/String;)Z
.end method

.method public abstract removeSignFromTizenData(Ljava/lang/String;)Z
.end method

.method public abstract removeTTSAppEntry(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeWgtFromTizenData(Ljava/lang/String;)Z
.end method

.method public abstract removeWgtOnlyAppData(Ljava/lang/String;)Z
.end method

.method public abstract restoreTizenApp(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract saveCompressedConsumerApp(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract saveConsumerApp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setCheckInstallStatusHandler(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$HMInstallStateHandler;)V
.end method

.method public abstract setListener(Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;)V
.end method

.method public abstract skipCompanionDeeplinkPopup(Ljava/lang/String;Z)V
.end method

.method public abstract uninstallApp(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract unregisterUnknownSourceReceiver()V
.end method

.method public abstract updateEntriesInInstalledWgtOnly()V
.end method
