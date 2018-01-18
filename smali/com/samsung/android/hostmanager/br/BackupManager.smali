.class public Lcom/samsung/android/hostmanager/br/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/br/BackupRestoreListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;
    }
.end annotation


# static fields
.field private static final ACCESS_UNIFIED_HOST_MANAGER_PERM:Ljava/lang/String; = "com.samsung.android.hostmanager.permission.ACCESS_UNIFIED_HOST_MANAGER"

.field public static final ACTION_BROADCAST_HM_BACKUP_COMPLETE:Ljava/lang/String; = "com.samsung.android.watchmanager.ACTION_BROADCAST_HM_BACKUP_COMPLETE"

.field private static final TAG:Ljava/lang/String; = "BackupManager"

.field public static final progress_bar_type:I


# instance fields
.field private CM_CONNECTED_WEARABLE_BLEACS_PREF:Ljava/lang/String;

.field private CM_CONNECTED_WEARABLE_PREF:Ljava/lang/String;

.field private CM_DEVICE_FEATURE_PREF:Ljava/lang/String;

.field private CM_SCS_CONNECTED_WEARABLE_PREF:Ljava/lang/String;

.field private GEAR_NUMBER_PREF:Ljava/lang/String;

.field private PREF_SAP_PROFILE_VERSION:Ljava/lang/String;

.field private PREF_WEARABLE_ADVERTISE_MODE:Ljava/lang/String;

.field private appVerFile:Ljava/lang/String;

.field private appcesorryFile:Ljava/lang/String;

.field private bSideUnInstallFinishChecker:Ljava/lang/String;

.field private connectedDevicesByType:Ljava/lang/String;

.field private dummyApkInstalled:Ljava/lang/String;

.field private hmStatus_deviceType:Ljava/lang/String;

.field private hmStatus_timestamp:Ljava/lang/String;

.field private lastConnInfoaFile:Ljava/lang/String;

.field private mBackUpProgress:Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;

.field private mBackupMode:I

.field private mContext:Landroid/content/Context;

.field private mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

.field private preapkinstall:Ljava/lang/String;

.field private preparedInstallFromSamsungApps:Ljava/lang/String;

.field private rootofDest:Ljava/lang/String;

.field private rootofDest_databases:Ljava/lang/String;

.field private rootofDest_files:Ljava/lang/String;

.field private rootofDest_prefs:Ljava/lang/String;

.field private rootofDest_wallpapers:Ljava/lang/String;

.field private rootofSrc:Ljava/lang/String;

.field private scsPref:Ljava/lang/String;

.field private unInstallFromBmanager:Ljava/lang/String;

.field private unInstallFromWhere:Ljava/lang/String;

.field private updateFailCount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bnrManager"    # Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "appcessoryservices.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->appcesorryFile:Ljava/lang/String;

    .line 57
    const-string v0, "dummy_apk_installed.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->dummyApkInstalled:Ljava/lang/String;

    .line 58
    const-string v0, "uninstall_from_Bmanager.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->unInstallFromBmanager:Ljava/lang/String;

    .line 59
    const-string v0, "uninstall_from_where.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->unInstallFromWhere:Ljava/lang/String;

    .line 60
    const-string v0, "bside_uninstall_finish_checker.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->bSideUnInstallFinishChecker:Ljava/lang/String;

    .line 61
    const-string v0, "prepared_install_from_samsungapps.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->preparedInstallFromSamsungApps:Ljava/lang/String;

    .line 63
    const-string v0, "LastConnectedDeviceInfo.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->lastConnInfoaFile:Ljava/lang/String;

    .line 64
    const-string v0, "app_version.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->appVerFile:Ljava/lang/String;

    .line 65
    const-string v0, "connectedDevicesByType.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->connectedDevicesByType:Ljava/lang/String;

    .line 66
    const-string v0, "hmStatus_timestamp.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->hmStatus_timestamp:Ljava/lang/String;

    .line 67
    const-string v0, "hmStatus_deviceType.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->hmStatus_deviceType:Ljava/lang/String;

    .line 68
    const-string v0, "preapkinstall.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->preapkinstall:Ljava/lang/String;

    .line 69
    const-string v0, "update_fail_count.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->updateFailCount:Ljava/lang/String;

    .line 70
    const-string v0, "scs_pref_HM.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->scsPref:Ljava/lang/String;

    .line 71
    const-string v0, "PREF_NAME_CONNECTED_WEARABLE.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->CM_CONNECTED_WEARABLE_PREF:Ljava/lang/String;

    .line 72
    const-string v0, "PREF_NAME_CONNECTED_WEARABLE_BLEACS.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->CM_CONNECTED_WEARABLE_BLEACS_PREF:Ljava/lang/String;

    .line 73
    const-string v0, "PREF_NAME_SCS_CONNECTED_WEARABLE.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->CM_SCS_CONNECTED_WEARABLE_PREF:Ljava/lang/String;

    .line 74
    const-string v0, "PREF_NAME_DEVICE_FEATURE.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->CM_DEVICE_FEATURE_PREF:Ljava/lang/String;

    .line 75
    const-string v0, "PREF_SAP_PROFILE_VERSION.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->PREF_SAP_PROFILE_VERSION:Ljava/lang/String;

    .line 76
    const-string v0, "PREF_WEARABLE_ADVERTISE_MODE.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->PREF_WEARABLE_ADVERTISE_MODE:Ljava/lang/String;

    .line 77
    const-string v0, "gear_number_pref.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->GEAR_NUMBER_PREF:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/br/BackupManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/hostmanager/br/BackupManager;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/br/BackupManager;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/br/BackupManager;->createClockListResultXML(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->dummyApkInstalled:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->unInstallFromBmanager:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->unInstallFromWhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->bSideUnInstallFinishChecker:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->preparedInstallFromSamsungApps:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->lastConnInfoaFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->appVerFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->connectedDevicesByType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->hmStatus_timestamp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->hmStatus_deviceType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/br/BackupManager;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/br/BackupManager;->createWappListResultXML(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->preapkinstall:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->updateFailCount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->scsPref:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->CM_CONNECTED_WEARABLE_PREF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->CM_CONNECTED_WEARABLE_BLEACS_PREF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->CM_SCS_CONNECTED_WEARABLE_PREF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->CM_DEVICE_FEATURE_PREF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->GEAR_NUMBER_PREF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->PREF_SAP_PROFILE_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->PREF_WEARABLE_ADVERTISE_MODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/br/BackupManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mBackupMode:I

    return v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->rootofDest_databases:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->rootofDest_wallpapers:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/hostmanager/br/BackupManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/br/BackupManager;->sendWatchmanagerBackupComplete()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->rootofDest:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/br/BackupManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->rootofSrc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->rootofDest_files:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->rootofDest_prefs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/BackupManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->appcesorryFile:Ljava/lang/String;

    return-object v0
.end method

.method private backupTextInputMethods()V
    .locals 5

    .prologue
    .line 99
    const-string v1, "BackupManager"

    const-string v2, "backing up text input methods..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "textInputMethods":I
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    const-string v3, "reply_choice_value"

    .line 104
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->updatePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "BackupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backed up text input method = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public static createBackupTimePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 713
    const-string v2, "BackupManager"

    const-string v3, "inside createBackupTimePreference"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const-string v2, "backuprestoreBackup_time"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 715
    .local v1, "prefBackupTime":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 716
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 717
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 718
    return-void
.end method

.method private createClockListResultXML(Ljava/util/ArrayList;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 492
    .local p1, "clockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "clocklist.xml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    .local v11, "file":Ljava/io/File;
    const-string v18, "BackupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readClockListXML file = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 495
    const/4 v4, 0x0

    .line 497
    .local v4, "clocklistfis":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    .end local v4    # "clocklistfis":Ljava/io/InputStream;
    .local v5, "clocklistfis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    .line 499
    .local v9, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v8

    .line 500
    .local v8, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v8, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 501
    .local v7, "doc":Lorg/w3c/dom/Document;
    const-string v18, "item"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 503
    .local v13, "nodelist":Lorg/w3c/dom/NodeList;
    const-string v18, "BackupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readClockListXML nodelist size = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    .line 505
    .local v14, "nodelist_count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v14, :cond_2

    .line 506
    invoke-interface {v13, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 507
    .local v3, "clockinfo":Lorg/w3c/dom/Element;
    const-string v18, "PackageName"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v15

    .line 508
    .local v15, "packageName":Ljava/lang/String;
    const-string v18, "SettingFileName"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v16

    .line 510
    .local v16, "settingFileName":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_result.xml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    .local v17, "settingfile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    .line 514
    .local v6, "deviceID":Ljava/lang/String;
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    if-eqz v16, :cond_0

    const-string v18, "null"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 515
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/BackupManager;->isBnRAppSetting(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 516
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v6}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->createResultFromSettingsXml(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 519
    :cond_0
    const-string v18, "BackupManager"

    const-string v19, "packagename is empty for readClockListXML"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 525
    .end local v3    # "clockinfo":Lorg/w3c/dom/Element;
    .end local v6    # "deviceID":Ljava/lang/String;
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v9    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12    # "i":I
    .end local v13    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v14    # "nodelist_count":I
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "settingFileName":Ljava/lang/String;
    .end local v17    # "settingfile":Ljava/io/File;
    :catch_0
    move-exception v10

    move-object v4, v5

    .line 527
    .end local v5    # "clocklistfis":Ljava/io/InputStream;
    .restart local v4    # "clocklistfis":Ljava/io/InputStream;
    .local v10, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_2
    :try_start_2
    invoke-virtual {v10}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 532
    if-eqz v4, :cond_1

    .line 533
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 537
    .end local v4    # "clocklistfis":Ljava/io/InputStream;
    .end local v10    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_1
    :goto_3
    return-void

    .line 524
    .restart local v5    # "clocklistfis":Ljava/io/InputStream;
    .restart local v7    # "doc":Lorg/w3c/dom/Document;
    .restart local v8    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v9    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v12    # "i":I
    .restart local v13    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v14    # "nodelist_count":I
    :cond_2
    :try_start_3
    const-string v18, "BackupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "clockList size ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 532
    if-eqz v5, :cond_1

    .line 533
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .line 528
    .end local v5    # "clocklistfis":Ljava/io/InputStream;
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v9    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12    # "i":I
    .end local v13    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v14    # "nodelist_count":I
    .restart local v4    # "clocklistfis":Ljava/io/InputStream;
    :catch_1
    move-exception v10

    .line 530
    .local v10, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 532
    if-eqz v4, :cond_1

    .line 533
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .line 532
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    :goto_5
    if-eqz v4, :cond_3

    .line 533
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v18

    .line 532
    .end local v4    # "clocklistfis":Ljava/io/InputStream;
    .restart local v5    # "clocklistfis":Ljava/io/InputStream;
    :catchall_1
    move-exception v18

    move-object v4, v5

    .end local v5    # "clocklistfis":Ljava/io/InputStream;
    .restart local v4    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_5

    .line 528
    .end local v4    # "clocklistfis":Ljava/io/InputStream;
    .restart local v5    # "clocklistfis":Ljava/io/InputStream;
    :catch_2
    move-exception v10

    move-object v4, v5

    .end local v5    # "clocklistfis":Ljava/io/InputStream;
    .restart local v4    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_4

    .line 525
    :catch_3
    move-exception v10

    goto :goto_2
.end method

.method public static createRestoreTimePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 721
    const-string v2, "BackupManager"

    const-string v3, "inside createRestoreTimePreference"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const-string v2, "backuprestoreRestore_time"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 723
    .local v1, "prefRestoreTime":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 724
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 725
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 726
    return-void
.end method

.method private createWappListResultXML(Ljava/util/ArrayList;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 540
    .local p1, "wAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "wapplist.xml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 541
    .local v8, "file":Ljava/io/File;
    const-string v18, "BackupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readWappListXML file = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 543
    const/16 v16, 0x0

    .line 545
    .local v16, "wapplistfis":Ljava/io/InputStream;
    :try_start_0
    new-instance v17, Ljava/io/BufferedInputStream;

    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v17 .. v18}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    .end local v16    # "wapplistfis":Ljava/io/InputStream;
    .local v17, "wapplistfis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 548
    .local v6, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 549
    .local v5, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 550
    .local v4, "doc":Lorg/w3c/dom/Document;
    const-string v18, "item"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 552
    .local v10, "nodelist":Lorg/w3c/dom/NodeList;
    const-string v18, "BackupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readWappListXML nodelist size = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    .line 554
    .local v11, "nodelist_count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_2

    .line 555
    invoke-interface {v10, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    .line 556
    .local v15, "wappinfo":Lorg/w3c/dom/Element;
    const-string v18, "PackageName"

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v12

    .line 557
    .local v12, "packageName":Ljava/lang/String;
    const-string v18, "SettingFileName"

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 559
    .local v13, "settingFileName":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_result.xml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 561
    .local v14, "settingfile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    .line 563
    .local v3, "deviceID":Ljava/lang/String;
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    if-eqz v13, :cond_0

    const-string v18, "null"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 564
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/BackupManager;->isBnRAppSetting(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 565
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->createResultFromSettingsXml(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 569
    :cond_0
    const-string v18, "BackupManager"

    const-string v19, "packagename is empty for readWappListXML"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 574
    .end local v3    # "deviceID":Ljava/lang/String;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "i":I
    .end local v10    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v11    # "nodelist_count":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "settingFileName":Ljava/lang/String;
    .end local v14    # "settingfile":Ljava/io/File;
    .end local v15    # "wappinfo":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v7

    move-object/from16 v16, v17

    .line 576
    .end local v17    # "wapplistfis":Ljava/io/InputStream;
    .local v7, "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v16    # "wapplistfis":Ljava/io/InputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 581
    if-eqz v16, :cond_1

    .line 582
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 586
    .end local v7    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v16    # "wapplistfis":Ljava/io/InputStream;
    :cond_1
    :goto_3
    return-void

    .line 573
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9    # "i":I
    .restart local v10    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v11    # "nodelist_count":I
    .restart local v17    # "wapplistfis":Ljava/io/InputStream;
    :cond_2
    :try_start_3
    const-string v18, "BackupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readWappListXML() installedClockList size = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 581
    if-eqz v17, :cond_1

    .line 582
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .line 577
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "i":I
    .end local v10    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v11    # "nodelist_count":I
    .end local v17    # "wapplistfis":Ljava/io/InputStream;
    .restart local v16    # "wapplistfis":Ljava/io/InputStream;
    :catch_1
    move-exception v7

    .line 579
    .local v7, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 581
    if-eqz v16, :cond_1

    .line 582
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .line 581
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    :goto_5
    if-eqz v16, :cond_3

    .line 582
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v18

    .line 581
    .end local v16    # "wapplistfis":Ljava/io/InputStream;
    .restart local v17    # "wapplistfis":Ljava/io/InputStream;
    :catchall_1
    move-exception v18

    move-object/from16 v16, v17

    .end local v17    # "wapplistfis":Ljava/io/InputStream;
    .restart local v16    # "wapplistfis":Ljava/io/InputStream;
    goto :goto_5

    .line 577
    .end local v16    # "wapplistfis":Ljava/io/InputStream;
    .restart local v17    # "wapplistfis":Ljava/io/InputStream;
    :catch_2
    move-exception v7

    move-object/from16 v16, v17

    .end local v17    # "wapplistfis":Ljava/io/InputStream;
    .restart local v16    # "wapplistfis":Ljava/io/InputStream;
    goto :goto_4

    .line 574
    :catch_3
    move-exception v7

    goto :goto_2
.end method

.method private sendWatchmanagerBackupComplete()V
    .locals 4

    .prologue
    .line 454
    const-string v1, "BackupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWatchmanagerBackupComplete() ACTION_WATCHMANAGER_BACKUP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.watchmanager.action.BACKUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 458
    return-void
.end method


# virtual methods
.method public initBackupPath()V
    .locals 2

    .prologue
    .line 476
    const-string v0, "BackupManager"

    const-string v1, "initBackupPath()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->rootofSrc:Ljava/lang/String;

    .line 479
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceTypeBackupSubFolder(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->rootofDest:Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->rootofDest_files:Ljava/lang/String;

    .line 481
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDatabaseTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->rootofDest_databases:Ljava/lang/String;

    .line 482
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForWallpaperBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->rootofDest_wallpapers:Ljava/lang/String;

    .line 483
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForPrefTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->rootofDest_prefs:Ljava/lang/String;

    .line 484
    return-void
.end method

.method public isBnRAppSetting(Ljava/lang/String;Z)Z
    .locals 19
    .param p1, "XMLFileName"    # Ljava/lang/String;
    .param p2, "IsFromClocks"    # Z

    .prologue
    .line 589
    const-string v16, "BackupManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Start setting... mXMLFileName:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v12, 0x0

    .line 591
    .local v12, "result":Z
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 592
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_c

    .line 593
    const/4 v14, 0x0

    .line 595
    .local v14, "xmlData":Ljava/io/InputStream;
    :try_start_0
    new-instance v15, Ljava/io/BufferedInputStream;

    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v15 .. v16}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_12
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    .end local v14    # "xmlData":Ljava/io/InputStream;
    .local v15, "xmlData":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 597
    .local v4, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v13

    .line 599
    .local v13, "root":Lorg/w3c/dom/Document;
    const-string v16, "AppSetting"

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 600
    .local v2, "appSetting":Lorg/w3c/dom/NodeList;
    const-string v16, "ClockSetting"

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 602
    .local v5, "clockSetting":Lorg/w3c/dom/NodeList;
    const-string v16, "BackupManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "startSetting   mIsFromClocks:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v16, "BackupManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "startSetting   appSetting:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "    , clockSetting:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    if-lez v16, :cond_3

    if-nez p2, :cond_3

    .line 607
    const-string v16, "BackupManager"

    const-string v17, "____ Enter AppSetting Tag ___"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 609
    .local v3, "appSettingInfo":Lorg/w3c/dom/Element;
    const-string v16, "MotherPackageName"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 611
    .local v11, "motherPackageName":Lorg/w3c/dom/NodeList;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    if-lez v16, :cond_2

    .line 612
    const-string v16, "BackupManager"

    const-string v17, "____ LINK Method  ___"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v16, "MotherActivity"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 615
    .local v9, "motherActivity":Lorg/w3c/dom/NodeList;
    const-string v16, "MotherPackageIntentAction"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 617
    .local v10, "motherPackageIntentAction":Lorg/w3c/dom/NodeList;
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    if-lez v16, :cond_1

    .line 618
    const-string v16, "BackupManager"

    const-string v17, "____ LINK Method: MotherPackageIntentAction Method ___"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_19
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 619
    const/4 v12, 0x0

    .line 620
    const/16 v16, 0x0

    .line 697
    if-eqz v15, :cond_0

    .line 699
    :try_start_2
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 709
    .end local v2    # "appSetting":Lorg/w3c/dom/NodeList;
    .end local v3    # "appSettingInfo":Lorg/w3c/dom/Element;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "clockSetting":Lorg/w3c/dom/NodeList;
    .end local v9    # "motherActivity":Lorg/w3c/dom/NodeList;
    .end local v10    # "motherPackageIntentAction":Lorg/w3c/dom/NodeList;
    .end local v11    # "motherPackageName":Lorg/w3c/dom/NodeList;
    .end local v13    # "root":Lorg/w3c/dom/Document;
    .end local v15    # "xmlData":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return v16

    .line 700
    .restart local v2    # "appSetting":Lorg/w3c/dom/NodeList;
    .restart local v3    # "appSettingInfo":Lorg/w3c/dom/Element;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "clockSetting":Lorg/w3c/dom/NodeList;
    .restart local v9    # "motherActivity":Lorg/w3c/dom/NodeList;
    .restart local v10    # "motherPackageIntentAction":Lorg/w3c/dom/NodeList;
    .restart local v11    # "motherPackageName":Lorg/w3c/dom/NodeList;
    .restart local v13    # "root":Lorg/w3c/dom/Document;
    .restart local v15    # "xmlData":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .line 701
    .local v7, "e":Ljava/io/IOException;
    const-string v17, "BackupManager"

    const-string v18, "I/O exception while trying to close XML file"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 621
    .end local v7    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_3
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    if-lez v16, :cond_9

    .line 622
    const-string v16, "BackupManager"

    const-string v17, "____ LINK Method: MotherActivity Method ___"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_18
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_15
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 623
    const/4 v12, 0x0

    .line 624
    const/16 v16, 0x0

    .line 697
    if-eqz v15, :cond_0

    .line 699
    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 700
    :catch_1
    move-exception v7

    .line 701
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v17, "BackupManager"

    const-string v18, "I/O exception while trying to close XML file"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 628
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "motherActivity":Lorg/w3c/dom/NodeList;
    .end local v10    # "motherPackageIntentAction":Lorg/w3c/dom/NodeList;
    :cond_2
    :try_start_5
    const-string v16, "BackupManager"

    const-string v17, "____ XML Method  ___"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_19
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_18
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_17
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_15
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 629
    const/4 v12, 0x1

    .line 630
    const/16 v16, 0x1

    .line 697
    if-eqz v15, :cond_0

    .line 699
    :try_start_6
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 700
    :catch_2
    move-exception v7

    .line 701
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v17, "BackupManager"

    const-string v18, "I/O exception while trying to close XML file"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 633
    .end local v3    # "appSettingInfo":Lorg/w3c/dom/Element;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "motherPackageName":Lorg/w3c/dom/NodeList;
    :cond_3
    :try_start_7
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    if-lez v16, :cond_6

    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 635
    const-string v16, "BackupManager"

    const-string v17, "____ Enter ClockSetting Tag ___"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 638
    .local v6, "clockSettingInfo":Lorg/w3c/dom/Element;
    const-string v16, "MotherPackageName"

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 640
    .restart local v11    # "motherPackageName":Lorg/w3c/dom/NodeList;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    if-lez v16, :cond_5

    .line 641
    const-string v16, "BackupManager"

    const-string v17, "____ LINK Method ___"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v16, "MotherActivity"

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 644
    .restart local v9    # "motherActivity":Lorg/w3c/dom/NodeList;
    const-string v16, "MotherPackageIntentAction"

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 646
    .restart local v10    # "motherPackageIntentAction":Lorg/w3c/dom/NodeList;
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    if-lez v16, :cond_4

    .line 647
    const-string v16, "BackupManager"

    const-string v17, "____ LINK Method: MotherPackageIntentAction Method ___"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_19
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_18
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_15
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 648
    const/4 v12, 0x0

    .line 649
    const/16 v16, 0x0

    .line 697
    if-eqz v15, :cond_0

    .line 699
    :try_start_8
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 700
    :catch_3
    move-exception v7

    .line 701
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v17, "BackupManager"

    const-string v18, "I/O exception while trying to close XML file"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 650
    .end local v7    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_9
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    if-lez v16, :cond_9

    .line 651
    const-string v16, "BackupManager"

    const-string v17, "____ LINK Method: MotherActivity Method ___"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_19
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_18
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_17
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_15
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 652
    const/4 v12, 0x0

    .line 653
    const/16 v16, 0x0

    .line 697
    if-eqz v15, :cond_0

    .line 699
    :try_start_a
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 700
    :catch_4
    move-exception v7

    .line 701
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v17, "BackupManager"

    const-string v18, "I/O exception while trying to close XML file"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 656
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "motherActivity":Lorg/w3c/dom/NodeList;
    .end local v10    # "motherPackageIntentAction":Lorg/w3c/dom/NodeList;
    :cond_5
    :try_start_b
    const-string v16, "BackupManager"

    const-string v17, "____ XML Method  ___"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_19
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_b} :catch_18
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_b} :catch_17
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_15
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 657
    const/4 v12, 0x1

    .line 658
    const/16 v16, 0x1

    .line 697
    if-eqz v15, :cond_0

    .line 699
    :try_start_c
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_0

    .line 700
    :catch_5
    move-exception v7

    .line 701
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v17, "BackupManager"

    const-string v18, "I/O exception while trying to close XML file"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 662
    .end local v6    # "clockSettingInfo":Lorg/w3c/dom/Element;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "motherPackageName":Lorg/w3c/dom/NodeList;
    :cond_6
    :try_start_d
    const-string v16, "BackupManager"

    const-string v17, "____ Enter Normal Tag - There\'s no <AppSetting> or <ClockSetting> Tag ___"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const-string v16, "MotherPackageName"

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 665
    .restart local v11    # "motherPackageName":Lorg/w3c/dom/NodeList;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    if-lez v16, :cond_8

    .line 666
    const-string v16, "BackupManager"

    const-string v17, "____ LINK Method ___"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string v16, "MotherActivity"

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 668
    .restart local v9    # "motherActivity":Lorg/w3c/dom/NodeList;
    const-string v16, "MotherPackageIntentAction"

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 670
    .restart local v10    # "motherPackageIntentAction":Lorg/w3c/dom/NodeList;
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    if-lez v16, :cond_7

    .line 671
    const-string v16, "BackupManager"

    const-string v17, "____ LINK Method: MotherPackageIntentAction Method ___"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_19
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_d} :catch_18
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_d} :catch_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_15
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 672
    const/4 v12, 0x0

    .line 673
    const/16 v16, 0x0

    .line 697
    if-eqz v15, :cond_0

    .line 699
    :try_start_e
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_0

    .line 700
    :catch_6
    move-exception v7

    .line 701
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v17, "BackupManager"

    const-string v18, "I/O exception while trying to close XML file"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 674
    .end local v7    # "e":Ljava/io/IOException;
    :cond_7
    :try_start_f
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    if-lez v16, :cond_9

    .line 675
    const-string v16, "BackupManager"

    const-string v17, "____ LINK Method: MotherActivity Method ___"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_19
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_f .. :try_end_f} :catch_18
    .catch Lorg/xml/sax/SAXException; {:try_start_f .. :try_end_f} :catch_17
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_15
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 676
    const/4 v12, 0x0

    .line 677
    const/16 v16, 0x0

    .line 697
    if-eqz v15, :cond_0

    .line 699
    :try_start_10
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_0

    .line 700
    :catch_7
    move-exception v7

    .line 701
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v17, "BackupManager"

    const-string v18, "I/O exception while trying to close XML file"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 680
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "motherActivity":Lorg/w3c/dom/NodeList;
    .end local v10    # "motherPackageIntentAction":Lorg/w3c/dom/NodeList;
    :cond_8
    :try_start_11
    const-string v16, "BackupManager"

    const-string v17, "____ XML Method  ___"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_19
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_11 .. :try_end_11} :catch_18
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_15
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 681
    const/4 v12, 0x1

    .line 682
    const/16 v16, 0x1

    .line 697
    if-eqz v15, :cond_0

    .line 699
    :try_start_12
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    goto/16 :goto_0

    .line 700
    :catch_8
    move-exception v7

    .line 701
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v17, "BackupManager"

    const-string v18, "I/O exception while trying to close XML file"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 697
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v9    # "motherActivity":Lorg/w3c/dom/NodeList;
    .restart local v10    # "motherPackageIntentAction":Lorg/w3c/dom/NodeList;
    :cond_9
    if-eqz v15, :cond_d

    .line 699
    :try_start_13
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    move-object v14, v15

    .end local v2    # "appSetting":Lorg/w3c/dom/NodeList;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "clockSetting":Lorg/w3c/dom/NodeList;
    .end local v9    # "motherActivity":Lorg/w3c/dom/NodeList;
    .end local v10    # "motherPackageIntentAction":Lorg/w3c/dom/NodeList;
    .end local v11    # "motherPackageName":Lorg/w3c/dom/NodeList;
    .end local v13    # "root":Lorg/w3c/dom/Document;
    .end local v15    # "xmlData":Ljava/io/InputStream;
    :cond_a
    :goto_1
    move/from16 v16, v12

    .line 709
    goto/16 :goto_0

    .line 700
    .restart local v2    # "appSetting":Lorg/w3c/dom/NodeList;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "clockSetting":Lorg/w3c/dom/NodeList;
    .restart local v9    # "motherActivity":Lorg/w3c/dom/NodeList;
    .restart local v10    # "motherPackageIntentAction":Lorg/w3c/dom/NodeList;
    .restart local v11    # "motherPackageName":Lorg/w3c/dom/NodeList;
    .restart local v13    # "root":Lorg/w3c/dom/Document;
    .restart local v15    # "xmlData":Ljava/io/InputStream;
    :catch_9
    move-exception v7

    .line 701
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v16, "BackupManager"

    const-string v17, "I/O exception while trying to close XML file"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v14, v15

    .line 702
    .end local v15    # "xmlData":Ljava/io/InputStream;
    .restart local v14    # "xmlData":Ljava/io/InputStream;
    goto :goto_1

    .line 686
    .end local v2    # "appSetting":Lorg/w3c/dom/NodeList;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "clockSetting":Lorg/w3c/dom/NodeList;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "motherActivity":Lorg/w3c/dom/NodeList;
    .end local v10    # "motherPackageIntentAction":Lorg/w3c/dom/NodeList;
    .end local v11    # "motherPackageName":Lorg/w3c/dom/NodeList;
    .end local v13    # "root":Lorg/w3c/dom/Document;
    :catch_a
    move-exception v7

    .line 687
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_14
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 697
    if-eqz v14, :cond_a

    .line 699
    :try_start_15
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    goto :goto_1

    .line 700
    :catch_b
    move-exception v7

    .line 701
    .local v7, "e":Ljava/io/IOException;
    const-string v16, "BackupManager"

    const-string v17, "I/O exception while trying to close XML file"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 688
    .end local v7    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v7

    .line 689
    .local v7, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    :try_start_16
    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 697
    if-eqz v14, :cond_a

    .line 699
    :try_start_17
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d

    goto :goto_1

    .line 700
    :catch_d
    move-exception v7

    .line 701
    .local v7, "e":Ljava/io/IOException;
    const-string v16, "BackupManager"

    const-string v17, "I/O exception while trying to close XML file"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 690
    .end local v7    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v7

    .line 691
    .local v7, "e":Lorg/xml/sax/SAXException;
    :goto_4
    :try_start_18
    const-string v16, "BackupManager"

    const-string v17, "Settings file is not valid"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 697
    if-eqz v14, :cond_a

    .line 699
    :try_start_19
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_f

    goto :goto_1

    .line 700
    :catch_f
    move-exception v7

    .line 701
    .local v7, "e":Ljava/io/IOException;
    const-string v16, "BackupManager"

    const-string v17, "I/O exception while trying to close XML file"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 692
    .end local v7    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v7

    .line 693
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_1a
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 697
    if-eqz v14, :cond_a

    .line 699
    :try_start_1b
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_11

    goto :goto_1

    .line 700
    :catch_11
    move-exception v7

    .line 701
    const-string v16, "BackupManager"

    const-string v17, "I/O exception while trying to close XML file"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 694
    .end local v7    # "e":Ljava/io/IOException;
    :catch_12
    move-exception v7

    .line 695
    .local v7, "e":Ljava/lang/NullPointerException;
    :goto_6
    :try_start_1c
    const-string v16, "BackupManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Required element(s) is missing in "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 697
    if-eqz v14, :cond_a

    .line 699
    :try_start_1d
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_13

    goto/16 :goto_1

    .line 700
    :catch_13
    move-exception v7

    .line 701
    .local v7, "e":Ljava/io/IOException;
    const-string v16, "BackupManager"

    const-string v17, "I/O exception while trying to close XML file"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 697
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    :goto_7
    if-eqz v14, :cond_b

    .line 699
    :try_start_1e
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_14

    .line 702
    :cond_b
    :goto_8
    throw v16

    .line 700
    :catch_14
    move-exception v7

    .line 701
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v17, "BackupManager"

    const-string v18, "I/O exception while trying to close XML file"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 706
    .end local v7    # "e":Ljava/io/IOException;
    .end local v14    # "xmlData":Ljava/io/InputStream;
    :cond_c
    const-string v16, "BackupManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Settings file does not exist..  XMLFileName = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 697
    .restart local v15    # "xmlData":Ljava/io/InputStream;
    :catchall_1
    move-exception v16

    move-object v14, v15

    .end local v15    # "xmlData":Ljava/io/InputStream;
    .restart local v14    # "xmlData":Ljava/io/InputStream;
    goto :goto_7

    .line 694
    .end local v14    # "xmlData":Ljava/io/InputStream;
    .restart local v15    # "xmlData":Ljava/io/InputStream;
    :catch_15
    move-exception v7

    move-object v14, v15

    .end local v15    # "xmlData":Ljava/io/InputStream;
    .restart local v14    # "xmlData":Ljava/io/InputStream;
    goto :goto_6

    .line 692
    .end local v14    # "xmlData":Ljava/io/InputStream;
    .restart local v15    # "xmlData":Ljava/io/InputStream;
    :catch_16
    move-exception v7

    move-object v14, v15

    .end local v15    # "xmlData":Ljava/io/InputStream;
    .restart local v14    # "xmlData":Ljava/io/InputStream;
    goto/16 :goto_5

    .line 690
    .end local v14    # "xmlData":Ljava/io/InputStream;
    .restart local v15    # "xmlData":Ljava/io/InputStream;
    :catch_17
    move-exception v7

    move-object v14, v15

    .end local v15    # "xmlData":Ljava/io/InputStream;
    .restart local v14    # "xmlData":Ljava/io/InputStream;
    goto/16 :goto_4

    .line 688
    .end local v14    # "xmlData":Ljava/io/InputStream;
    .restart local v15    # "xmlData":Ljava/io/InputStream;
    :catch_18
    move-exception v7

    move-object v14, v15

    .end local v15    # "xmlData":Ljava/io/InputStream;
    .restart local v14    # "xmlData":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 686
    .end local v14    # "xmlData":Ljava/io/InputStream;
    .restart local v15    # "xmlData":Ljava/io/InputStream;
    :catch_19
    move-exception v7

    move-object v14, v15

    .end local v15    # "xmlData":Ljava/io/InputStream;
    .restart local v14    # "xmlData":Ljava/io/InputStream;
    goto/16 :goto_2

    .end local v14    # "xmlData":Ljava/io/InputStream;
    .restart local v2    # "appSetting":Lorg/w3c/dom/NodeList;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "clockSetting":Lorg/w3c/dom/NodeList;
    .restart local v9    # "motherActivity":Lorg/w3c/dom/NodeList;
    .restart local v10    # "motherPackageIntentAction":Lorg/w3c/dom/NodeList;
    .restart local v11    # "motherPackageName":Lorg/w3c/dom/NodeList;
    .restart local v13    # "root":Lorg/w3c/dom/Document;
    .restart local v15    # "xmlData":Ljava/io/InputStream;
    :cond_d
    move-object v14, v15

    .end local v15    # "xmlData":Ljava/io/InputStream;
    .restart local v14    # "xmlData":Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method public onProgressCancel(I)V
    .locals 0
    .param p1, "where"    # I

    .prologue
    .line 473
    return-void
.end method

.method public onProgressComplete(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "where"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p2, "deletePackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public onProgressError(II)V
    .locals 0
    .param p1, "where"    # I
    .param p2, "error"    # I

    .prologue
    .line 468
    return-void
.end method

.method public onProgressRetry(I)V
    .locals 0
    .param p1, "where"    # I

    .prologue
    .line 463
    return-void
.end method

.method public onUpdate(Ljava/lang/String;I)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 489
    return-void
.end method

.method public sendBackupCompleteIntent(I)V
    .locals 8
    .param p1, "systemBackupType"    # I

    .prologue
    .line 433
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.android.hostmanager.SYSTEM_BACKUP_COMPLETE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "EXTRAS_SYSTEM_BACKUP_LOCATION"

    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->rootofDest:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string v5, "BACKUP_LOCAL_OR_CLOUD"

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 437
    .local v2, "timeInMillis":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "time":Ljava/lang/String;
    const-string v5, "LAST_BACKUP_TIME"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 440
    const-string v5, "BackupManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendBackupCompleteIntent: TIME: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " flag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    if-eqz v5, :cond_0

    .line 442
    const-string v5, "BackupManager"

    const-string v6, "Sending backup complete intent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->getConnectedDeviceType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_backup_time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/samsung/android/hostmanager/br/BackupManager;->createBackupTimePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v6, v6, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    const-string v7, "last_backup_time"

    invoke-static {v5, v6, v7, v1}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->updatePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.watchmanager.ACTION_BROADCAST_HM_BACKUP_COMPLETE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .local v4, "uhmIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.android.hostmanager.permission.ACCESS_UNIFIED_HOST_MANAGER"

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 451
    .end local v4    # "uhmIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 449
    :cond_0
    const-string v5, "BackupManager"

    const-string v6, "mIBackupRestoreManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startBackupTask(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/br/BackupManager;->backupTextInputMethods()V

    .line 92
    const-string v0, "BackupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBackupTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput p1, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mBackupMode:I

    .line 94
    new-instance v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;-><init>(Lcom/samsung/android/hostmanager/br/BackupManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mBackUpProgress:Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager;->mBackUpProgress:Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method
