.class public Lcom/samsung/android/hostmanager/br/RestoreManager;
.super Ljava/lang/Object;
.source "RestoreManager.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/br/BackupRestoreListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;
    }
.end annotation


# static fields
.field public static final MGR_CLOCK_IDLE_CLOCK_WIDGET_REQ:I = 0x1

.field public static final MGR_NOTI_SETTING_RES:I = 0x2

.field private static final TAG:Ljava/lang/String;

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

.field private backupIdleClockPackage:Ljava/lang/String;

.field private connectedDevicesByType:Ljava/lang/String;

.field private hmStatus_deviceType:Ljava/lang/String;

.field private hmStatus_timestamp:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHMHandler:Landroid/os/Handler;

.field private mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

.field private mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

.field private mRestoreAfterReset:Z

.field private mRestoreProgress:Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;

.field private preapkinstall:Ljava/lang/String;

.field private scsPref:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bnrManager"    # Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mRestoreAfterReset:Z

    .line 70
    const-string v0, "app_version.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->appVerFile:Ljava/lang/String;

    .line 71
    const-string v0, "connectedDevicesByType.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->connectedDevicesByType:Ljava/lang/String;

    .line 72
    const-string v0, "hmStatus_timestamp.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->hmStatus_timestamp:Ljava/lang/String;

    .line 73
    const-string v0, "hmStatus_deviceType.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->hmStatus_deviceType:Ljava/lang/String;

    .line 74
    const-string v0, "preapkinstall.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->preapkinstall:Ljava/lang/String;

    .line 75
    const-string v0, "scs_pref_HM.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->scsPref:Ljava/lang/String;

    .line 76
    const-string v0, "PREF_NAME_CONNECTED_WEARABLE.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->CM_CONNECTED_WEARABLE_PREF:Ljava/lang/String;

    .line 77
    const-string v0, "PREF_NAME_CONNECTED_WEARABLE_BLEACS.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->CM_CONNECTED_WEARABLE_BLEACS_PREF:Ljava/lang/String;

    .line 78
    const-string v0, "PREF_NAME_SCS_CONNECTED_WEARABLE.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->CM_SCS_CONNECTED_WEARABLE_PREF:Ljava/lang/String;

    .line 79
    const-string v0, "PREF_NAME_DEVICE_FEATURE.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->CM_DEVICE_FEATURE_PREF:Ljava/lang/String;

    .line 80
    const-string v0, "PREF_SAP_PROFILE_VERSION.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->PREF_SAP_PROFILE_VERSION:Ljava/lang/String;

    .line 81
    const-string v0, "PREF_WEARABLE_ADVERTISE_MODE.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->PREF_WEARABLE_ADVERTISE_MODE:Ljava/lang/String;

    .line 83
    const-string v0, "gear_number_pref.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->GEAR_NUMBER_PREF:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/br/RestoreManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/hostmanager/br/RestoreManager;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/br/RestoreManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->CM_CONNECTED_WEARABLE_BLEACS_PREF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->CM_SCS_CONNECTED_WEARABLE_PREF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->CM_DEVICE_FEATURE_PREF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->PREF_SAP_PROFILE_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->PREF_WEARABLE_ADVERTISE_MODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->GEAR_NUMBER_PREF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/hostmanager/br/RestoreManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mRestoreAfterReset:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/hostmanager/br/RestoreManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mRestoreAfterReset:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/hostmanager/br/RestoreManager;Ljava/io/File;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Ljava/util/Map;
    .param p4, "x4"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/br/RestoreManager;->parseXML(Ljava/io/File;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/hostmanager/br/RestoreManager;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Ljava/util/Map;
    .param p4, "x4"    # Ljava/util/Map;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/br/RestoreManager;->saveSharedPreference(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/hostmanager/br/RestoreManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/br/RestoreManager;->restoreStartRequest()I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/hostmanager/br/RestoreManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mHMHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/samsung/android/hostmanager/br/RestoreManager;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mHMHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/hostmanager/br/RestoreManager;)Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mRestoreProgress:Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->appVerFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->connectedDevicesByType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->hmStatus_timestamp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->hmStatus_deviceType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->preapkinstall:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->scsPref:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->CM_CONNECTED_WEARABLE_PREF:Ljava/lang/String;

    return-object v0
.end method

.method private isPreloadedApplication(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 695
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 698
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    :try_start_0
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 699
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x81

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 701
    .local v2, "isSystemApp":Z
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 702
    sget-object v5, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "= isSystemApp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "isSystemApp":Z
    :cond_0
    :goto_1
    return v2

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    move v2, v4

    .line 699
    goto :goto_0

    .line 705
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move v2, v4

    .line 706
    goto :goto_1
.end method

.method private isWgtFileExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "bPackageName"    # Ljava/lang/String;
    .param p2, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 1450
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWgtFileExists bPackageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWgtFileExists deviceType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    if-eqz p2, :cond_2

    .line 1454
    const/4 v1, 0x0

    .line 1456
    .local v1, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v5, v5, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1461
    :goto_0
    const/4 v3, 0x0

    .line 1462
    .local v3, "wgtpath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1463
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->getWgtFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1465
    :cond_0
    const/4 v2, 0x0

    .line 1466
    .local v2, "wgtfile":Ljava/io/File;
    if-eqz v3, :cond_1

    .line 1467
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWgtFileExists wgtpath: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    new-instance v2, Ljava/io/File;

    .end local v2    # "wgtfile":Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1473
    .restart local v2    # "wgtfile":Ljava/io/File;
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1474
    const/4 v4, 0x1

    .line 1477
    .end local v1    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    .end local v2    # "wgtfile":Ljava/io/File;
    .end local v3    # "wgtpath":Ljava/lang/String;
    :goto_2
    return v4

    .line 1458
    .restart local v1    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :catch_0
    move-exception v0

    .line 1459
    .local v0, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 1471
    .end local v0    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    .restart local v2    # "wgtfile":Ljava/io/File;
    .restart local v3    # "wgtpath":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    const-string v5, "isWgtFileExists wgtpath null!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1477
    .end local v1    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    .end local v2    # "wgtfile":Ljava/io/File;
    .end local v3    # "wgtpath":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private parseXML(Ljava/io/File;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 24
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1058
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "mapInt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p4, "mapBool":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1059
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parseXML: readXML file = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_2

    .line 1137
    :cond_1
    :goto_0
    return-void

    .line 1063
    :cond_2
    const/4 v10, 0x0

    .line 1065
    .local v10, "fis":Ljava/io/InputStream;
    :try_start_0
    new-instance v11, Ljava/io/BufferedInputStream;

    new-instance v21, Ljava/io/FileInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    .end local v10    # "fis":Ljava/io/InputStream;
    .local v11, "fis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 1067
    .local v8, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 1068
    .local v7, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v7, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 1069
    .local v6, "doc":Lorg/w3c/dom/Document;
    const-string v21, "map"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 1070
    .local v16, "nodelist":Lorg/w3c/dom/NodeList;
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    .line 1071
    .local v15, "mapElem":Lorg/w3c/dom/Element;
    const-string v21, "string"

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 1072
    .local v18, "stringList":Lorg/w3c/dom/NodeList;
    const-string v21, "int"

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 1073
    .local v13, "intList":Lorg/w3c/dom/NodeList;
    const-string v21, "boolean"

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 1074
    .local v3, "boolList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    .line 1075
    .local v19, "stringListLength":I
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    .line 1076
    .local v14, "intListLength":I
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 1077
    .local v4, "boolListLength":I
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parseXML: length "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parseXML: Int length "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parseXML: Bool length "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "STRING VALUE: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v12, v0, :cond_5

    .line 1083
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 1084
    .local v5, "clockinfo":Lorg/w3c/dom/Element;
    const-string v21, "name"

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1085
    .local v2, "appname":Ljava/lang/String;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v17

    .line 1086
    .local v17, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1087
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parseXML: appname:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", packageName:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_3
    const-string v21, "last_backup_time"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    const-string v21, "backup_was_done"

    .line 1089
    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 1090
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1092
    .end local v2    # "appname":Ljava/lang/String;
    .end local v5    # "clockinfo":Lorg/w3c/dom/Element;
    .end local v17    # "packageName":Ljava/lang/String;
    :cond_5
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "INT VALUE: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v14, :cond_8

    .line 1094
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "INT PROCESSING: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-interface {v13, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 1096
    .restart local v5    # "clockinfo":Lorg/w3c/dom/Element;
    const-string v21, "name"

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1097
    .restart local v2    # "appname":Ljava/lang/String;
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "INT PROCESSING:  appNAME: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1099
    .local v17, "packageName":I
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "INT PROCESSING:  packageName: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1102
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parseXML INT: appname:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", packageName:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_6
    const-string v21, "last_backup_time"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    const-string v21, "backup_was_done"

    .line 1104
    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 1105
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 1107
    .end local v2    # "appname":Ljava/lang/String;
    .end local v5    # "clockinfo":Lorg/w3c/dom/Element;
    .end local v17    # "packageName":I
    :cond_8
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Bool VALUE: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const/4 v12, 0x0

    :goto_3
    if-ge v12, v4, :cond_b

    .line 1109
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "BOOL PROCESSING: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-interface {v3, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 1111
    .restart local v5    # "clockinfo":Lorg/w3c/dom/Element;
    const-string v21, "name"

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1112
    .restart local v2    # "appname":Ljava/lang/String;
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Bool PROCESSING:  appNAME: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1114
    .local v17, "packageName":Ljava/lang/String;
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Bool PROCESSING:  packageName: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 1116
    .local v20, "val":Z
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Bool PROCESSING:  val: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1118
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parseXML BOOL: appname:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", packageName:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " Bool: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_9
    const-string v21, "last_backup_time"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    const-string v21, "backup_was_done"

    .line 1120
    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 1121
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 1124
    .end local v2    # "appname":Ljava/lang/String;
    .end local v5    # "clockinfo":Lorg/w3c/dom/Element;
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v20    # "val":Z
    :cond_b
    if-eqz v11, :cond_c

    .line 1125
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1133
    :cond_c
    if-eqz v11, :cond_e

    .line 1134
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/InputStream;
    .restart local v10    # "fis":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 1128
    .end local v3    # "boolList":Lorg/w3c/dom/NodeList;
    .end local v4    # "boolListLength":I
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12    # "i":I
    .end local v13    # "intList":Lorg/w3c/dom/NodeList;
    .end local v14    # "intListLength":I
    .end local v15    # "mapElem":Lorg/w3c/dom/Element;
    .end local v16    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v18    # "stringList":Lorg/w3c/dom/NodeList;
    .end local v19    # "stringListLength":I
    :catch_0
    move-exception v9

    .line 1129
    .local v9, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_4
    :try_start_2
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ParserConfigurationException e = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1133
    if-eqz v10, :cond_1

    .line 1134
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 1130
    .end local v9    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v9

    .line 1131
    .local v9, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_3
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception e = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1133
    if-eqz v10, :cond_1

    .line 1134
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 1133
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v21

    :goto_6
    if-eqz v10, :cond_d

    .line 1134
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_d
    throw v21

    .line 1133
    .end local v10    # "fis":Ljava/io/InputStream;
    .restart local v11    # "fis":Ljava/io/InputStream;
    :catchall_1
    move-exception v21

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/InputStream;
    .restart local v10    # "fis":Ljava/io/InputStream;
    goto :goto_6

    .line 1130
    .end local v10    # "fis":Ljava/io/InputStream;
    .restart local v11    # "fis":Ljava/io/InputStream;
    :catch_2
    move-exception v9

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/InputStream;
    .restart local v10    # "fis":Ljava/io/InputStream;
    goto :goto_5

    .line 1128
    .end local v10    # "fis":Ljava/io/InputStream;
    .restart local v11    # "fis":Ljava/io/InputStream;
    :catch_3
    move-exception v9

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/InputStream;
    .restart local v10    # "fis":Ljava/io/InputStream;
    goto :goto_4

    .end local v10    # "fis":Ljava/io/InputStream;
    .restart local v3    # "boolList":Lorg/w3c/dom/NodeList;
    .restart local v4    # "boolListLength":I
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v7    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v11    # "fis":Ljava/io/InputStream;
    .restart local v12    # "i":I
    .restart local v13    # "intList":Lorg/w3c/dom/NodeList;
    .restart local v14    # "intListLength":I
    .restart local v15    # "mapElem":Lorg/w3c/dom/Element;
    .restart local v16    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v18    # "stringList":Lorg/w3c/dom/NodeList;
    .restart local v19    # "stringListLength":I
    :cond_e
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/InputStream;
    .restart local v10    # "fis":Ljava/io/InputStream;
    goto/16 :goto_0
.end method

.method private readClockListXML(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 33
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/br/BPackageInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1255
    .local p2, "clockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/br/BPackageInfo;>;"
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1256
    .local v23, "file":Ljava/io/File;
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "readClockListXML file = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v4

    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v4, v0, :cond_6

    .line 1258
    const/16 v17, 0x0

    .line 1260
    .local v17, "clocklistfis":Ljava/io/InputStream;
    :try_start_0
    new-instance v18, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    .end local v17    # "clocklistfis":Ljava/io/InputStream;
    .local v18, "clocklistfis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v21

    .line 1263
    .local v21, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v21 .. v21}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v20

    .line 1264
    .local v20, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v19

    .line 1265
    .local v19, "doc":Lorg/w3c/dom/Document;
    const-string v4, "item"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v27

    .line 1270
    .local v27, "nodelist":Lorg/w3c/dom/NodeList;
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "readClockListXML nodelist size = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    .line 1272
    .local v28, "nodelist_count":I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_5

    .line 1273
    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    .line 1274
    .local v16, "clockinfo":Lorg/w3c/dom/Element;
    const-string v4, "AppName"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 1275
    .local v3, "appname":Ljava/lang/String;
    const-string v4, "PackageName"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 1276
    .local v5, "packageName":Ljava/lang/String;
    const-string v4, "ClassName"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 1277
    .local v6, "className":Ljava/lang/String;
    const-string v4, "ImageFileName"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 1278
    .local v7, "imageFileName":Ljava/lang/String;
    const-string v4, "SettingFileName"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 1279
    .local v8, "settingFileName":Ljava/lang/String;
    const-string v4, "IsShown"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v26

    .line 1281
    .local v26, "isShown":Ljava/lang/String;
    const-string v4, "true"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1282
    const/4 v9, 0x1

    .line 1290
    .local v9, "shownState":Z
    :goto_1
    const-string v4, "PreLoad"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v14

    .line 1292
    .local v14, "PreLoad":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1293
    const/4 v10, 0x1

    .line 1298
    .local v10, "preloadState":Z
    :goto_2
    const-string v4, "PreCheckSettingsCondition"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v29

    .line 1300
    .local v29, "preCheck":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_4

    .line 1301
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v30

    .line 1302
    .local v30, "preCheckSettingCondition":Ljava/lang/String;
    const-string v4, "true"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    .line 1307
    .end local v30    # "preCheckSettingCondition":Ljava/lang/String;
    .local v11, "preCheckSettingConditionState":Z
    :goto_3
    const-string v12, "unused"

    .line 1308
    .local v12, "group":Ljava/lang/String;
    const-string v4, "Group"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v24

    .line 1309
    .local v24, "groupList":Lorg/w3c/dom/NodeList;
    if-eqz v24, :cond_0

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1310
    const-string v4, "Group"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v12

    .line 1312
    :cond_0
    const-string v13, "unused"

    .line 1313
    .local v13, "appCategory":Ljava/lang/String;
    const-string v4, "AppCategory"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 1314
    .local v15, "appCategoryList":Lorg/w3c/dom/NodeList;
    if-eqz v15, :cond_1

    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v15, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1315
    const-string v4, "AppCategory"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 1318
    :cond_1
    new-instance v2, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;

    const-string v4, "test"

    invoke-direct/range {v2 .. v13}, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    .line 1319
    .local v2, "clock":Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 1284
    .end local v2    # "clock":Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;
    .end local v9    # "shownState":Z
    .end local v10    # "preloadState":Z
    .end local v11    # "preCheckSettingConditionState":Z
    .end local v12    # "group":Ljava/lang/String;
    .end local v13    # "appCategory":Ljava/lang/String;
    .end local v14    # "PreLoad":Ljava/lang/String;
    .end local v15    # "appCategoryList":Lorg/w3c/dom/NodeList;
    .end local v24    # "groupList":Lorg/w3c/dom/NodeList;
    .end local v29    # "preCheck":Lorg/w3c/dom/NodeList;
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "shownState":Z
    goto/16 :goto_1

    .line 1295
    .restart local v14    # "PreLoad":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "preloadState":Z
    goto/16 :goto_2

    .line 1304
    .restart local v29    # "preCheck":Lorg/w3c/dom/NodeList;
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "preCheckSettingConditionState":Z
    goto :goto_3

    .line 1321
    .end local v3    # "appname":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v7    # "imageFileName":Ljava/lang/String;
    .end local v8    # "settingFileName":Ljava/lang/String;
    .end local v9    # "shownState":Z
    .end local v10    # "preloadState":Z
    .end local v11    # "preCheckSettingConditionState":Z
    .end local v14    # "PreLoad":Ljava/lang/String;
    .end local v16    # "clockinfo":Lorg/w3c/dom/Element;
    .end local v26    # "isShown":Ljava/lang/String;
    .end local v29    # "preCheck":Lorg/w3c/dom/NodeList;
    :cond_5
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "clockList size ="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1327
    if-eqz v18, :cond_6

    .line 1328
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 1332
    .end local v18    # "clocklistfis":Ljava/io/InputStream;
    .end local v19    # "doc":Lorg/w3c/dom/Document;
    .end local v20    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v21    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "i":I
    .end local v27    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v28    # "nodelist_count":I
    :cond_6
    :goto_4
    return-void

    .line 1322
    .restart local v17    # "clocklistfis":Ljava/io/InputStream;
    :catch_0
    move-exception v22

    .line 1323
    .local v22, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_5
    :try_start_2
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ParserConfigurationException e = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1327
    if-eqz v17, :cond_6

    .line 1328
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 1324
    .end local v22    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v22

    .line 1325
    .local v22, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_3
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception e = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1327
    if-eqz v17, :cond_6

    .line 1328
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 1327
    .end local v22    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_7
    if-eqz v17, :cond_7

    .line 1328
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v4

    .line 1327
    .end local v17    # "clocklistfis":Ljava/io/InputStream;
    .restart local v18    # "clocklistfis":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object/from16 v17, v18

    .end local v18    # "clocklistfis":Ljava/io/InputStream;
    .restart local v17    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_7

    .line 1324
    .end local v17    # "clocklistfis":Ljava/io/InputStream;
    .restart local v18    # "clocklistfis":Ljava/io/InputStream;
    :catch_2
    move-exception v22

    move-object/from16 v17, v18

    .end local v18    # "clocklistfis":Ljava/io/InputStream;
    .restart local v17    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_6

    .line 1322
    .end local v17    # "clocklistfis":Ljava/io/InputStream;
    .restart local v18    # "clocklistfis":Ljava/io/InputStream;
    :catch_3
    move-exception v22

    move-object/from16 v17, v18

    .end local v18    # "clocklistfis":Ljava/io/InputStream;
    .restart local v17    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_5
.end method

.method private readWappListXML(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 31
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/br/BPackageInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1334
    .local p2, "wAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/br/BPackageInfo;>;"
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1335
    .local v19, "file":Ljava/io/File;
    sget-object v28, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "readWappListXML file = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 1337
    const/4 v13, 0x0

    .line 1339
    .local v13, "clocklistfis":Ljava/io/InputStream;
    :try_start_0
    new-instance v14, Ljava/io/BufferedInputStream;

    new-instance v28, Ljava/io/FileInputStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v28

    invoke-direct {v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1341
    .end local v13    # "clocklistfis":Ljava/io/InputStream;
    .local v14, "clocklistfis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v17

    .line 1342
    .local v17, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v17 .. v17}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v16

    .line 1343
    .local v16, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v15

    .line 1344
    .local v15, "doc":Lorg/w3c/dom/Document;
    const-string v28, "item"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 1349
    .local v21, "nodelist":Lorg/w3c/dom/NodeList;
    sget-object v28, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "readWappListXML nodelist size = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    .line 1351
    .local v22, "nodelist_count":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 1352
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v27

    check-cast v27, Lorg/w3c/dom/Element;

    .line 1353
    .local v27, "wappinfo":Lorg/w3c/dom/Element;
    const-string v28, "AppName"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 1354
    .local v3, "appname":Ljava/lang/String;
    const-string v28, "ClassName"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 1355
    .local v5, "className":Ljava/lang/String;
    const-string v28, "PackageName"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 1356
    .local v4, "packageName":Ljava/lang/String;
    const-string v28, "ImageFileName"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 1357
    .local v6, "imageFileName":Ljava/lang/String;
    const-string v28, "SettingFileName"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 1358
    .local v7, "settingFileName":Ljava/lang/String;
    const-string v28, "PreLoad"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v26

    .line 1359
    .local v26, "preLoad":Ljava/lang/String;
    const-string v28, "true"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 1360
    const/4 v9, 0x1

    .line 1364
    .local v9, "isPreload":Z
    :goto_1
    const-string v28, "IsAppWidget"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    .line 1365
    .local v11, "AppWidgetcheck":Ljava/lang/String;
    const-string v28, "true"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 1366
    const/4 v8, 0x1

    .line 1370
    .local v8, "isAppWidget":Z
    :goto_2
    const-string v28, "PreCheckSettingsCondition"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 1371
    .local v23, "preCheck":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    if-lez v28, :cond_3

    .line 1372
    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    check-cast v28, Lorg/w3c/dom/Element;

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v24

    .line 1373
    .local v24, "preCheckSettingCondition":Ljava/lang/String;
    const-string v28, "true"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    .line 1378
    .end local v24    # "preCheckSettingCondition":Ljava/lang/String;
    .local v25, "preCheckSettingConditionState":Z
    :goto_3
    const-string v10, "unused"

    .line 1379
    .local v10, "appCategory":Ljava/lang/String;
    const-string v28, "AppCategory"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 1380
    .local v12, "appCategoryList":Lorg/w3c/dom/NodeList;
    if-eqz v12, :cond_0

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    if-lez v28, :cond_0

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    if-eqz v28, :cond_0

    .line 1381
    const-string v28, "AppCategory"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    .line 1384
    :cond_0
    new-instance v2, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 1385
    .local v2, "app":Lcom/samsung/android/hostmanager/br/WatchAppsInfo;
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 1362
    .end local v2    # "app":Lcom/samsung/android/hostmanager/br/WatchAppsInfo;
    .end local v8    # "isAppWidget":Z
    .end local v9    # "isPreload":Z
    .end local v10    # "appCategory":Ljava/lang/String;
    .end local v11    # "AppWidgetcheck":Ljava/lang/String;
    .end local v12    # "appCategoryList":Lorg/w3c/dom/NodeList;
    .end local v23    # "preCheck":Lorg/w3c/dom/NodeList;
    .end local v25    # "preCheckSettingConditionState":Z
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "isPreload":Z
    goto :goto_1

    .line 1368
    .restart local v11    # "AppWidgetcheck":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "isAppWidget":Z
    goto :goto_2

    .line 1375
    .restart local v23    # "preCheck":Lorg/w3c/dom/NodeList;
    :cond_3
    const/16 v25, 0x0

    .restart local v25    # "preCheckSettingConditionState":Z
    goto :goto_3

    .line 1387
    .end local v3    # "appname":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "imageFileName":Ljava/lang/String;
    .end local v7    # "settingFileName":Ljava/lang/String;
    .end local v8    # "isAppWidget":Z
    .end local v9    # "isPreload":Z
    .end local v11    # "AppWidgetcheck":Ljava/lang/String;
    .end local v23    # "preCheck":Lorg/w3c/dom/NodeList;
    .end local v25    # "preCheckSettingConditionState":Z
    .end local v26    # "preLoad":Ljava/lang/String;
    .end local v27    # "wappinfo":Lorg/w3c/dom/Element;
    :cond_4
    sget-object v28, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "readWappListXML() installedClockList size = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1393
    if-eqz v14, :cond_5

    .line 1394
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 1398
    .end local v14    # "clocklistfis":Ljava/io/InputStream;
    .end local v15    # "doc":Lorg/w3c/dom/Document;
    .end local v16    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v17    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v20    # "i":I
    .end local v21    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v22    # "nodelist_count":I
    :cond_5
    :goto_4
    return-void

    .line 1388
    .restart local v13    # "clocklistfis":Ljava/io/InputStream;
    :catch_0
    move-exception v18

    .line 1389
    .local v18, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_5
    :try_start_2
    sget-object v28, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "readWappListXML ParserConfigurationException e = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1393
    if-eqz v13, :cond_5

    .line 1394
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 1390
    .end local v18    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v18

    .line 1391
    .local v18, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_3
    sget-object v28, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "readWappListXML Exception e = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1393
    if-eqz v13, :cond_5

    .line 1394
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 1393
    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v28

    :goto_7
    if-eqz v13, :cond_6

    .line 1394
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    :cond_6
    throw v28

    .line 1393
    .end local v13    # "clocklistfis":Ljava/io/InputStream;
    .restart local v14    # "clocklistfis":Ljava/io/InputStream;
    :catchall_1
    move-exception v28

    move-object v13, v14

    .end local v14    # "clocklistfis":Ljava/io/InputStream;
    .restart local v13    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_7

    .line 1390
    .end local v13    # "clocklistfis":Ljava/io/InputStream;
    .restart local v14    # "clocklistfis":Ljava/io/InputStream;
    :catch_2
    move-exception v18

    move-object v13, v14

    .end local v14    # "clocklistfis":Ljava/io/InputStream;
    .restart local v13    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_6

    .line 1388
    .end local v13    # "clocklistfis":Ljava/io/InputStream;
    .restart local v14    # "clocklistfis":Ljava/io/InputStream;
    :catch_3
    move-exception v18

    move-object v13, v14

    .end local v14    # "clocklistfis":Ljava/io/InputStream;
    .restart local v13    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_5
.end method

.method private restoreStartRequest()I
    .locals 3

    .prologue
    .line 1418
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v1, :cond_0

    .line 1419
    sget-object v1, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    const-string v2, " Send Restore Start..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendRestorRequest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private saveSharedPreference(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 16
    .param p1, "prefName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1002
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "mapInt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p4, "mapBool":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1003
    sget-object v12, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "saveSharedPreference: prefName file = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1006
    .local v10, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1008
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1010
    .local v9, "removalPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getGearModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1012
    .local v8, "modelName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mRestoreAfterReset:Z

    if-eqz v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "installed_wgt_only_app"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1014
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1015
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1016
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1017
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1018
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1019
    .local v11, "value":I
    move-object v1, v7

    .line 1021
    .local v1, "bPackage":Ljava/lang/String;
    const-string v12, "_preload"

    const-string v13, ""

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1023
    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 1025
    sget-object v12, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not applicable for restore, bPackageName: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", preload value = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1028
    :cond_1
    sget-object v12, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Applicable for restore, bPackageName: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", preload value = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1033
    .end local v1    # "bPackage":Ljava/lang/String;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v11    # "value":I
    :cond_2
    sget-object v12, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "saveSharedPreference removalPackageList size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1035
    .restart local v1    # "bPackage":Ljava/lang/String;
    sget-object v13, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saveSharedPreference removalPackageList bPackage = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_appId"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_appVersion"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_appVersionName"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_isNew"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_preload"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_previous_preload"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1044
    .end local v1    # "bPackage":Ljava/lang/String;
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1045
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v2, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 1047
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1048
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v2, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 1050
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1051
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-interface {v2, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 1054
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_6
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1055
    return-void
.end method

.method private updateIdleClockPackage()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1216
    new-instance v8, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "clocklist.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1217
    .local v8, "file":Ljava/io/File;
    sget-object v14, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateIdleClockPackage file = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 1219
    const/4 v2, 0x0

    .line 1221
    .local v2, "clocklistfis":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    .end local v2    # "clocklistfis":Ljava/io/InputStream;
    .local v3, "clocklistfis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 1224
    .local v6, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 1225
    .local v5, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v5, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 1226
    .local v4, "doc":Lorg/w3c/dom/Document;
    const-string v14, "item"

    invoke-interface {v4, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 1228
    .local v11, "nodelist":Lorg/w3c/dom/NodeList;
    sget-object v14, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateIdleClockPackage nodelist size = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    .line 1230
    .local v12, "nodelist_count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_0

    .line 1231
    invoke-interface {v11, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 1232
    .local v1, "clockinfo":Lorg/w3c/dom/Element;
    const-string v14, "PackageName"

    invoke-interface {v1, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 1233
    .local v13, "packageName":Ljava/lang/String;
    const-string v14, "IsShown"

    invoke-interface {v1, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    .line 1235
    .local v10, "isShown":Ljava/lang/String;
    const-string v14, "true"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1236
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/hostmanager/br/RestoreManager;->backupIdleClockPackage:Ljava/lang/String;

    .line 1237
    sget-object v14, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateIdleClockPackage backupIdleClockPackage = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager;->backupIdleClockPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1246
    .end local v1    # "clockinfo":Lorg/w3c/dom/Element;
    .end local v10    # "isShown":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_1

    .line 1247
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1251
    .end local v3    # "clocklistfis":Ljava/io/InputStream;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "i":I
    .end local v11    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v12    # "nodelist_count":I
    :cond_1
    :goto_1
    return-void

    .line 1230
    .restart local v1    # "clockinfo":Lorg/w3c/dom/Element;
    .restart local v3    # "clocklistfis":Ljava/io/InputStream;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9    # "i":I
    .restart local v10    # "isShown":Ljava/lang/String;
    .restart local v11    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v12    # "nodelist_count":I
    .restart local v13    # "packageName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1241
    .end local v1    # "clockinfo":Lorg/w3c/dom/Element;
    .end local v3    # "clocklistfis":Ljava/io/InputStream;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "i":I
    .end local v10    # "isShown":Ljava/lang/String;
    .end local v11    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v12    # "nodelist_count":I
    .end local v13    # "packageName":Ljava/lang/String;
    .restart local v2    # "clocklistfis":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .line 1242
    .local v7, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_2
    :try_start_2
    sget-object v14, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ParserConfigurationException e = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1246
    if-eqz v2, :cond_1

    .line 1247
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 1243
    .end local v7    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v7

    .line 1244
    .local v7, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    sget-object v14, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception e = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1246
    if-eqz v2, :cond_1

    .line 1247
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 1246
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :goto_4
    if-eqz v2, :cond_3

    .line 1247
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v14

    .line 1246
    .end local v2    # "clocklistfis":Ljava/io/InputStream;
    .restart local v3    # "clocklistfis":Ljava/io/InputStream;
    :catchall_1
    move-exception v14

    move-object v2, v3

    .end local v3    # "clocklistfis":Ljava/io/InputStream;
    .restart local v2    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_4

    .line 1243
    .end local v2    # "clocklistfis":Ljava/io/InputStream;
    .restart local v3    # "clocklistfis":Ljava/io/InputStream;
    :catch_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "clocklistfis":Ljava/io/InputStream;
    .restart local v2    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_3

    .line 1241
    .end local v2    # "clocklistfis":Ljava/io/InputStream;
    .restart local v3    # "clocklistfis":Ljava/io/InputStream;
    :catch_3
    move-exception v7

    move-object v2, v3

    .end local v3    # "clocklistfis":Ljava/io/InputStream;
    .restart local v2    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private verifyidleClock(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/br/BPackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "clockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/br/BPackageInfo;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 759
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    const-string v5, "inside verifyidleClock()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v4, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    const-string v5, "DeviceInfo"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 761
    .local v3, "sharedPref":Landroid/content/SharedPreferences;
    const-string v4, "DEFAULT_CLOCK_PKGNAME"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, "defaultClockPkgName":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultclockPackage :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/4 v2, 0x0

    .line 764
    .local v2, "isIdleClockAvailable":Z
    iget-object v4, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->backupIdleClockPackage:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 765
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backupIdleClockPackage is not null :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->backupIdleClockPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/br/BPackageInfo;

    .line 767
    .local v1, "info":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->backupIdleClockPackage:Ljava/lang/String;

    invoke-interface {v1}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 768
    invoke-interface {v1, v8}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->setShownState(Z)V

    .line 769
    const/4 v2, 0x1

    goto :goto_0

    .line 771
    :cond_0
    invoke-interface {v1, v7}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->setShownState(Z)V

    goto :goto_0

    .line 774
    .end local v1    # "info":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    :cond_1
    if-nez v2, :cond_3

    .line 775
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    const-string v5, "isIdleClockAvailable is false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/br/BPackageInfo;

    .line 777
    .restart local v1    # "info":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    invoke-interface {v1, v7}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->setShownState(Z)V

    .line 778
    invoke-interface {v1}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 779
    invoke-interface {v1, v8}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->setShownState(Z)V

    goto :goto_1

    .line 783
    .end local v1    # "info":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    :cond_3
    return-void
.end method

.method private writeListXML(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 21
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/br/BPackageInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/transform/TransformerFactoryConfigurationError;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1140
    .local p3, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/br/BPackageInfo;>;"
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1142
    .local v3, "file":Ljava/io/File;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    .line 1143
    .local v4, "newdoc":Lorg/w3c/dom/Document;
    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 1144
    .local v6, "root":Lorg/w3c/dom/Element;
    invoke-interface {v4, v6}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1146
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/br/BPackageInfo;

    .line 1147
    .local v2, "bpi":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    const-string v20, "item"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    .line 1148
    .local v14, "tagItem":Lorg/w3c/dom/Element;
    invoke-interface {v6, v14}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1150
    const-string v20, "AppName"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 1151
    .local v9, "tagAppName":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1152
    invoke-interface {v14, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1154
    const-string v20, "PackageName"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 1155
    .local v15, "tagPackageName":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1156
    invoke-interface {v14, v15}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1158
    const-string v20, "ClassName"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 1159
    .local v10, "tagClassName":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getClassName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1160
    invoke-interface {v14, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1162
    const-string v20, "ImageFileName"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 1163
    .local v12, "tagImageFileName":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getImageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1164
    invoke-interface {v14, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1166
    const-string v20, "SettingFileName"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 1167
    .local v17, "tagSettingFileName":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getSettingFileName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1168
    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1170
    const-string v20, "AppCategory"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 1171
    .local v8, "tagAppCategory":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getAppCategory()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1172
    invoke-interface {v14, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1175
    instance-of v0, v2, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1176
    const-string v20, "IsAppWidget"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 1177
    .local v13, "tagIsAppWidget":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getAppType()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1178
    const-string v20, "true"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1182
    :goto_1
    invoke-interface {v14, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1193
    .end local v13    # "tagIsAppWidget":Lorg/w3c/dom/Element;
    :cond_1
    :goto_2
    const-string v20, "PreLoad"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    .line 1194
    .local v16, "tagPreload":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getPreloadState()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1195
    const-string v20, "true"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1199
    :goto_3
    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1201
    instance-of v0, v2, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1202
    const-string v20, "Group"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 1203
    .local v11, "tagGroup":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getGroup()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1204
    invoke-interface {v14, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_0

    .line 1180
    .end local v11    # "tagGroup":Lorg/w3c/dom/Element;
    .end local v16    # "tagPreload":Lorg/w3c/dom/Element;
    .restart local v13    # "tagIsAppWidget":Lorg/w3c/dom/Element;
    :cond_2
    const-string v20, "false"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    goto :goto_1

    .line 1183
    .end local v13    # "tagIsAppWidget":Lorg/w3c/dom/Element;
    :cond_3
    instance-of v0, v2, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1184
    const-string v20, "IsShown"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 1185
    .restart local v13    # "tagIsAppWidget":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getShownState()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1186
    const-string v20, "true"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1190
    :goto_4
    invoke-interface {v14, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    .line 1188
    :cond_4
    const-string v20, "false"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    goto :goto_4

    .line 1197
    .end local v13    # "tagIsAppWidget":Lorg/w3c/dom/Element;
    .restart local v16    # "tagPreload":Lorg/w3c/dom/Element;
    :cond_5
    const-string v20, "false"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    goto :goto_3

    .line 1209
    .end local v2    # "bpi":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    .end local v8    # "tagAppCategory":Lorg/w3c/dom/Element;
    .end local v9    # "tagAppName":Lorg/w3c/dom/Element;
    .end local v10    # "tagClassName":Lorg/w3c/dom/Element;
    .end local v12    # "tagImageFileName":Lorg/w3c/dom/Element;
    .end local v14    # "tagItem":Lorg/w3c/dom/Element;
    .end local v15    # "tagPackageName":Lorg/w3c/dom/Element;
    .end local v16    # "tagPreload":Lorg/w3c/dom/Element;
    .end local v17    # "tagSettingFileName":Lorg/w3c/dom/Element;
    :cond_6
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v18

    .line 1210
    .local v18, "tansformer":Ljavax/xml/transform/Transformer;
    new-instance v7, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v7, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1211
    .local v7, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v5, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1212
    .local v5, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1213
    return-void
.end method


# virtual methods
.method public getDeviceType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 1433
    sget-object v1, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    const/4 v0, 0x0

    .line 1436
    .local v0, "deviceType":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1437
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    .line 1441
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1443
    if-nez v0, :cond_1

    const-string v0, ""

    .line 1444
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceType()-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    return-object v0
.end method

.method public getIdleClock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->backupIdleClockPackage:Ljava/lang/String;

    return-object v0
.end method

.method public onForceStop()V
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "onForceStop~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mRestoreProgress:Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mRestoreProgress:Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->onForceStop()V

    .line 123
    :cond_0
    return-void
.end method

.method public onProgressCancel(I)V
    .locals 0
    .param p1, "where"    # I

    .prologue
    .line 1410
    return-void
.end method

.method public onProgressComplete(ILjava/util/ArrayList;)V
    .locals 1
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
    .line 691
    .local p2, "deletePackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hostmanager/br/BackupRestoreListener;->onProgressComplete(ILjava/util/ArrayList;)V

    .line 692
    return-void
.end method

.method public onProgressError(II)V
    .locals 0
    .param p1, "where"    # I
    .param p2, "error"    # I

    .prologue
    .line 1406
    return-void
.end method

.method public onProgressRetry(I)V
    .locals 0
    .param p1, "where"    # I

    .prologue
    .line 1402
    return-void
.end method

.method public onUpdate(Ljava/lang/String;I)V
    .locals 3
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 711
    sget-object v0, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " RestoreManager onProgressUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hostmanager/br/BackupRestoreListener;->onUpdate(Ljava/lang/String;I)V

    .line 713
    return-void
.end method

.method public removeTTSAppDuringRestore()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 919
    sget-object v7, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    const-string v8, "inside removeTTSAppduringRestore()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const-string v2, "ttslist.xml"

    .line 922
    .local v2, "fileName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, "backupFilePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->parseTTSAPPList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 924
    .local v4, "ttsAppList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 926
    .local v5, "ttsAppListForPM":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;>;"
    iget-boolean v7, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mRestoreAfterReset:Z

    if-eqz v7, :cond_2

    .line 927
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;

    .line 928
    .local v6, "ttsinfo":Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->getInstalledState()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->getPreloadState()Z

    move-result v8

    if-nez v8, :cond_0

    .line 929
    sget-object v8, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TTS is installed so puting it into the list packagename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 932
    :cond_0
    sget-object v8, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TTS is not installed so ignoring it packagename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 935
    .end local v6    # "ttsinfo":Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;
    :cond_1
    const/4 v3, 0x0

    .line 937
    .local v3, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 941
    :goto_1
    if-eqz v3, :cond_2

    .line 942
    sget-object v7, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    const-string v8, "going to call packagemanager for removing TTS entry"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-interface {v3, v5}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->removeTTSAppEntry(Ljava/util/List;)V

    .line 946
    .end local v3    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :cond_2
    return-void

    .line 938
    .restart local v3    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :catch_0
    move-exception v1

    .line 939
    .local v1, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_1
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1429
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mHMHandler:Landroid/os/Handler;

    .line 1430
    return-void
.end method

.method public setListenter(Lcom/samsung/android/hostmanager/br/BackupRestoreListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    .line 92
    return-void
.end method

.method public startRestoreTask(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    .line 99
    sget-object v2, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    const-string v3, "startRestoreTask~"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput-boolean v5, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mRestoreAfterReset:Z

    .line 103
    sget-object v2, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    const-string v3, " Check if Gear is in Reset State"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getConnectManager()Lcom/samsung/android/hostmanager/connection/IWSocketManager;

    move-result-object v0

    .line 106
    .local v0, "connectionManager":Lcom/samsung/android/hostmanager/connection/IWSocketManager;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/samsung/android/hostmanager/connection/IWSocketManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v2

    iget-boolean v1, v2, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isInitialedGear:Z

    .line 107
    .local v1, "isInitialedGear":Z
    sget-object v2, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResetStart isInitialedGear:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-eqz v1, :cond_0

    const/16 v2, 0x63

    if-ne p1, v2, :cond_0

    .line 110
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mRestoreAfterReset:Z

    .line 115
    :goto_0
    new-instance v2, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;-><init>(Lcom/samsung/android/hostmanager/br/RestoreManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mRestoreProgress:Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;

    .line 116
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mRestoreProgress:Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;

    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    return-void

    .line 112
    :cond_0
    iput-boolean v5, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mRestoreAfterReset:Z

    goto :goto_0
.end method

.method public totalAppFile(I)I
    .locals 14
    .param p1, "mode"    # I

    .prologue
    .line 171
    const/4 v10, 0x0

    .line 173
    .local v10, "lenghtOfTotalFile":I
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getConnectManager()Lcom/samsung/android/hostmanager/connection/IWSocketManager;

    move-result-object v3

    .line 174
    .local v3, "connectionManager":Lcom/samsung/android/hostmanager/connection/IWSocketManager;
    iget-object v11, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v11, v11, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    invoke-interface {v3, v11}, Lcom/samsung/android/hostmanager/connection/IWSocketManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v11

    iget-boolean v9, v11, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isInitialedGear:Z

    .line 175
    .local v9, "isInitialedGear":Z
    sget-object v11, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "totalAppFile isInitialedGear:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v2, "clockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/br/BPackageInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/br/BPackageInfo;>;"
    const/4 v7, 0x0

    .line 192
    .local v7, "fontAppList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/homestyler/FontsInfo;>;"
    if-eqz v9, :cond_1

    const/16 v11, 0x63

    if-ne p1, v11, :cond_1

    .line 194
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    .line 195
    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "clocklist.xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 194
    invoke-direct {p0, v11, v2}, Lcom/samsung/android/hostmanager/br/RestoreManager;->readClockListXML(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 198
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    .line 199
    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "wapplist.xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 198
    invoke-direct {p0, v11, v0}, Lcom/samsung/android/hostmanager/br/RestoreManager;->readWappListXML(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 202
    const-string v6, "fontlist.xml"

    .line 203
    .local v6, "fileName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "backupFilePath":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->parseFontList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 228
    .end local v1    # "backupFilePath":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_2

    .line 229
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/br/BPackageInfo;

    .line 230
    .local v8, "info":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    invoke-interface {v8}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getPreloadState()Z

    move-result v12

    if-nez v12, :cond_0

    .line 231
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 214
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v8    # "info":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "clocklist.xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, v2}, Lcom/samsung/android/hostmanager/br/RestoreManager;->readClockListXML(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 216
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "wapplist.xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, v0}, Lcom/samsung/android/hostmanager/br/RestoreManager;->readWappListXML(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 218
    const-string v6, "fontlist.xml"

    .line 219
    .restart local v6    # "fileName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "dataFilePath":Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->parseFontList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    goto :goto_0

    .line 235
    .end local v4    # "dataFilePath":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_4

    .line 236
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/br/BPackageInfo;

    .line 237
    .restart local v8    # "info":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    invoke-interface {v8}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getPreloadState()Z

    move-result v12

    if-nez v12, :cond_3

    .line 238
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 242
    .end local v8    # "info":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    :cond_4
    if-eqz v7, :cond_6

    .line 243
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    .line 244
    .local v8, "info":Lcom/samsung/android/hostmanager/homestyler/FontsInfo;
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getPreloadState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-nez v12, :cond_5

    .line 245
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 265
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v8    # "info":Lcom/samsung/android/hostmanager/homestyler/FontsInfo;
    :catch_0
    move-exception v5

    .line 266
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    sget-object v11, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "totalAppFile lenghtOfTotalFile:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return v10
.end method

.method public totalSettingsFile()I
    .locals 14

    .prologue
    .line 126
    sget-object v11, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    const-string v12, "totalSettingsFile()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v3, 0x0

    .line 128
    .local v3, "lenghtOfTotalFile":I
    new-instance v0, Ljava/io/File;

    iget-object v11, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v11, v12}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getIntCardPathForLocalBR(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "backupFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 130
    iget-object v11, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v11, v12}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "filesSrcPath":Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v11, v12}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForPrefTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, "prefsSrcPath":Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v11, v12}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDatabaseTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "databaseSrcPath":Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v11, v12}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForWallpaperBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v10

    .line 134
    .local v10, "wallpaperSrcPath":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 135
    .local v5, "listFiles":[Ljava/io/File;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 136
    .local v6, "listPrefs":[Ljava/io/File;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 138
    .local v4, "listDatabases":[Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v9, "wallPaperDir":Ljava/io/File;
    const/4 v7, 0x0

    .line 141
    .local v7, "listWallpapers":[Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 142
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 145
    :cond_0
    if-eqz v5, :cond_1

    .line 146
    array-length v11, v5

    add-int/lit8 v3, v11, 0x3

    .line 147
    sget-object v11, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " File: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v5

    add-int/lit8 v13, v13, 0x3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    if-eqz v6, :cond_2

    .line 151
    array-length v11, v6

    add-int/2addr v3, v11

    .line 152
    sget-object v11, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " Pref: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_2
    if-eqz v4, :cond_3

    .line 156
    array-length v11, v4

    add-int/2addr v3, v11

    .line 157
    sget-object v11, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " DB: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_3
    if-eqz v7, :cond_4

    .line 161
    array-length v11, v7

    add-int/2addr v3, v11

    .line 162
    sget-object v11, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " WallPaper: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v1    # "databaseSrcPath":Ljava/lang/String;
    .end local v2    # "filesSrcPath":Ljava/lang/String;
    .end local v4    # "listDatabases":[Ljava/io/File;
    .end local v5    # "listFiles":[Ljava/io/File;
    .end local v6    # "listPrefs":[Ljava/io/File;
    .end local v7    # "listWallpapers":[Ljava/io/File;
    .end local v8    # "prefsSrcPath":Ljava/lang/String;
    .end local v9    # "wallPaperDir":Ljava/io/File;
    .end local v10    # "wallpaperSrcPath":Ljava/lang/String;
    :cond_4
    sget-object v11, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "totalSettingsFile()  lenghtOfTotalFile:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v3
.end method

.method public verifyClockAppPreloadState()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 717
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 719
    .local v1, "clockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/br/BPackageInfo;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "clocklist.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/hostmanager/br/RestoreManager;->readClockListXML(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 721
    iget-boolean v3, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mRestoreAfterReset:Z

    if-eqz v3, :cond_3

    .line 722
    sget-object v3, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current size of clockList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/br/BPackageInfo;

    .line 724
    .local v0, "bpi":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    invoke-interface {v0}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getPreloadState()Z

    move-result v4

    if-nez v4, :cond_0

    .line 727
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Downloaded Entry Removed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 728
    invoke-interface {v0}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 727
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 731
    .end local v0    # "bpi":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current size of clockList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .local v2, "clockListDownloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/br/BPackageInfo;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    .line 736
    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "clocklist.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 735
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/hostmanager/br/RestoreManager;->readClockListXML(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 739
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/br/BPackageInfo;

    .line 740
    .restart local v0    # "bpi":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    invoke-interface {v0}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getPreloadState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 742
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preload Clock Entry Not Added to List:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 743
    invoke-interface {v0}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 742
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 745
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 750
    .end local v0    # "bpi":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    .end local v2    # "clockListDownloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/br/BPackageInfo;>;"
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/br/RestoreManager;->updateIdleClockPackage()V

    .line 751
    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/br/RestoreManager;->verifyidleClock(Ljava/util/ArrayList;)V

    .line 752
    const-string v3, "installed_clock_app"

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/hostmanager/br/RestoreManager;->verifyPreloadApp(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 754
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "clocklist.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Clock"

    invoke-direct {p0, v3, v4, v1}, Lcom/samsung/android/hostmanager/br/RestoreManager;->writeListXML(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 755
    return-void
.end method

.method public verifyFontAppPreloadState()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 828
    const-string v4, "fontlist.xml"

    .line 829
    .local v4, "fileName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v11, v12}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 830
    .local v1, "dataFilePath":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v11, v12}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "backupFilePath":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->parseFontList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 833
    .local v5, "fontAppList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/homestyler/FontsInfo;>;"
    const/4 v3, 0x0

    .line 834
    .local v3, "defaultFontName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 838
    .local v8, "isDefaultFontSet":Z
    invoke-static {v0}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->parseFontList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 841
    .local v6, "fontAppListDownloaded":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/homestyler/FontsInfo;>;"
    iget-boolean v10, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mRestoreAfterReset:Z

    if-eqz v10, :cond_3

    .line 842
    sget-object v10, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "verifyFontAppPreloadState fontList size:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    .line 844
    .local v7, "fontinfo":Lcom/samsung/android/hostmanager/homestyler/FontsInfo;
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getPreloadState()Z

    move-result v11

    if-nez v11, :cond_0

    .line 846
    sget-object v11, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "verifyFontAppPreloadState Downloaded Watch App Entry Removed:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 848
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 846
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 852
    .end local v7    # "fontinfo":Lcom/samsung/android/hostmanager/homestyler/FontsInfo;
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    .line 853
    .restart local v7    # "fontinfo":Lcom/samsung/android/hostmanager/homestyler/FontsInfo;
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getPreloadState()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 854
    sget-object v11, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "verifyFontAppPreloadState Preload Watch App Entry Not Added to List:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 856
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 854
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 858
    :cond_2
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 864
    .end local v7    # "fontinfo":Lcom/samsung/android/hostmanager/homestyler/FontsInfo;
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    .line 865
    .restart local v7    # "fontinfo":Lcom/samsung/android/hostmanager/homestyler/FontsInfo;
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getShownState()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 866
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getFamilyName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 870
    .end local v7    # "fontinfo":Lcom/samsung/android/hostmanager/homestyler/FontsInfo;
    :cond_5
    sget-object v10, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "verifyFontAppPreloadState defaultFontName:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    if-eqz v3, :cond_7

    .line 876
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    .line 877
    .restart local v7    # "fontinfo":Lcom/samsung/android/hostmanager/homestyler/FontsInfo;
    sget-object v11, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "verifyFontAppPreloadState fontinfo.getFamilyName():"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 879
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getFamilyName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 877
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getFamilyName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 881
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->setShownState(Z)V

    .line 882
    const/4 v8, 0x1

    goto :goto_3

    .line 885
    :cond_6
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->setShownState(Z)V

    goto :goto_3

    .line 890
    .end local v7    # "fontinfo":Lcom/samsung/android/hostmanager/homestyler/FontsInfo;
    :cond_7
    sget-object v10, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "verifyFontAppPreloadState isDefaultFontSet:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    if-nez v8, :cond_9

    .line 896
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "DeviceInfo"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 897
    .local v9, "sharedPref":Landroid/content/SharedPreferences;
    const-string v10, "DEFAULT_FONT_FAMILYNAME"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 899
    .local v2, "defaultFontFamilyName":Ljava/lang/String;
    sget-object v10, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "verifyFontAppPreloadState defaultFontFamilyName:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    if-eqz v2, :cond_9

    .line 903
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    .line 905
    .restart local v7    # "fontinfo":Lcom/samsung/android/hostmanager/homestyler/FontsInfo;
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getFamilyName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 906
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->setShownState(Z)V

    .line 913
    .end local v2    # "defaultFontFamilyName":Ljava/lang/String;
    .end local v7    # "fontinfo":Lcom/samsung/android/hostmanager/homestyler/FontsInfo;
    .end local v9    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_9
    invoke-static {v5, v1}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->updateFontAppsFile(Ljava/util/List;Ljava/lang/String;)V

    .line 914
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 915
    return-void
.end method

.method public verifyPreloadApp(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 12
    .param p2, "prefName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/br/BPackageInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "packageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/br/BPackageInfo;>;"
    const/4 v7, 0x0

    .line 986
    sget-object v8, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pref_log installApp() check pref "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v8

    const-string v9, "Gear"

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getConnectedDeviceIdByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 988
    .local v3, "deviceId":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    const-string v9, "WearableInfoForSamsungApps"

    const-string v10, "MODELNAME"

    invoke-static {v8, v3, v9, v10}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->getPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 989
    .local v5, "modelName":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 990
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 991
    .local v6, "prefsInstalledClock":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/br/BPackageInfo;

    .line 992
    .local v2, "ci":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, "bPackageName":Ljava/lang/String;
    const-string v9, "empty"

    invoke-interface {v6, v0, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 994
    .local v4, "hPackageName":Ljava/lang/String;
    const-string v9, "empty"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-direct {p0, v4}, Lcom/samsung/android/hostmanager/br/RestoreManager;->isPreloadedApplication(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 995
    .local v1, "bPreload":Z
    :goto_1
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 996
    sget-object v9, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "verifyPreloadApp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_1
    invoke-interface {v2, v1}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->setPreloadState(Z)V

    goto :goto_0

    .end local v1    # "bPreload":Z
    :cond_2
    move v1, v7

    .line 994
    goto :goto_1

    .line 1000
    .end local v0    # "bPackageName":Ljava/lang/String;
    .end local v2    # "ci":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    .end local v4    # "hPackageName":Ljava/lang/String;
    .end local v6    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    :cond_3
    return-void
.end method

.method public verifyTTSAppPreloadState()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 949
    const-string v2, "ttslist.xml"

    .line 950
    .local v2, "fileName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 951
    .local v1, "dataFilePath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, "backupFilePath":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->parseTTSAPPList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 955
    .local v3, "ttsAppList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;>;"
    iget-boolean v6, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mRestoreAfterReset:Z

    if-eqz v6, :cond_3

    .line 956
    sget-object v6, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "verifyTTSAppPreloadState fontList size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;

    .line 958
    .local v5, "ttsinfo":Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->getPreloadState()Z

    move-result v7

    if-nez v7, :cond_0

    .line 960
    sget-object v7, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyTTSAppPreloadState Downloaded Watch App Entry Removed:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 962
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 960
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 968
    .end local v5    # "ttsinfo":Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->parseTTSAPPList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 969
    .local v4, "ttsAppListDownloaded":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;

    .line 971
    .restart local v5    # "ttsinfo":Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->getPreloadState()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 972
    sget-object v7, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyTTSAppPreloadState Preload Watch App Entry Not Added to List:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 974
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 972
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 976
    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 981
    .end local v4    # "ttsAppListDownloaded":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;>;"
    .end local v5    # "ttsinfo":Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;
    :cond_3
    invoke-static {v3, v1}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->updateTTSAppsFile(Ljava/util/List;Ljava/lang/String;)V

    .line 982
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 983
    return-void
.end method

.method public verifyWatchAppPreloadState()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v0, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/br/BPackageInfo;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "wapplist.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/hostmanager/br/RestoreManager;->readWappListXML(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 793
    iget-boolean v3, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mRestoreAfterReset:Z

    if-eqz v3, :cond_3

    .line 794
    sget-object v3, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current size of clockList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/br/BPackageInfo;

    .line 796
    .local v2, "bpi":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getPreloadState()Z

    move-result v4

    if-nez v4, :cond_0

    .line 798
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Downloaded Watch App Entry Removed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 800
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 798
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 803
    .end local v2    # "bpi":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current size of clockList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 806
    .local v1, "appListDownloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/br/BPackageInfo;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    .line 807
    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "wapplist.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 806
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/hostmanager/br/RestoreManager;->readWappListXML(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 810
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/br/BPackageInfo;

    .line 811
    .restart local v2    # "bpi":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getPreloadState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 813
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preload Watch App Entry Not Added to List:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 815
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/br/BPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 813
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 817
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 822
    .end local v1    # "appListDownloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/br/BPackageInfo;>;"
    .end local v2    # "bpi":Lcom/samsung/android/hostmanager/br/BPackageInfo;
    :cond_3
    const-string v3, "installed_wapp_app"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/hostmanager/br/RestoreManager;->verifyPreloadApp(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 823
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/RestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "wapplist.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Wapp"

    invoke-direct {p0, v3, v4, v0}, Lcom/samsung/android/hostmanager/br/RestoreManager;->writeListXML(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 824
    return-void
.end method
