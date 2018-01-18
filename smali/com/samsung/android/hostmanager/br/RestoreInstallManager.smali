.class public Lcom/samsung/android/hostmanager/br/RestoreInstallManager;
.super Ljava/lang/Object;
.source "RestoreInstallManager.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/br/BackupRestoreListener;
.implements Lcom/samsung/android/hostmanager/service/HMSAPProviderService$ClockInstallResultReceiver;
.implements Lcom/samsung/android/hostmanager/service/HMSAPProviderService$WappsInstallResultReceiver;
.implements Lcom/samsung/android/hostmanager/service/HMSAPProviderService$FontInstallResultReceiver;
.implements Lcom/samsung/android/hostmanager/service/HMSAPProviderService$TTSInstallResultReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;,
        Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static mRestoreAfterReset:Z

.field public static mRestoreInstallProgress:Z

.field public static final progress_bar_type:I


# instance fields
.field InfomationNode:Lorg/w3c/dom/NodeList;

.field builder:Ljavax/xml/parsers/DocumentBuilder;

.field count:J

.field isInstallFinish:Z

.field lenghtOfTotalFile:I

.field private mContext:Landroid/content/Context;

.field private mCurBInstallingPackageName:Ljava/lang/String;

.field private mCurClockPackageName:Ljava/lang/String;

.field private mCurInstallingPackageName:Ljava/lang/String;

.field private mDeletedPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHMHandler:Landroid/os/Handler;

.field private mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

.field private mInstalledBPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

.field private mPackageNameInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoreProgress:Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;

.field private reInstallList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/br/ReinstallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private restoreClockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;",
            ">;"
        }
    .end annotation
.end field

.field private restoreWAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/br/WatchAppsInfo;",
            ">;"
        }
    .end annotation
.end field

.field root:Lorg/w3c/dom/Document;

.field xmlData:Ljava/io/InputStream;

.field xmlpath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    const-class v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    .line 74
    sput-boolean v1, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreAfterReset:Z

    .line 75
    sput-boolean v1, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreInstallProgress:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bnrManager"    # Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mInstalledBPackageList:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mPackageNameInfo:Ljava/util/ArrayList;

    .line 88
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->count:J

    .line 89
    iput v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->lenghtOfTotalFile:I

    .line 90
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->isInstallFinish:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mDeletedPackageList:Ljava/util/ArrayList;

    .line 98
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    .line 100
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreInstallManager;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mInstalledBPackageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreProgress:Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mHMHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreInstallManager;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mHMHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mDeletedPackageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mPackageNameInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->reInstallList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->reInstallCount()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->updateFontAppList()V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mCurInstallingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreInstallManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mCurInstallingPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mCurBInstallingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreInstallManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mCurBInstallingPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/RestoreInstallManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->addBPackageList(Ljava/lang/String;)V

    return-void
.end method

.method private addBPackageList(Ljava/lang/String;)V
    .locals 2
    .param p1, "hPackageName"    # Ljava/lang/String;

    .prologue
    .line 1038
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->getBPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1039
    .local v0, "bPkgName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1040
    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mInstalledBPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    :cond_0
    return-void
.end method

.method private getBPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "hPackageName"    # Ljava/lang/String;

    .prologue
    .line 1045
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mPackageNameInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1046
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1047
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mPackageNameInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;->getHPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1048
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mPackageNameInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;->getBPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1052
    :goto_1
    return-object v2

    .line 1046
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1052
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isInstalledApplication(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 632
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 636
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 640
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isWgtFileExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "bPackageName"    # Ljava/lang/String;
    .param p2, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 1173
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

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

    .line 1174
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

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

    .line 1175
    if-eqz p2, :cond_2

    .line 1177
    const/4 v1, 0x0

    .line 1179
    .local v1, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v5, v5, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1184
    :goto_0
    const/4 v3, 0x0

    .line 1185
    .local v3, "wgtpath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1186
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->getWgtFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1188
    :cond_0
    const/4 v2, 0x0

    .line 1189
    .local v2, "wgtfile":Ljava/io/File;
    if-eqz v3, :cond_1

    .line 1190
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWgtFileExists wgtpath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    new-instance v2, Ljava/io/File;

    .end local v2    # "wgtfile":Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1196
    .restart local v2    # "wgtfile":Ljava/io/File;
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1197
    const/4 v4, 0x1

    .line 1200
    .end local v1    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    .end local v2    # "wgtfile":Ljava/io/File;
    .end local v3    # "wgtpath":Ljava/lang/String;
    :goto_2
    return v4

    .line 1181
    .restart local v1    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :catch_0
    move-exception v0

    .line 1182
    .local v0, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 1194
    .end local v0    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    .restart local v2    # "wgtfile":Ljava/io/File;
    .restart local v3    # "wgtpath":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v5, "isWgtFileExists wgtpath null!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1200
    .end local v1    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    .end local v2    # "wgtfile":Ljava/io/File;
    .end local v3    # "wgtpath":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private notifyAsyncTask()V
    .locals 2

    .prologue
    .line 663
    sget-object v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v1, "notifyAsyncTask()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreProgress:Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;

    monitor-enter v1

    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreProgress:Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 667
    monitor-exit v1

    .line 668
    return-void

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reInstallCount()V
    .locals 49

    .prologue
    .line 338
    :try_start_0
    const-string v15, "clocklist.xml"

    .line 340
    .local v15, "fileName":Ljava/lang/String;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v48, v0

    invoke-static/range {v47 .. v48}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sget-object v47, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 341
    .local v16, "filePath":Ljava/lang/String;
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreClockList:Ljava/util/ArrayList;

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->reInstallList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    if-nez v46, :cond_0

    .line 344
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->reInstallList:Ljava/util/ArrayList;

    .line 345
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreClockList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->readClockListXML(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 348
    .local v9, "deviceType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getGearModelName(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v30

    .line 350
    .local v30, "modelName":Ljava/lang/String;
    const/16 v34, 0x0

    .line 352
    .local v34, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_start_1
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_end_1
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v34

    .line 358
    :goto_0
    :try_start_2
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mDeletedPackageList:Ljava/util/ArrayList;

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreClockList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v37

    .line 361
    .local v37, "restoreClockList_count":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v37

    if-ge v0, v1, :cond_10

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreClockList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->getPreloadState()Z

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_d

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "_"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "installed_clock_app"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x0

    invoke-virtual/range {v46 .. v48}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    .line 364
    .local v35, "prefsInstalledClock":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreClockList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 365
    .local v4, "bPackageName":Ljava/lang/String;
    const-string v46, "empty"

    move-object/from16 v0, v35

    move-object/from16 v1, v46

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 366
    .local v17, "hPackageName":Ljava/lang/String;
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "pref_log reInstallCount() check pref installed_clock_app "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->isWgtFileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    .line 370
    .local v23, "isWgtFileExists":Z
    const/16 v24, 0x0

    .line 371
    .local v24, "isWgtOnlyApp":Z
    if-eqz v34, :cond_1

    .line 372
    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->isWgtOnlyApp(Ljava/lang/String;)Z

    move-result v24

    .line 374
    :cond_1
    const/16 v25, 0x0

    .line 375
    .local v25, "isWgtOnlyAppInstalled":Z
    if-eqz v34, :cond_2

    .line 376
    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->isWgtOnlyAppInstalled(Ljava/lang/String;)Z

    move-result v25

    .line 379
    :cond_2
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "reInstallCount() isWgtOnlyApp: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ", isWgtOnlyAppInstalled: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ", isWgtFileExists: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->isInstalledApplication(Ljava/lang/String;)Z

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_3

    if-eqz v24, :cond_6

    if-eqz v25, :cond_6

    if-eqz v23, :cond_6

    .line 385
    :cond_3
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v47, "reInstallCount() downloaded_App_onGear size = 0 or initialed Gear, new clock need to install on Gear"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v29, Lcom/samsung/android/hostmanager/br/ReinstallInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreClockList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->getName()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/hostmanager/br/ReinstallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .local v29, "mReinstallInfo":Lcom/samsung/android/hostmanager/br/ReinstallInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->reInstallList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .end local v23    # "isWgtFileExists":Z
    .end local v24    # "isWgtOnlyApp":Z
    .end local v25    # "isWgtOnlyAppInstalled":Z
    .end local v29    # "mReinstallInfo":Lcom/samsung/android/hostmanager/br/ReinstallInfo;
    :cond_4
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 354
    .end local v4    # "bPackageName":Ljava/lang/String;
    .end local v17    # "hPackageName":Ljava/lang/String;
    .end local v18    # "i":I
    .end local v35    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    .end local v37    # "restoreClockList_count":I
    :catch_0
    move-exception v13

    .line 355
    .local v13, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v13}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 624
    .end local v9    # "deviceType":Ljava/lang/String;
    .end local v13    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v16    # "filePath":Ljava/lang/String;
    .end local v30    # "modelName":Ljava/lang/String;
    .end local v34    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :catch_1
    move-exception v13

    .line 626
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 628
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_5
    return-void

    .line 390
    .restart local v4    # "bPackageName":Ljava/lang/String;
    .restart local v9    # "deviceType":Ljava/lang/String;
    .restart local v15    # "fileName":Ljava/lang/String;
    .restart local v16    # "filePath":Ljava/lang/String;
    .restart local v17    # "hPackageName":Ljava/lang/String;
    .restart local v18    # "i":I
    .restart local v23    # "isWgtFileExists":Z
    .restart local v24    # "isWgtOnlyApp":Z
    .restart local v25    # "isWgtOnlyAppInstalled":Z
    .restart local v30    # "modelName":Ljava/lang/String;
    .restart local v34    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    .restart local v35    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    .restart local v37    # "restoreClockList_count":I
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreClockList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 391
    .local v8, "deletePackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreClockList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->getName()Ljava/lang/String;

    move-result-object v7

    .line 392
    .local v7, "deleteAppName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreClockList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 394
    add-int/lit8 v18, v18, -0x1

    add-int/lit8 v37, v37, -0x1

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mDeletedPackageList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "mDeletedPackageList size "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mDeletedPackageList:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 399
    const/16 v44, 0x0

    .line 401
    .local v44, "xmlData":Ljava/io/InputStream;
    :try_start_4
    new-instance v45, Ljava/io/BufferedInputStream;

    new-instance v46, Ljava/io/FileInputStream;

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v45 .. v46}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 403
    .end local v44    # "xmlData":Ljava/io/InputStream;
    .local v45, "xmlData":Ljava/io/InputStream;
    :try_start_5
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v12

    .line 404
    .local v12, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v11

    .line 405
    .local v11, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v45

    invoke-virtual {v11, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v10

    .line 406
    .local v10, "doc":Lorg/w3c/dom/Document;
    const-string v46, "item"

    move-object/from16 v0, v46

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v31

    .line 408
    .local v31, "nodelist":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    .line 409
    .local v32, "nodelist_count":I
    const/16 v27, 0x0

    .local v27, "j":I
    :goto_3
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_8

    .line 410
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    check-cast v26, Lorg/w3c/dom/Element;

    .line 411
    .local v26, "item":Lorg/w3c/dom/Element;
    const-string v46, "PackageName"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v46

    const/16 v47, 0x0

    invoke-interface/range {v46 .. v47}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v46

    check-cast v46, Lorg/w3c/dom/Element;

    invoke-interface/range {v46 .. v46}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v33

    .line 412
    .local v33, "packageName":Ljava/lang/String;
    const-string v46, "IsShown"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v46

    const/16 v47, 0x0

    invoke-interface/range {v46 .. v47}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v46

    check-cast v46, Lorg/w3c/dom/Element;

    invoke-interface/range {v46 .. v46}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v21

    .line 413
    .local v21, "isShown":Ljava/lang/String;
    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_b

    .line 414
    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 415
    .local v14, "edInstalledClock":Landroid/content/SharedPreferences$Editor;
    const-string v46, "empty"

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_7

    .line 416
    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 417
    invoke-interface {v14, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 418
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 419
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v47, "pref_log reInstallCount() edit pref installed_clock_app"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_7
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 424
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->removeWGTApp(Ljava/lang/String;)V

    .line 426
    const-string v46, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_8

    .line 428
    const/16 v28, 0x0

    .local v28, "k":I
    :goto_4
    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_8

    .line 429
    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 430
    .local v3, "Tempitem":Lorg/w3c/dom/Element;
    const-string v46, "PackageName"

    move-object/from16 v0, v46

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v46

    const/16 v47, 0x0

    invoke-interface/range {v46 .. v47}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v46

    check-cast v46, Lorg/w3c/dom/Element;

    invoke-interface/range {v46 .. v46}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 432
    .local v5, "clockPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    const-string v47, "DeviceInfo"

    const/16 v48, 0x0

    invoke-virtual/range {v46 .. v48}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v40

    .line 433
    .local v40, "sharedPref":Landroid/content/SharedPreferences;
    const-string v46, "DEFAULT_CLOCK_PKGNAME"

    const/16 v47, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 434
    .local v6, "defaultClockPkgName":Ljava/lang/String;
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "defaultclockPackage :: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_a

    .line 437
    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    .line 438
    .local v19, "idleClock":Lorg/w3c/dom/Element;
    const-string v46, "IsShown"

    move-object/from16 v0, v19

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v46

    const/16 v47, 0x0

    invoke-interface/range {v46 .. v47}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v46

    check-cast v46, Lorg/w3c/dom/Element;

    const-string v47, "true"

    invoke-interface/range {v46 .. v47}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 439
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mCurClockPackageName:Ljava/lang/String;
    :try_end_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 448
    .end local v3    # "Tempitem":Lorg/w3c/dom/Element;
    .end local v5    # "clockPackageName":Ljava/lang/String;
    .end local v6    # "defaultClockPkgName":Ljava/lang/String;
    .end local v14    # "edInstalledClock":Landroid/content/SharedPreferences$Editor;
    .end local v19    # "idleClock":Lorg/w3c/dom/Element;
    .end local v21    # "isShown":Ljava/lang/String;
    .end local v26    # "item":Lorg/w3c/dom/Element;
    .end local v28    # "k":I
    .end local v33    # "packageName":Ljava/lang/String;
    .end local v40    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_8
    if-eqz v45, :cond_9

    .line 450
    :try_start_6
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v42

    .line 451
    .local v42, "tf":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v42 .. v42}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v43

    .line 452
    .local v43, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v41, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v41

    invoke-direct {v0, v10}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 453
    .local v41, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v39, Ljavax/xml/transform/stream/StreamResult;

    new-instance v46, Ljava/io/File;

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 454
    .local v39, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v43

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 456
    if-eqz v45, :cond_9

    .line 457
    invoke-virtual/range {v45 .. v45}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 472
    .end local v39    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v41    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v42    # "tf":Ljavax/xml/transform/TransformerFactory;
    .end local v43    # "transformer":Ljavax/xml/transform/Transformer;
    :cond_9
    :goto_5
    if-eqz v45, :cond_4

    .line 473
    :try_start_7
    invoke-virtual/range {v45 .. v45}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 428
    .restart local v3    # "Tempitem":Lorg/w3c/dom/Element;
    .restart local v5    # "clockPackageName":Ljava/lang/String;
    .restart local v6    # "defaultClockPkgName":Ljava/lang/String;
    .restart local v14    # "edInstalledClock":Landroid/content/SharedPreferences$Editor;
    .restart local v21    # "isShown":Ljava/lang/String;
    .restart local v26    # "item":Lorg/w3c/dom/Element;
    .restart local v28    # "k":I
    .restart local v33    # "packageName":Ljava/lang/String;
    .restart local v40    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_a
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_4

    .line 409
    .end local v3    # "Tempitem":Lorg/w3c/dom/Element;
    .end local v5    # "clockPackageName":Ljava/lang/String;
    .end local v6    # "defaultClockPkgName":Ljava/lang/String;
    .end local v14    # "edInstalledClock":Landroid/content/SharedPreferences$Editor;
    .end local v28    # "k":I
    .end local v40    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_b
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_3

    .line 459
    .end local v21    # "isShown":Ljava/lang/String;
    .end local v26    # "item":Lorg/w3c/dom/Element;
    .end local v33    # "packageName":Ljava/lang/String;
    :catch_2
    move-exception v13

    .line 460
    .local v13, "e":Ljava/lang/RuntimeException;
    :try_start_8
    invoke-virtual {v13}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    .line 465
    .end local v10    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v13    # "e":Ljava/lang/RuntimeException;
    .end local v27    # "j":I
    .end local v31    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v32    # "nodelist_count":I
    :catch_3
    move-exception v13

    move-object/from16 v44, v45

    .line 466
    .end local v45    # "xmlData":Ljava/io/InputStream;
    .local v13, "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v44    # "xmlData":Ljava/io/InputStream;
    :goto_6
    :try_start_9
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "ParserConfigurationException e = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {v13}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 472
    if-eqz v44, :cond_4

    .line 473
    :try_start_a
    invoke-virtual/range {v44 .. v44}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_2

    .line 461
    .end local v13    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v44    # "xmlData":Ljava/io/InputStream;
    .restart local v10    # "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v12    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v27    # "j":I
    .restart local v31    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v32    # "nodelist_count":I
    .restart local v45    # "xmlData":Ljava/io/InputStream;
    :catch_4
    move-exception v13

    .line 462
    .local v13, "e":Ljava/lang/Exception;
    :try_start_b
    const-string v46, "Settings"

    const-string v47, "XML file Close FAIL!!!"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_5

    .line 468
    .end local v10    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v27    # "j":I
    .end local v31    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v32    # "nodelist_count":I
    :catch_5
    move-exception v13

    move-object/from16 v44, v45

    .line 469
    .end local v45    # "xmlData":Ljava/io/InputStream;
    .restart local v13    # "e":Ljava/lang/Exception;
    .restart local v44    # "xmlData":Ljava/io/InputStream;
    :goto_7
    :try_start_c
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Exception e = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 472
    if-eqz v44, :cond_4

    .line 473
    :try_start_d
    invoke-virtual/range {v44 .. v44}, Ljava/io/InputStream;->close()V

    goto/16 :goto_2

    .line 472
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v46

    :goto_8
    if-eqz v44, :cond_c

    .line 473
    invoke-virtual/range {v44 .. v44}, Ljava/io/InputStream;->close()V

    :cond_c
    throw v46

    .line 478
    .end local v4    # "bPackageName":Ljava/lang/String;
    .end local v7    # "deleteAppName":Ljava/lang/String;
    .end local v8    # "deletePackageName":Ljava/lang/String;
    .end local v17    # "hPackageName":Ljava/lang/String;
    .end local v23    # "isWgtFileExists":Z
    .end local v24    # "isWgtOnlyApp":Z
    .end local v25    # "isWgtOnlyAppInstalled":Z
    .end local v35    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    .end local v44    # "xmlData":Ljava/io/InputStream;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreClockList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 479
    .restart local v4    # "bPackageName":Ljava/lang/String;
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "clk:reInstallCount check for preloaded updated case!!! bPackageName = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "_"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "installed_clock_app"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x0

    invoke-virtual/range {v46 .. v48}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    .line 482
    .restart local v35    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    const-string v46, "empty"

    move-object/from16 v0, v35

    move-object/from16 v1, v46

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 483
    .restart local v17    # "hPackageName":Ljava/lang/String;
    const/16 v20, 0x0

    .line 484
    .local v20, "isClkwgtappinstalled":Z
    if-nez v34, :cond_e

    .line 485
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v47, "Restore ClockList getPreloadState() != true pm object is null"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :goto_9
    const-string v46, "empty"

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_f

    if-eqz v20, :cond_f

    .line 490
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "clk:reInstallCount bPackageName = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " is preloaded but updated"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v29, Lcom/samsung/android/hostmanager/br/ReinstallInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreClockList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->getName()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/hostmanager/br/ReinstallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .restart local v29    # "mReinstallInfo":Lcom/samsung/android/hostmanager/br/ReinstallInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->reInstallList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 487
    .end local v29    # "mReinstallInfo":Lcom/samsung/android/hostmanager/br/ReinstallInfo;
    :cond_e
    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v4}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->isEligibleForRestore(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    goto :goto_9

    .line 494
    :cond_f
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "clk:reInstallCount bPackageName = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " is preloaded but not updated"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 500
    .end local v4    # "bPackageName":Ljava/lang/String;
    .end local v17    # "hPackageName":Ljava/lang/String;
    .end local v20    # "isClkwgtappinstalled":Z
    .end local v35    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    :cond_10
    const-string v15, "wapplist.xml"

    .line 501
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v48, v0

    invoke-static/range {v47 .. v48}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sget-object v47, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 502
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreWAppList:Ljava/util/ArrayList;

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreWAppList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->readWappListXML(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreWAppList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v38

    .line 506
    .local v38, "restoreWAppList_count":I
    const/16 v27, 0x0

    .restart local v27    # "j":I
    :goto_a
    move/from16 v0, v27

    move/from16 v1, v38

    if-ge v0, v1, :cond_5

    .line 507
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "restoreWAppList_count ="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreWAppList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->getPreloadState()Z

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_1b

    .line 509
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v47, "reInstallCount() not preload app"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "_"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "installed_wapp_app"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x0

    invoke-virtual/range {v46 .. v48}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v36

    .line 511
    .local v36, "prefsInstalledWapp":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreWAppList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 512
    .restart local v4    # "bPackageName":Ljava/lang/String;
    const-string v46, "empty"

    move-object/from16 v0, v36

    move-object/from16 v1, v46

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 513
    .restart local v17    # "hPackageName":Ljava/lang/String;
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "pref_log reInstallCount() check pref installed_wapp_app "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->isWgtFileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    .line 517
    .restart local v23    # "isWgtFileExists":Z
    const/16 v24, 0x0

    .line 518
    .restart local v24    # "isWgtOnlyApp":Z
    if-eqz v34, :cond_11

    .line 519
    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->isWgtOnlyApp(Ljava/lang/String;)Z

    move-result v24

    .line 521
    :cond_11
    const/16 v25, 0x0

    .line 522
    .restart local v25    # "isWgtOnlyAppInstalled":Z
    if-eqz v34, :cond_12

    .line 523
    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->isWgtOnlyAppInstalled(Ljava/lang/String;)Z

    move-result v25

    .line 526
    :cond_12
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "reInstallCount() isWgtOnlyApp: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ", isWgtOnlyAppInstalled: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ", isWgtFileExists: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->isInstalledApplication(Ljava/lang/String;)Z

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_13

    if-eqz v24, :cond_15

    if-eqz v25, :cond_15

    if-eqz v23, :cond_15

    .line 530
    :cond_13
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v47, "reInstallCount() downloaded_App_onGear size = 0 or initialed Gear, new wapp need to install on Gear"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance v29, Lcom/samsung/android/hostmanager/br/ReinstallInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreWAppList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->getName()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/hostmanager/br/ReinstallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .restart local v29    # "mReinstallInfo":Lcom/samsung/android/hostmanager/br/ReinstallInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->reInstallList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    .end local v23    # "isWgtFileExists":Z
    .end local v24    # "isWgtOnlyApp":Z
    .end local v25    # "isWgtOnlyAppInstalled":Z
    .end local v29    # "mReinstallInfo":Lcom/samsung/android/hostmanager/br/ReinstallInfo;
    :cond_14
    :goto_b
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_a

    .line 535
    .restart local v23    # "isWgtFileExists":Z
    .restart local v24    # "isWgtOnlyApp":Z
    .restart local v25    # "isWgtOnlyAppInstalled":Z
    :cond_15
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v47, "reInstallCount() provider app absent"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 536
    const/16 v44, 0x0

    .line 539
    .restart local v44    # "xmlData":Ljava/io/InputStream;
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreWAppList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 540
    .restart local v8    # "deletePackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreWAppList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->getName()Ljava/lang/String;

    move-result-object v7

    .line 541
    .restart local v7    # "deleteAppName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreWAppList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 543
    add-int/lit8 v27, v27, -0x1

    add-int/lit8 v38, v38, -0x1

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mDeletedPackageList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "mDeletedPackageList size "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mDeletedPackageList:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance v45, Ljava/io/BufferedInputStream;

    new-instance v46, Ljava/io/FileInputStream;

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v45 .. v46}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 552
    .end local v44    # "xmlData":Ljava/io/InputStream;
    .restart local v45    # "xmlData":Ljava/io/InputStream;
    :try_start_f
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v12

    .line 553
    .restart local v12    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v11

    .line 554
    .restart local v11    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v45

    invoke-virtual {v11, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v10

    .line 555
    .restart local v10    # "doc":Lorg/w3c/dom/Document;
    const-string v46, "item"

    move-object/from16 v0, v46

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v31

    .line 557
    .restart local v31    # "nodelist":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    .line 558
    .restart local v32    # "nodelist_count":I
    const/16 v18, 0x0

    :goto_c
    move/from16 v0, v18

    move/from16 v1, v32

    if-ge v0, v1, :cond_18

    .line 559
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    check-cast v26, Lorg/w3c/dom/Element;

    .line 560
    .restart local v26    # "item":Lorg/w3c/dom/Element;
    const-string v46, "PackageName"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v46

    const/16 v47, 0x0

    invoke-interface/range {v46 .. v47}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v46

    check-cast v46, Lorg/w3c/dom/Element;

    invoke-interface/range {v46 .. v46}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v33

    .line 561
    .restart local v33    # "packageName":Ljava/lang/String;
    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_17

    .line 562
    invoke-interface/range {v36 .. v36}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 563
    .restart local v14    # "edInstalledClock":Landroid/content/SharedPreferences$Editor;
    const-string v46, "empty"

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_16

    .line 564
    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 566
    invoke-interface {v14, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 567
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 568
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v47, "pref_log reInstallCount() edit pref installed_wapp_app"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_16
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 572
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->removeWGTApp(Ljava/lang/String;)V
    :try_end_f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 558
    .end local v14    # "edInstalledClock":Landroid/content/SharedPreferences$Editor;
    :cond_17
    add-int/lit8 v18, v18, 0x1

    goto :goto_c

    .line 576
    .end local v26    # "item":Lorg/w3c/dom/Element;
    .end local v33    # "packageName":Ljava/lang/String;
    :cond_18
    if-eqz v45, :cond_19

    .line 578
    :try_start_10
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v42

    .line 579
    .restart local v42    # "tf":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v42 .. v42}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v43

    .line 580
    .restart local v43    # "transformer":Ljavax/xml/transform/Transformer;
    new-instance v41, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v41

    invoke-direct {v0, v10}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 581
    .restart local v41    # "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v39, Ljavax/xml/transform/stream/StreamResult;

    new-instance v46, Ljava/io/File;

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 582
    .restart local v39    # "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v43

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 584
    invoke-virtual/range {v45 .. v45}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 598
    .end local v39    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v41    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v42    # "tf":Ljavax/xml/transform/TransformerFactory;
    .end local v43    # "transformer":Ljavax/xml/transform/Transformer;
    :cond_19
    :goto_d
    if-eqz v45, :cond_14

    .line 599
    :try_start_11
    invoke-virtual/range {v45 .. v45}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    goto/16 :goto_b

    .line 585
    :catch_6
    move-exception v13

    .line 586
    .local v13, "e":Ljava/lang/RuntimeException;
    :try_start_12
    invoke-virtual {v13}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_12
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_d

    .line 591
    .end local v10    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v13    # "e":Ljava/lang/RuntimeException;
    .end local v31    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v32    # "nodelist_count":I
    :catch_7
    move-exception v13

    move-object/from16 v44, v45

    .line 592
    .end local v7    # "deleteAppName":Ljava/lang/String;
    .end local v8    # "deletePackageName":Ljava/lang/String;
    .end local v45    # "xmlData":Ljava/io/InputStream;
    .local v13, "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v44    # "xmlData":Ljava/io/InputStream;
    :goto_e
    :try_start_13
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "ParserConfigurationException e = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {v13}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 598
    if-eqz v44, :cond_14

    .line 599
    :try_start_14
    invoke-virtual/range {v44 .. v44}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    goto/16 :goto_b

    .line 587
    .end local v13    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v44    # "xmlData":Ljava/io/InputStream;
    .restart local v7    # "deleteAppName":Ljava/lang/String;
    .restart local v8    # "deletePackageName":Ljava/lang/String;
    .restart local v10    # "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v12    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v31    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v32    # "nodelist_count":I
    .restart local v45    # "xmlData":Ljava/io/InputStream;
    :catch_8
    move-exception v13

    .line 588
    .local v13, "e":Ljava/lang/Exception;
    :try_start_15
    const-string v46, "Settings"

    const-string v47, "XML file Close FAIL!!!"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto :goto_d

    .line 594
    .end local v10    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v31    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v32    # "nodelist_count":I
    :catch_9
    move-exception v13

    move-object/from16 v44, v45

    .line 595
    .end local v7    # "deleteAppName":Ljava/lang/String;
    .end local v8    # "deletePackageName":Ljava/lang/String;
    .end local v45    # "xmlData":Ljava/io/InputStream;
    .restart local v13    # "e":Ljava/lang/Exception;
    .restart local v44    # "xmlData":Ljava/io/InputStream;
    :goto_f
    :try_start_16
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Exception e = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 598
    if-eqz v44, :cond_14

    .line 599
    :try_start_17
    invoke-virtual/range {v44 .. v44}, Ljava/io/InputStream;->close()V

    goto/16 :goto_b

    .line 598
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v46

    :goto_10
    if-eqz v44, :cond_1a

    .line 599
    invoke-virtual/range {v44 .. v44}, Ljava/io/InputStream;->close()V

    :cond_1a
    throw v46

    .line 604
    .end local v4    # "bPackageName":Ljava/lang/String;
    .end local v17    # "hPackageName":Ljava/lang/String;
    .end local v23    # "isWgtFileExists":Z
    .end local v24    # "isWgtOnlyApp":Z
    .end local v25    # "isWgtOnlyAppInstalled":Z
    .end local v36    # "prefsInstalledWapp":Landroid/content/SharedPreferences;
    .end local v44    # "xmlData":Ljava/io/InputStream;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreWAppList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 605
    .restart local v4    # "bPackageName":Ljava/lang/String;
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "wapp:reInstallCount check for preloaded updated case!!! bPackageName = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "_"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "installed_wapp_app"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x0

    invoke-virtual/range {v46 .. v48}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v36

    .line 608
    .restart local v36    # "prefsInstalledWapp":Landroid/content/SharedPreferences;
    const-string v46, "empty"

    move-object/from16 v0, v36

    move-object/from16 v1, v46

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 609
    .restart local v17    # "hPackageName":Ljava/lang/String;
    const/16 v22, 0x0

    .line 610
    .local v22, "isWappWgtappinstalled":Z
    if-nez v34, :cond_1c

    .line 611
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v47, "WappList getPreloadState() != true else part pm object is null"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :goto_11
    const-string v46, "empty"

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_1d

    if-eqz v22, :cond_1d

    .line 616
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "wapp:reInstallCount bPackageName = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " is preloaded but updated"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance v29, Lcom/samsung/android/hostmanager/br/ReinstallInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->restoreWAppList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->getName()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/hostmanager/br/ReinstallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    .restart local v29    # "mReinstallInfo":Lcom/samsung/android/hostmanager/br/ReinstallInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->reInstallList:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 613
    .end local v29    # "mReinstallInfo":Lcom/samsung/android/hostmanager/br/ReinstallInfo;
    :cond_1c
    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v4}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->isEligibleForRestore(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    goto :goto_11

    .line 620
    :cond_1d
    sget-object v46, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "wapp:reInstallCount bPackageName = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " is preloaded but not updated"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1

    goto/16 :goto_b

    .line 598
    .end local v22    # "isWappWgtappinstalled":Z
    .restart local v7    # "deleteAppName":Ljava/lang/String;
    .restart local v8    # "deletePackageName":Ljava/lang/String;
    .restart local v23    # "isWgtFileExists":Z
    .restart local v24    # "isWgtOnlyApp":Z
    .restart local v25    # "isWgtOnlyAppInstalled":Z
    .restart local v45    # "xmlData":Ljava/io/InputStream;
    :catchall_2
    move-exception v46

    move-object/from16 v44, v45

    .end local v45    # "xmlData":Ljava/io/InputStream;
    .restart local v44    # "xmlData":Ljava/io/InputStream;
    goto/16 :goto_10

    .line 594
    .end local v7    # "deleteAppName":Ljava/lang/String;
    .end local v8    # "deletePackageName":Ljava/lang/String;
    :catch_a
    move-exception v13

    goto/16 :goto_f

    .line 591
    :catch_b
    move-exception v13

    goto/16 :goto_e

    .line 472
    .end local v27    # "j":I
    .end local v36    # "prefsInstalledWapp":Landroid/content/SharedPreferences;
    .end local v38    # "restoreWAppList_count":I
    .end local v44    # "xmlData":Ljava/io/InputStream;
    .restart local v7    # "deleteAppName":Ljava/lang/String;
    .restart local v8    # "deletePackageName":Ljava/lang/String;
    .restart local v35    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    .restart local v45    # "xmlData":Ljava/io/InputStream;
    :catchall_3
    move-exception v46

    move-object/from16 v44, v45

    .end local v45    # "xmlData":Ljava/io/InputStream;
    .restart local v44    # "xmlData":Ljava/io/InputStream;
    goto/16 :goto_8

    .line 468
    :catch_c
    move-exception v13

    goto/16 :goto_7

    .line 465
    :catch_d
    move-exception v13

    goto/16 :goto_6
.end method

.method private reMakeClockXML(Ljava/lang/String;)V
    .locals 31
    .param p1, "hPackageName"    # Ljava/lang/String;

    .prologue
    .line 790
    sget-object v28, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "reMakeClockXML hPackageName = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const-string v10, "clocklist.xml"

    .line 794
    .local v10, "fileName":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 795
    .local v11, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getGearModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 796
    .local v16, "modelName":Ljava/lang/String;
    const/16 v26, 0x0

    .line 798
    .local v26, "xmlData":Ljava/io/InputStream;
    :try_start_0
    new-instance v27, Ljava/io/BufferedInputStream;

    new-instance v28, Ljava/io/FileInputStream;

    move-object/from16 v0, v28

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v27 .. v28}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    .end local v26    # "xmlData":Ljava/io/InputStream;
    .local v27, "xmlData":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 801
    .local v7, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 802
    .local v6, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 803
    .local v5, "doc":Lorg/w3c/dom/Document;
    const-string v28, "item"

    move-object/from16 v0, v28

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 805
    .local v17, "nodelist":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    .line 806
    .local v18, "nodelist_count":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_0
    move/from16 v0, v18

    if-ge v14, v0, :cond_3

    .line 807
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    .line 808
    .local v13, "item":Lorg/w3c/dom/Element;
    const-string v28, "PackageName"

    move-object/from16 v0, v28

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    check-cast v28, Lorg/w3c/dom/Element;

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v19

    .line 809
    .local v19, "packageName":Ljava/lang/String;
    const-string v28, "IsShown"

    move-object/from16 v0, v28

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    check-cast v28, Lorg/w3c/dom/Element;

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v12

    .line 810
    .local v12, "isShown":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "installed_clock_app"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 812
    .local v20, "prefsInstalledClock":Landroid/content/SharedPreferences;
    const-string v28, "empty"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 813
    .local v3, "bPackageName":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 814
    .local v9, "edInstalledClock":Landroid/content/SharedPreferences$Editor;
    const-string v28, "empty"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 815
    move-object/from16 v0, p1

    invoke-interface {v9, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 816
    invoke-interface {v9, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 817
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 818
    sget-object v28, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "pref_log reMakeClockXML() edit pref installed_clock_app bPackageName = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_0
    invoke-interface {v13}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 823
    const-string v28, "true"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 825
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_1

    .line 826
    const-string v28, "PackageName"

    move-object/from16 v0, v28

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    check-cast v28, Lorg/w3c/dom/Element;

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 827
    .local v4, "clockPackageName":Ljava/lang/String;
    const-string v28, "com.sec.android.widgetapp.watch.weatherclock"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 828
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    check-cast v25, Lorg/w3c/dom/Element;

    .line 829
    .local v25, "weatherClock":Lorg/w3c/dom/Element;
    const-string v28, "IsShown"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    check-cast v28, Lorg/w3c/dom/Element;

    const-string v29, "true"

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 830
    const-string v28, "com.sec.android.widgetapp.watch.weatherclock"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mCurClockPackageName:Ljava/lang/String;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 806
    .end local v3    # "bPackageName":Ljava/lang/String;
    .end local v4    # "clockPackageName":Ljava/lang/String;
    .end local v9    # "edInstalledClock":Landroid/content/SharedPreferences$Editor;
    .end local v15    # "k":I
    .end local v20    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    .end local v25    # "weatherClock":Lorg/w3c/dom/Element;
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 825
    .restart local v3    # "bPackageName":Ljava/lang/String;
    .restart local v4    # "clockPackageName":Ljava/lang/String;
    .restart local v9    # "edInstalledClock":Landroid/content/SharedPreferences$Editor;
    .restart local v15    # "k":I
    .restart local v20    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 838
    .end local v3    # "bPackageName":Ljava/lang/String;
    .end local v4    # "clockPackageName":Ljava/lang/String;
    .end local v9    # "edInstalledClock":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "isShown":Ljava/lang/String;
    .end local v13    # "item":Lorg/w3c/dom/Element;
    .end local v15    # "k":I
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    :cond_3
    if-eqz v27, :cond_4

    .line 840
    :try_start_2
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v23

    .line 841
    .local v23, "tf":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v23 .. v23}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v24

    .line 842
    .local v24, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v22, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 843
    .local v22, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v21, Ljavax/xml/transform/stream/StreamResult;

    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 844
    .local v21, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 846
    if-eqz v27, :cond_4

    .line 847
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 860
    .end local v21    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v22    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v23    # "tf":Ljavax/xml/transform/TransformerFactory;
    .end local v24    # "transformer":Ljavax/xml/transform/Transformer;
    :cond_4
    :goto_2
    if-eqz v27, :cond_7

    .line 862
    :try_start_3
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    move-object/from16 v26, v27

    .line 871
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "j":I
    .end local v17    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v18    # "nodelist_count":I
    .end local v27    # "xmlData":Ljava/io/InputStream;
    .restart local v26    # "xmlData":Ljava/io/InputStream;
    :cond_5
    :goto_3
    return-void

    .line 849
    .end local v26    # "xmlData":Ljava/io/InputStream;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "j":I
    .restart local v17    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v18    # "nodelist_count":I
    .restart local v27    # "xmlData":Ljava/io/InputStream;
    :catch_0
    move-exception v8

    .line 850
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 855
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v14    # "j":I
    .end local v17    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v18    # "nodelist_count":I
    :catch_1
    move-exception v8

    move-object/from16 v26, v27

    .line 856
    .end local v27    # "xmlData":Ljava/io/InputStream;
    .local v8, "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v26    # "xmlData":Ljava/io/InputStream;
    :goto_4
    :try_start_5
    sget-object v28, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ParserConfigurationException e = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 860
    if-eqz v26, :cond_5

    .line 862
    :try_start_6
    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_3

    .line 863
    :catch_2
    move-exception v8

    .line 864
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 851
    .end local v8    # "e":Ljava/io/IOException;
    .end local v26    # "xmlData":Ljava/io/InputStream;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "j":I
    .restart local v17    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v18    # "nodelist_count":I
    .restart local v27    # "xmlData":Ljava/io/InputStream;
    :catch_3
    move-exception v8

    .line 852
    .local v8, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v28, "Settings"

    const-string v29, "XML file Close FAIL!!!"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 857
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v14    # "j":I
    .end local v17    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v18    # "nodelist_count":I
    :catch_4
    move-exception v8

    move-object/from16 v26, v27

    .line 858
    .end local v27    # "xmlData":Ljava/io/InputStream;
    .restart local v8    # "e":Ljava/lang/Exception;
    .restart local v26    # "xmlData":Ljava/io/InputStream;
    :goto_5
    :try_start_8
    sget-object v28, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Exception e = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 860
    if-eqz v26, :cond_5

    .line 862
    :try_start_9
    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_3

    .line 863
    :catch_5
    move-exception v8

    .line 864
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 863
    .end local v8    # "e":Ljava/io/IOException;
    .end local v26    # "xmlData":Ljava/io/InputStream;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "j":I
    .restart local v17    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v18    # "nodelist_count":I
    .restart local v27    # "xmlData":Ljava/io/InputStream;
    :catch_6
    move-exception v8

    .line 864
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v26, v27

    .line 867
    .end local v27    # "xmlData":Ljava/io/InputStream;
    .restart local v26    # "xmlData":Ljava/io/InputStream;
    goto :goto_3

    .line 865
    .end local v8    # "e":Ljava/io/IOException;
    .end local v26    # "xmlData":Ljava/io/InputStream;
    .restart local v27    # "xmlData":Ljava/io/InputStream;
    :catch_7
    move-exception v8

    .line 866
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v26, v27

    .line 867
    .end local v27    # "xmlData":Ljava/io/InputStream;
    .restart local v26    # "xmlData":Ljava/io/InputStream;
    goto :goto_3

    .line 865
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "j":I
    .end local v17    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v18    # "nodelist_count":I
    .local v8, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_8
    move-exception v8

    .line 866
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 865
    :catch_9
    move-exception v8

    .line 866
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 860
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v28

    :goto_6
    if-eqz v26, :cond_6

    .line 862
    :try_start_a
    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    .line 867
    :cond_6
    :goto_7
    throw v28

    .line 863
    :catch_a
    move-exception v8

    .line 864
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 865
    .end local v8    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v8

    .line 866
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 860
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v26    # "xmlData":Ljava/io/InputStream;
    .restart local v27    # "xmlData":Ljava/io/InputStream;
    :catchall_1
    move-exception v28

    move-object/from16 v26, v27

    .end local v27    # "xmlData":Ljava/io/InputStream;
    .restart local v26    # "xmlData":Ljava/io/InputStream;
    goto :goto_6

    .line 857
    :catch_c
    move-exception v8

    goto :goto_5

    .line 855
    :catch_d
    move-exception v8

    goto/16 :goto_4

    .end local v26    # "xmlData":Ljava/io/InputStream;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "j":I
    .restart local v17    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v18    # "nodelist_count":I
    .restart local v27    # "xmlData":Ljava/io/InputStream;
    :cond_7
    move-object/from16 v26, v27

    .end local v27    # "xmlData":Ljava/io/InputStream;
    .restart local v26    # "xmlData":Ljava/io/InputStream;
    goto/16 :goto_3
.end method

.method private reMakeWappXML(Ljava/lang/String;)V
    .locals 24
    .param p1, "hPackageName"    # Ljava/lang/String;

    .prologue
    .line 725
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "reMakeWappXML hPackageName = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const-string v9, "wapplist.xml"

    .line 729
    .local v9, "fileName":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 731
    .local v10, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getGearModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 733
    .local v14, "modelName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 735
    .local v19, "xmlData":Ljava/io/InputStream;
    :try_start_0
    new-instance v20, Ljava/io/BufferedInputStream;

    new-instance v21, Ljava/io/FileInputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v20 .. v21}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    .end local v19    # "xmlData":Ljava/io/InputStream;
    .local v20, "xmlData":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 738
    .local v6, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 739
    .local v5, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 740
    .local v4, "doc":Lorg/w3c/dom/Document;
    const-string v21, "item"

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 742
    .local v15, "nodelist":Lorg/w3c/dom/NodeList;
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    .line 743
    .local v16, "nodelist_count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_2

    .line 744
    invoke-interface {v15, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    .line 747
    .local v13, "item":Lorg/w3c/dom/Element;
    const-string v21, "PreLoad"

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v17

    .line 748
    .local v17, "preLoad":Ljava/lang/String;
    const-string v21, "false"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "installed_wapp_app"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 752
    .local v18, "prefsInstalledWapp":Landroid/content/SharedPreferences;
    const-string v21, "PackageName"

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 753
    .local v3, "bPackageName":Ljava/lang/String;
    const-string v21, "empty"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 754
    .local v11, "hPackageNamePref":Ljava/lang/String;
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "reMakeWappXML hPackageNamePref = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 756
    const-string v21, "empty"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 757
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 758
    .local v8, "edInstalledWapp":Landroid/content/SharedPreferences$Editor;
    const-string v21, "empty"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 759
    move-object/from16 v0, p1

    invoke-interface {v8, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 760
    invoke-interface {v8, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 761
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 762
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "pref_log reInstallCount() edit pref installed_wapp_app bPackageName = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_0
    invoke-interface {v13}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 743
    .end local v3    # "bPackageName":Ljava/lang/String;
    .end local v8    # "edInstalledWapp":Landroid/content/SharedPreferences$Editor;
    .end local v11    # "hPackageNamePref":Ljava/lang/String;
    .end local v18    # "prefsInstalledWapp":Landroid/content/SharedPreferences;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 774
    .end local v13    # "item":Lorg/w3c/dom/Element;
    .end local v17    # "preLoad":Ljava/lang/String;
    :cond_2
    if-eqz v20, :cond_5

    .line 776
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v19, v20

    .line 785
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12    # "i":I
    .end local v15    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v16    # "nodelist_count":I
    .end local v20    # "xmlData":Ljava/io/InputStream;
    .restart local v19    # "xmlData":Ljava/io/InputStream;
    :cond_3
    :goto_1
    return-void

    .line 777
    .end local v19    # "xmlData":Ljava/io/InputStream;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v12    # "i":I
    .restart local v15    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v16    # "nodelist_count":I
    .restart local v20    # "xmlData":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .line 778
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v19, v20

    .line 781
    .end local v20    # "xmlData":Ljava/io/InputStream;
    .restart local v19    # "xmlData":Ljava/io/InputStream;
    goto :goto_1

    .line 779
    .end local v7    # "e":Ljava/io/IOException;
    .end local v19    # "xmlData":Ljava/io/InputStream;
    .restart local v20    # "xmlData":Ljava/io/InputStream;
    :catch_1
    move-exception v7

    .line 780
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v19, v20

    .line 781
    .end local v20    # "xmlData":Ljava/io/InputStream;
    .restart local v19    # "xmlData":Ljava/io/InputStream;
    goto :goto_1

    .line 769
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v12    # "i":I
    .end local v15    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v16    # "nodelist_count":I
    :catch_2
    move-exception v7

    .line 770
    .local v7, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_2
    :try_start_3
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ParserConfigurationException e = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 774
    if-eqz v19, :cond_3

    .line 776
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 777
    :catch_3
    move-exception v7

    .line 778
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 779
    .local v7, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_4
    move-exception v7

    .line 780
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 771
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v7

    .line 772
    .restart local v7    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    sget-object v21, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception e = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 774
    if-eqz v19, :cond_3

    .line 776
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_1

    .line 777
    :catch_6
    move-exception v7

    .line 778
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 779
    .local v7, "e":Ljava/lang/Exception;
    :catch_7
    move-exception v7

    .line 780
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 774
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v21

    :goto_4
    if-eqz v19, :cond_4

    .line 776
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    .line 781
    :cond_4
    :goto_5
    throw v21

    .line 777
    :catch_8
    move-exception v7

    .line 778
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 779
    .end local v7    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v7

    .line 780
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 774
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v19    # "xmlData":Ljava/io/InputStream;
    .restart local v20    # "xmlData":Ljava/io/InputStream;
    :catchall_1
    move-exception v21

    move-object/from16 v19, v20

    .end local v20    # "xmlData":Ljava/io/InputStream;
    .restart local v19    # "xmlData":Ljava/io/InputStream;
    goto :goto_4

    .line 771
    .end local v19    # "xmlData":Ljava/io/InputStream;
    .restart local v20    # "xmlData":Ljava/io/InputStream;
    :catch_a
    move-exception v7

    move-object/from16 v19, v20

    .end local v20    # "xmlData":Ljava/io/InputStream;
    .restart local v19    # "xmlData":Ljava/io/InputStream;
    goto :goto_3

    .line 769
    .end local v19    # "xmlData":Ljava/io/InputStream;
    .restart local v20    # "xmlData":Ljava/io/InputStream;
    :catch_b
    move-exception v7

    move-object/from16 v19, v20

    .end local v20    # "xmlData":Ljava/io/InputStream;
    .restart local v19    # "xmlData":Ljava/io/InputStream;
    goto :goto_2

    .end local v19    # "xmlData":Ljava/io/InputStream;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v12    # "i":I
    .restart local v15    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v16    # "nodelist_count":I
    .restart local v20    # "xmlData":Ljava/io/InputStream;
    :cond_5
    move-object/from16 v19, v20

    .end local v20    # "xmlData":Ljava/io/InputStream;
    .restart local v19    # "xmlData":Ljava/io/InputStream;
    goto/16 :goto_1
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
            "Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 875
    .local p2, "clockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;>;"
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 876
    .local v23, "file":Ljava/io/File;
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "readXML file = "

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

    .line 877
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v4

    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v4, v0, :cond_8

    .line 878
    const/16 v17, 0x0

    .line 880
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

    .line 882
    .end local v17    # "clocklistfis":Ljava/io/InputStream;
    .local v18, "clocklistfis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v21

    .line 883
    .local v21, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v21 .. v21}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v20

    .line 884
    .local v20, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v19

    .line 885
    .local v19, "doc":Lorg/w3c/dom/Document;
    const-string v4, "item"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v27

    .line 893
    .local v27, "nodelist":Lorg/w3c/dom/NodeList;
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "nodelist size = "

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

    .line 894
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    .line 895
    .local v28, "nodelist_count":I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_5

    .line 896
    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    .line 897
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

    .line 898
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

    .line 899
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

    .line 900
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

    .line 901
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

    .line 902
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

    .line 903
    .local v26, "isShown":Ljava/lang/String;
    const-string v4, "true"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 904
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mCurClockPackageName:Ljava/lang/String;

    .line 905
    const/4 v9, 0x1

    .line 909
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

    .line 910
    .local v14, "PreLoad":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 911
    const/4 v10, 0x1

    .line 915
    .local v10, "preloadState":Z
    :goto_2
    const-string v4, "PreCheckSettingsCondition"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v29

    .line 916
    .local v29, "preCheck":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_4

    .line 917
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v30

    .line 918
    .local v30, "preCheckSettingCondition":Ljava/lang/String;
    const-string v4, "true"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    .line 923
    .end local v30    # "preCheckSettingCondition":Ljava/lang/String;
    .local v11, "preCheckSettingConditionState":Z
    :goto_3
    const-string v12, "unused"

    .line 924
    .local v12, "group":Ljava/lang/String;
    const-string v4, "group"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v24

    .line 925
    .local v24, "groupNode":Lorg/w3c/dom/NodeList;
    if-eqz v24, :cond_0

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 926
    const-string v4, "group"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v12

    .line 928
    :cond_0
    const-string v13, "unused"

    .line 929
    .local v13, "appCategory":Ljava/lang/String;
    const-string v4, "AppCategory"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 930
    .local v15, "appCategoryList":Lorg/w3c/dom/NodeList;
    if-eqz v15, :cond_1

    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v15, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 931
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

    .line 934
    :cond_1
    new-instance v2, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;

    const-string v4, "test"

    invoke-direct/range {v2 .. v13}, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    .line 935
    .local v2, "clock":Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 908
    .end local v2    # "clock":Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;
    .end local v9    # "shownState":Z
    .end local v10    # "preloadState":Z
    .end local v11    # "preCheckSettingConditionState":Z
    .end local v12    # "group":Ljava/lang/String;
    .end local v13    # "appCategory":Ljava/lang/String;
    .end local v14    # "PreLoad":Ljava/lang/String;
    .end local v15    # "appCategoryList":Lorg/w3c/dom/NodeList;
    .end local v24    # "groupNode":Lorg/w3c/dom/NodeList;
    .end local v29    # "preCheck":Lorg/w3c/dom/NodeList;
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "shownState":Z
    goto/16 :goto_1

    .line 913
    .restart local v14    # "PreLoad":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "preloadState":Z
    goto/16 :goto_2

    .line 920
    .restart local v29    # "preCheck":Lorg/w3c/dom/NodeList;
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "preCheckSettingConditionState":Z
    goto :goto_3

    .line 938
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
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "RESTORE mCurClockPackageName : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mCurClockPackageName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mCurClockPackageName:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 940
    const-string v4, "com.sec.android.widgetapp.watch.weatherclock"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mCurClockPackageName:Ljava/lang/String;

    .line 951
    :cond_6
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

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

    .line 952
    if-eqz v18, :cond_7

    .line 953
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 960
    :cond_7
    if-eqz v18, :cond_8

    .line 961
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 965
    .end local v18    # "clocklistfis":Ljava/io/InputStream;
    .end local v19    # "doc":Lorg/w3c/dom/Document;
    .end local v20    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v21    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "i":I
    .end local v27    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v28    # "nodelist_count":I
    :cond_8
    :goto_4
    return-void

    .line 955
    .restart local v17    # "clocklistfis":Ljava/io/InputStream;
    :catch_0
    move-exception v22

    .line 956
    .local v22, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_5
    :try_start_2
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

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

    .line 960
    if-eqz v17, :cond_8

    .line 961
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 957
    .end local v22    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v22

    .line 958
    .local v22, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_3
    sget-object v4, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

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

    .line 960
    if-eqz v17, :cond_8

    .line 961
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 960
    .end local v22    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_7
    if-eqz v17, :cond_9

    .line 961
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    :cond_9
    throw v4

    .line 960
    .end local v17    # "clocklistfis":Ljava/io/InputStream;
    .restart local v18    # "clocklistfis":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object/from16 v17, v18

    .end local v18    # "clocklistfis":Ljava/io/InputStream;
    .restart local v17    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_7

    .line 957
    .end local v17    # "clocklistfis":Ljava/io/InputStream;
    .restart local v18    # "clocklistfis":Ljava/io/InputStream;
    :catch_2
    move-exception v22

    move-object/from16 v17, v18

    .end local v18    # "clocklistfis":Ljava/io/InputStream;
    .restart local v17    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_6

    .line 955
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
    .locals 28
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/br/WatchAppsInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 968
    .local p2, "wAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/br/WatchAppsInfo;>;"
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 969
    .local v19, "file":Ljava/io/File;
    sget-object v25, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "readXML file = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 971
    const/4 v13, 0x0

    .line 973
    .local v13, "clocklistfis":Ljava/io/InputStream;
    :try_start_0
    new-instance v14, Ljava/io/BufferedInputStream;

    new-instance v25, Ljava/io/FileInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    .end local v13    # "clocklistfis":Ljava/io/InputStream;
    .local v14, "clocklistfis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v17

    .line 976
    .local v17, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v17 .. v17}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v16

    .line 977
    .local v16, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v15

    .line 978
    .local v15, "doc":Lorg/w3c/dom/Document;
    const-string v25, "item"

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 984
    .local v21, "nodelist":Lorg/w3c/dom/NodeList;
    sget-object v25, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "nodelist size = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    .line 986
    .local v22, "nodelist_count":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 987
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Element;

    .line 988
    .local v24, "wappinfo":Lorg/w3c/dom/Element;
    const-string v25, "AppName"

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 989
    .local v3, "appname":Ljava/lang/String;
    const-string v25, "ClassName"

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 990
    .local v5, "className":Ljava/lang/String;
    const-string v25, "PackageName"

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 991
    .local v4, "packageName":Ljava/lang/String;
    const-string v25, "ImageFileName"

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 992
    .local v6, "imageFileName":Ljava/lang/String;
    const-string v25, "SettingFileName"

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 993
    .local v7, "settingFileName":Ljava/lang/String;
    const-string v25, "PreLoad"

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v23

    .line 994
    .local v23, "preLoad":Ljava/lang/String;
    const-string v25, "true"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 995
    const/4 v9, 0x1

    .line 998
    .local v9, "isPreload":Z
    :goto_1
    const-string v25, "IsAppWidget"

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    .line 999
    .local v11, "AppWidgetcheck":Ljava/lang/String;
    const-string v25, "true"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 1000
    const/4 v8, 0x1

    .line 1012
    .local v8, "isAppWidget":Z
    :goto_2
    const-string v10, "unused"

    .line 1013
    .local v10, "appCategory":Ljava/lang/String;
    const-string v25, "AppCategory"

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 1014
    .local v12, "appCategoryList":Lorg/w3c/dom/NodeList;
    if-eqz v12, :cond_0

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    if-lez v25, :cond_0

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1015
    const-string v25, "AppCategory"

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    .line 1018
    :cond_0
    new-instance v2, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 1019
    .local v2, "app":Lcom/samsung/android/hostmanager/br/WatchAppsInfo;
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 997
    .end local v2    # "app":Lcom/samsung/android/hostmanager/br/WatchAppsInfo;
    .end local v8    # "isAppWidget":Z
    .end local v9    # "isPreload":Z
    .end local v10    # "appCategory":Ljava/lang/String;
    .end local v11    # "AppWidgetcheck":Ljava/lang/String;
    .end local v12    # "appCategoryList":Lorg/w3c/dom/NodeList;
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "isPreload":Z
    goto :goto_1

    .line 1002
    .restart local v11    # "AppWidgetcheck":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "isAppWidget":Z
    goto :goto_2

    .line 1021
    .end local v3    # "appname":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "imageFileName":Ljava/lang/String;
    .end local v7    # "settingFileName":Ljava/lang/String;
    .end local v8    # "isAppWidget":Z
    .end local v9    # "isPreload":Z
    .end local v11    # "AppWidgetcheck":Ljava/lang/String;
    .end local v23    # "preLoad":Ljava/lang/String;
    .end local v24    # "wappinfo":Lorg/w3c/dom/Element;
    :cond_3
    sget-object v25, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "readXML() installedClockList size = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    if-eqz v14, :cond_4

    .line 1023
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1030
    :cond_4
    if-eqz v14, :cond_5

    .line 1031
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 1035
    .end local v14    # "clocklistfis":Ljava/io/InputStream;
    .end local v15    # "doc":Lorg/w3c/dom/Document;
    .end local v16    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v17    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v20    # "i":I
    .end local v21    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v22    # "nodelist_count":I
    :cond_5
    :goto_3
    return-void

    .line 1025
    .restart local v13    # "clocklistfis":Ljava/io/InputStream;
    :catch_0
    move-exception v18

    .line 1026
    .local v18, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_4
    :try_start_2
    sget-object v25, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ParserConfigurationException e = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1030
    if-eqz v13, :cond_5

    .line 1031
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .line 1027
    .end local v18    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v18

    .line 1028
    .local v18, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_3
    sget-object v25, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception e = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1030
    if-eqz v13, :cond_5

    .line 1031
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .line 1030
    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v25

    :goto_6
    if-eqz v13, :cond_6

    .line 1031
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    :cond_6
    throw v25

    .line 1030
    .end local v13    # "clocklistfis":Ljava/io/InputStream;
    .restart local v14    # "clocklistfis":Ljava/io/InputStream;
    :catchall_1
    move-exception v25

    move-object v13, v14

    .end local v14    # "clocklistfis":Ljava/io/InputStream;
    .restart local v13    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_6

    .line 1027
    .end local v13    # "clocklistfis":Ljava/io/InputStream;
    .restart local v14    # "clocklistfis":Ljava/io/InputStream;
    :catch_2
    move-exception v18

    move-object v13, v14

    .end local v14    # "clocklistfis":Ljava/io/InputStream;
    .restart local v13    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_5

    .line 1025
    .end local v13    # "clocklistfis":Ljava/io/InputStream;
    .restart local v14    # "clocklistfis":Ljava/io/InputStream;
    :catch_3
    move-exception v18

    move-object v13, v14

    .end local v14    # "clocklistfis":Ljava/io/InputStream;
    .restart local v13    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_4
.end method

.method private removeWGTApp(Ljava/lang/String;)V
    .locals 16
    .param p1, "bPackageName"    # Ljava/lang/String;

    .prologue
    .line 1099
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getGearModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 1100
    .local v9, "modelName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "installed_wgt_only_app"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 1102
    .local v12, "wgtOnlyPref":Landroid/content/SharedPreferences;
    const/4 v10, 0x0

    .line 1104
    .local v10, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v14, v14, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1109
    :goto_0
    const/4 v8, 0x0

    .line 1110
    .local v8, "isWgtOnlyApp":Z
    if-eqz v10, :cond_0

    .line 1111
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->isWgtOnlyApp(Ljava/lang/String;)Z

    move-result v8

    .line 1114
    :cond_0
    if-eqz v8, :cond_7

    .line 1116
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 1118
    .local v11, "wgtOnlyEditor":Landroid/content/SharedPreferences$Editor;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_appId"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1119
    .local v1, "AppId":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_appVersion"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1120
    .local v5, "AppVersion":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_isNew"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1121
    .local v2, "AppIsNew":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_appUpdateVersion"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1122
    .local v3, "AppUpdateVersion":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_appUpdateVersionName"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1123
    .local v4, "AppUpdateVersionName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_appVersion"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1125
    .local v6, "AppVersionName":Ljava/lang/String;
    invoke-interface {v12, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1126
    sget-object v13, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "removeWGTApp removed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    invoke-interface {v11, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1129
    :cond_1
    invoke-interface {v12, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1130
    sget-object v13, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "removeWGTApp removed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-interface {v11, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1133
    :cond_2
    invoke-interface {v12, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1134
    sget-object v13, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "removeWGTApp removed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    invoke-interface {v11, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1137
    :cond_3
    invoke-interface {v12, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1138
    sget-object v13, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "removeWGTApp removed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-interface {v11, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1141
    :cond_4
    invoke-interface {v12, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1142
    sget-object v13, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "removeWGTApp removed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-interface {v11, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1146
    :cond_5
    invoke-interface {v12, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1147
    sget-object v13, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "removeWGTApp removed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-interface {v11, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1151
    :cond_6
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1153
    .end local v1    # "AppId":Ljava/lang/String;
    .end local v2    # "AppIsNew":Ljava/lang/String;
    .end local v3    # "AppUpdateVersion":Ljava/lang/String;
    .end local v4    # "AppUpdateVersionName":Ljava/lang/String;
    .end local v5    # "AppVersion":Ljava/lang/String;
    .end local v6    # "AppVersionName":Ljava/lang/String;
    .end local v11    # "wgtOnlyEditor":Landroid/content/SharedPreferences$Editor;
    :cond_7
    return-void

    .line 1106
    .end local v8    # "isWgtOnlyApp":Z
    :catch_0
    move-exception v7

    .line 1107
    .local v7, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private updateFontAppList()V
    .locals 18

    .prologue
    .line 1204
    sget-object v14, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v15, "updateFontAppList()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    const-string v4, "fontlist.xml"

    .line 1206
    .local v4, "fileName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1207
    .local v5, "filePath":Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->parseFontList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1208
    .local v6, "fontAppList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/homestyler/FontsInfo;>;"
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1209
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v14, v14, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1211
    .local v2, "deviceType":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1213
    .local v13, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v15, v15, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 1218
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_1

    if-eqz v13, :cond_1

    .line 1220
    sget-object v14, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateFontAppList Font app count: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    .line 1223
    .local v8, "info":Lcom/samsung/android/hostmanager/homestyler/FontsInfo;
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->isWgtFileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 1224
    .local v9, "isWgtFileExists":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getGearModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 1225
    .local v12, "modelName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "installed_font_app"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1226
    .local v7, "fontAppPreference":Landroid/content/SharedPreferences;
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "empty"

    move-object/from16 v0, v16

    invoke-interface {v7, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1228
    .local v1, "ProviderPackageName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1229
    .local v10, "isWgtOnlyAppInstalled":Z
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->isWgtOnlyAppInstalled(Ljava/lang/String;)Z

    move-result v10

    .line 1231
    sget-object v15, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateFontAppList isWgtOnlyAppInstalled<"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  isWgtFileExists<"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  ProviderPackageName<"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  ConsumerPackageName<"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1234
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  getPreloadState<"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1235
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getPreloadState()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1231
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    if-eqz v10, :cond_0

    if-eqz v9, :cond_0

    const-string v15, "empty"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getPreloadState()Z

    move-result v15

    if-nez v15, :cond_0

    .line 1238
    new-instance v11, Lcom/samsung/android/hostmanager/br/ReinstallInfo;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v11, v15, v1, v0}, Lcom/samsung/android/hostmanager/br/ReinstallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    .local v11, "mReinstallInfo":Lcom/samsung/android/hostmanager/br/ReinstallInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->reInstallList:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1214
    .end local v1    # "ProviderPackageName":Ljava/lang/String;
    .end local v7    # "fontAppPreference":Landroid/content/SharedPreferences;
    .end local v8    # "info":Lcom/samsung/android/hostmanager/homestyler/FontsInfo;
    .end local v9    # "isWgtFileExists":Z
    .end local v10    # "isWgtOnlyAppInstalled":Z
    .end local v11    # "mReinstallInfo":Lcom/samsung/android/hostmanager/br/ReinstallInfo;
    .end local v12    # "modelName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1215
    .local v3, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1244
    .end local v3    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    :cond_1
    sget-object v14, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v15, "updateFontAppList FONT APP LIST IS EMPTY!!!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_2
    return-void
.end method

.method private updateTTSAppList()V
    .locals 18

    .prologue
    .line 1249
    sget-object v14, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v15, "updateTTSAppList()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const-string v4, "ttslist.xml"

    .line 1251
    .local v4, "fileName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1252
    .local v5, "filePath":Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->parseTTSAPPList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 1253
    .local v12, "ttsAppsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;>;"
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1254
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v14, v14, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1256
    .local v2, "deviceType":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1258
    .local v11, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v15, v15, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1263
    :goto_0
    if-eqz v12, :cond_1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_1

    if-eqz v11, :cond_1

    .line 1265
    sget-object v14, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateTTSAppList Font app count: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;

    .line 1268
    .local v6, "info":Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->isWgtFileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 1269
    .local v7, "isWgtFileExists":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getGearModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 1270
    .local v10, "modelName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "installed_tts_app"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 1271
    .local v13, "ttsAppsPreference":Landroid/content/SharedPreferences;
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "empty"

    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1273
    .local v1, "ProviderPackageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1274
    .local v8, "isWgtOnlyAppInstalled":Z
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v15}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->isWgtOnlyAppInstalled(Ljava/lang/String;)Z

    move-result v8

    .line 1276
    sget-object v15, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateTTSAppList isWgtOnlyAppInstalled<"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  isWgtFileExists<"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  ProviderPackageName<"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  ConsumerPackageName<"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1279
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1276
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    const-string v15, "empty"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->getPreloadState()Z

    move-result v15

    if-nez v15, :cond_0

    .line 1282
    new-instance v9, Lcom/samsung/android/hostmanager/br/ReinstallInfo;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v15, v1, v0}, Lcom/samsung/android/hostmanager/br/ReinstallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    .local v9, "mReinstallInfo":Lcom/samsung/android/hostmanager/br/ReinstallInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->reInstallList:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1259
    .end local v1    # "ProviderPackageName":Ljava/lang/String;
    .end local v6    # "info":Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;
    .end local v7    # "isWgtFileExists":Z
    .end local v8    # "isWgtOnlyAppInstalled":Z
    .end local v9    # "mReinstallInfo":Lcom/samsung/android/hostmanager/br/ReinstallInfo;
    .end local v10    # "modelName":Ljava/lang/String;
    .end local v13    # "ttsAppsPreference":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v3

    .line 1260
    .local v3, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1287
    .end local v3    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    :cond_1
    sget-object v14, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v15, "updateTTSAppList FONT APP LIST IS EMPTY!!!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_2
    return-void
.end method


# virtual methods
.method public RestoreStart()V
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v1, "RestoreStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;-><init>(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreProgress:Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;

    .line 128
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreProgress:Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->registerClockInstallResultReceiver(Lcom/samsung/android/hostmanager/service/HMSAPProviderService$ClockInstallResultReceiver;)Z

    .line 132
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->registerWappsInstallResultReceiver(Lcom/samsung/android/hostmanager/service/HMSAPProviderService$WappsInstallResultReceiver;)Z

    .line 133
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->registerFontInstallResultReceiver(Lcom/samsung/android/hostmanager/service/HMSAPProviderService$FontInstallResultReceiver;)Z

    .line 134
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->registerTTSInstallResultReceiver(Lcom/samsung/android/hostmanager/service/HMSAPProviderService$TTSInstallResultReceiver;)Z

    .line 136
    :cond_0
    return-void
.end method

.method public getDeviceType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 1156
    sget-object v1, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

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

    .line 1158
    const/4 v0, 0x0

    .line 1159
    .local v0, "deviceType":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1160
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mContext:Landroid/content/Context;

    .line 1164
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1166
    if-nez v0, :cond_1

    const-string v0, ""

    .line 1167
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

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

    .line 1169
    return-object v0
.end method

.method public onClockInstallResultReceived(ZLcom/samsung/android/hostmanager/homestyler/ClocksInfo;)V
    .locals 5
    .param p1, "isInstalled"    # Z
    .param p2, "clockInfo"    # Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;

    .prologue
    const/4 v4, 0x1

    .line 647
    if-eqz p1, :cond_0

    .line 648
    sget-object v1, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClockInstallResultReceived --> clockInfo.getPackageName():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-instance v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mCurInstallingPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/homestyler/ClocksInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    .local v0, "info":Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mPackageNameInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mCurInstallingPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->addBPackageList(Ljava/lang/String;)V

    .line 653
    iput-boolean v4, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->isInstallFinish:Z

    .line 659
    .end local v0    # "info":Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->notifyAsyncTask()V

    .line 660
    return-void

    .line 655
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v2, "Clock app installation failed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iput-boolean v4, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->isInstallFinish:Z

    goto :goto_0
.end method

.method public onFontInstallResultReceived(ZLcom/samsung/android/hostmanager/homestyler/FontsInfo;)V
    .locals 5
    .param p1, "isInstalled"    # Z
    .param p2, "fontInfo"    # Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    .prologue
    const/4 v4, 0x1

    .line 690
    if-eqz p1, :cond_0

    .line 691
    sget-object v1, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFontInstallResultReceived()-->fontInfo.getPackageName():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mCurInstallingPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    .local v0, "info":Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mPackageNameInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mCurInstallingPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->addBPackageList(Ljava/lang/String;)V

    .line 696
    iput-boolean v4, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->isInstallFinish:Z

    .line 702
    .end local v0    # "info":Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->notifyAsyncTask()V

    .line 703
    return-void

    .line 698
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v2, "Font app installation failed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iput-boolean v4, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->isInstallFinish:Z

    goto :goto_0
.end method

.method public onForceStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    sget-object v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v1, "onForceStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->registerClockInstallResultReceiver(Lcom/samsung/android/hostmanager/service/HMSAPProviderService$ClockInstallResultReceiver;)Z

    .line 152
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->registerWappsInstallResultReceiver(Lcom/samsung/android/hostmanager/service/HMSAPProviderService$WappsInstallResultReceiver;)Z

    .line 153
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->registerFontInstallResultReceiver(Lcom/samsung/android/hostmanager/service/HMSAPProviderService$FontInstallResultReceiver;)Z

    .line 154
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->registerTTSInstallResultReceiver(Lcom/samsung/android/hostmanager/service/HMSAPProviderService$TTSInstallResultReceiver;)Z

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreProgress:Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreProgress:Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->onForceStop()V

    .line 158
    :cond_1
    return-void
.end method

.method public onProgressCancel(I)V
    .locals 1
    .param p1, "where"    # I

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/hostmanager/br/BackupRestoreListener;->onProgressCancel(I)V

    .line 334
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
    .line 317
    .local p2, "deletePackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hostmanager/br/BackupRestoreListener;->onProgressComplete(ILjava/util/ArrayList;)V

    .line 319
    return-void
.end method

.method public onProgressError(II)V
    .locals 1
    .param p1, "where"    # I
    .param p2, "error"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hostmanager/br/BackupRestoreListener;->onProgressError(II)V

    .line 329
    return-void
.end method

.method public onProgressRetry(I)V
    .locals 1
    .param p1, "where"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/hostmanager/br/BackupRestoreListener;->onProgressRetry(I)V

    .line 324
    return-void
.end method

.method public onTTSInstallResultReceived(ZLcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;)V
    .locals 5
    .param p1, "isInstalled"    # Z
    .param p2, "ttsInfo"    # Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;

    .prologue
    const/4 v4, 0x1

    .line 707
    if-eqz p1, :cond_0

    .line 708
    sget-object v1, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTTSInstallResultReceived()-->ttsInfo.getPackageName():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    new-instance v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mCurInstallingPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    .local v0, "info":Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mPackageNameInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mCurInstallingPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->addBPackageList(Ljava/lang/String;)V

    .line 713
    iput-boolean v4, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->isInstallFinish:Z

    .line 719
    .end local v0    # "info":Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->notifyAsyncTask()V

    .line 720
    return-void

    .line 715
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v2, "TTS app installation failed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iput-boolean v4, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->isInstallFinish:Z

    goto :goto_0
.end method

.method public onUpdate(Ljava/lang/String;I)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hostmanager/br/BackupRestoreListener;->onUpdate(Ljava/lang/String;I)V

    .line 1077
    return-void
.end method

.method public onWappsInstallFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "bPackageName"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 1293
    sget-object v17, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onWappsInstallFailed("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getGearModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1297
    .local v8, "modelName":Ljava/lang/String;
    sget-boolean v17, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreAfterReset:Z

    if-eqz v17, :cond_1

    .line 1298
    sget-object v17, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v18, "onWappsInstallFailed(), Remove failed app entry"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "installed_clock_app"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1300
    .local v10, "prefsInstalledClock":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "installed_wapp_app"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 1301
    .local v13, "prefsInstalledWapp":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "installed_font_app"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 1302
    .local v11, "prefsInstalledFont":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "installed_tts_app"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 1304
    .local v12, "prefsInstalledTTSapp":Landroid/content/SharedPreferences;
    const-string v17, "empty"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1305
    .local v5, "clockHpackageName":Ljava/lang/String;
    const-string v17, "empty"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1306
    .local v16, "wappHPackageName":Ljava/lang/String;
    const-string v17, "empty"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1307
    .local v7, "fontHPackageName":Ljava/lang/String;
    const-string v17, "empty"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1309
    .local v15, "ttsHPackageName":Ljava/lang/String;
    const-string v17, "empty"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 1310
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v5, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->removeWgtData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1311
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, v19

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updateAppListOnUninstalled(ILjava/lang/String;ILjava/lang/String;)V

    .line 1325
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v9

    .line 1326
    .local v9, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    if-eqz v9, :cond_5

    .line 1327
    move-object/from16 v0, p1

    invoke-interface {v9, v0}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->removeWgtOnlyAppData(Ljava/lang/String;)Z

    move-result v14

    .line 1328
    .local v14, "result":Z
    sget-object v17, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onWappsInstallFailed(), Removing wgtOnly data, result = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1337
    .end local v5    # "clockHpackageName":Ljava/lang/String;
    .end local v7    # "fontHPackageName":Ljava/lang/String;
    .end local v9    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    .end local v10    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    .end local v11    # "prefsInstalledFont":Landroid/content/SharedPreferences;
    .end local v12    # "prefsInstalledTTSapp":Landroid/content/SharedPreferences;
    .end local v13    # "prefsInstalledWapp":Landroid/content/SharedPreferences;
    .end local v14    # "result":Z
    .end local v15    # "ttsHPackageName":Ljava/lang/String;
    .end local v16    # "wappHPackageName":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->notifyAsyncTask()V

    .line 1338
    return-void

    .line 1312
    .restart local v5    # "clockHpackageName":Ljava/lang/String;
    .restart local v7    # "fontHPackageName":Ljava/lang/String;
    .restart local v10    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    .restart local v11    # "prefsInstalledFont":Landroid/content/SharedPreferences;
    .restart local v12    # "prefsInstalledTTSapp":Landroid/content/SharedPreferences;
    .restart local v13    # "prefsInstalledWapp":Landroid/content/SharedPreferences;
    .restart local v15    # "ttsHPackageName":Ljava/lang/String;
    .restart local v16    # "wappHPackageName":Ljava/lang/String;
    :cond_2
    const-string v17, "empty"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 1313
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->removeWgtData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1314
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    const/16 v19, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, v19

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updateAppListOnUninstalled(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1315
    :cond_3
    const-string v17, "empty"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 1316
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v7, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->removeWgtData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1317
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    const/16 v19, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, v19

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updateAppListOnUninstalled(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1318
    :cond_4
    const-string v17, "empty"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1319
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v15, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->removeWgtData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1320
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    const/16 v19, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, v19

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updateAppListOnUninstalled(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1330
    .restart local v9    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :cond_5
    :try_start_1
    sget-object v17, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v18, "onWappsInstallFailed(), PackageManager instance is null."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1332
    .end local v9    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :catch_0
    move-exception v6

    .line 1333
    .local v6, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    sget-object v17, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onWappsInstallFailed(), Unable to fetch PackageManager instance, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onWappsInstallResultReceived(ZLcom/samsung/android/hostmanager/br/WatchAppsInfo;)V
    .locals 5
    .param p1, "isInstalled"    # Z
    .param p2, "wappInfo"    # Lcom/samsung/android/hostmanager/br/WatchAppsInfo;

    .prologue
    const/4 v4, 0x1

    .line 672
    if-eqz p1, :cond_0

    .line 673
    sget-object v1, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWappsInstallResultReceived --> wappInfo.getPackageName():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    new-instance v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mCurInstallingPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    .local v0, "info":Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mPackageNameInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mCurInstallingPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->addBPackageList(Ljava/lang/String;)V

    .line 678
    iput-boolean v4, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->isInstallFinish:Z

    .line 684
    .end local v0    # "info":Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->notifyAsyncTask()V

    .line 685
    return-void

    .line 680
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    const-string v2, "Watch app installation failed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iput-boolean v4, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->isInstallFinish:Z

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mHMHandler:Landroid/os/Handler;

    .line 108
    return-void
.end method

.method public setListener(Lcom/samsung/android/hostmanager/br/BackupRestoreListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    .line 104
    return-void
.end method

.method public setRestoreMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    .line 111
    sget-object v2, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRestoreMode mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sput-boolean v5, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreAfterReset:Z

    .line 114
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getConnectManager()Lcom/samsung/android/hostmanager/connection/IWSocketManager;

    move-result-object v0

    .line 115
    .local v0, "connectionManager":Lcom/samsung/android/hostmanager/connection/IWSocketManager;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/samsung/android/hostmanager/connection/IWSocketManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v2

    iget-boolean v1, v2, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isInitialedGear:Z

    .line 116
    .local v1, "isInitialedGear":Z
    sget-object v2, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

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

    .line 118
    if-eqz v1, :cond_0

    const/16 v2, 0x63

    if-ne p1, v2, :cond_0

    .line 119
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreAfterReset:Z

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    sput-boolean v5, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreAfterReset:Z

    goto :goto_0
.end method

.method public totalSettingsFile()I
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mInstalledBPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mPackageNameInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->reInstallCount()V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->reInstallList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->lenghtOfTotalFile:I

    .line 143
    sget-object v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " File: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->reInstallList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->lenghtOfTotalFile:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->lenghtOfTotalFile:I

    return v0
.end method
