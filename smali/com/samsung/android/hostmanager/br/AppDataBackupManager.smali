.class public Lcom/samsung/android/hostmanager/br/AppDataBackupManager;
.super Ljava/lang/Object;
.source "AppDataBackupManager.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/br/BackupRestoreListener;


# static fields
.field public static BACKUP_TYPE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/BackupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListIndex:I

.field private mBackupType:I

.field private mContext:Landroid/content/Context;

.field private mHMHandlerBR:Landroid/os/Handler;

.field private mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

.field public mIsBackupActive:Z

.field private mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bnrManager"    # Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mAppListIndex:I

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mBackupType:I

    .line 31
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mIsBackupActive:Z

    .line 119
    new-instance v0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;-><init>(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mHMHandlerBR:Landroid/os/Handler;

    .line 36
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    .line 38
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    .prologue
    .line 21
    iget v0, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mAppListIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/AppDataBackupManager;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mAppListIndex:I

    return p1
.end method

.method static synthetic access$208(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    .prologue
    .line 21
    iget v0, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mAppListIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mAppListIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    .prologue
    .line 21
    iget v0, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mBackupType:I

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/AppDataBackupManager;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mBackupType:I

    return p1
.end method


# virtual methods
.method doBackup(ZI)V
    .locals 3
    .param p1, "type"    # Z
    .param p2, "systemBackupType"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/BackupRestoreListener;->onProgressComplete(ILjava/util/ArrayList;)V

    .line 117
    return-void
.end method

.method public initAppBackup(Ljava/lang/String;I)V
    .locals 10
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "backupType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 71
    sget-object v5, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->TAG:Ljava/lang/String;

    const-string v6, "initAppBackup()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput-boolean v9, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mIsBackupActive:Z

    .line 74
    sput p2, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->BACKUP_TYPE:I

    .line 75
    iput v8, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mAppListIndex:I

    .line 76
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mHMHandlerBR:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setListenerBR(Landroid/os/Handler;)V

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "MacId":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v0, v5, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    .line 79
    sget-object v5, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NewDeviceIdAPI:initAppBackup macid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-virtual {v5, v0}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->getBackupList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mAppList:Ljava/util/List;

    .line 81
    sget-object v5, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size returned: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mAppList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 83
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mAppList:Ljava/util/List;

    iget v6, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mAppListIndex:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/aidl/BackupInfo;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4, v9}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->backupWearable(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 84
    iget v4, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mAppListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mAppListIndex:I

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const/4 v3, -0x1

    .line 87
    .local v3, "selectedAccount":I
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mContext:Landroid/content/Context;

    const-string v6, "backup_restore_mode"

    invoke-static {v5, p1, v6}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "brModePref":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    move v3, v4

    .line 91
    :cond_2
    :goto_1
    if-eq v3, v9, :cond_3

    .line 93
    invoke-virtual {p0, v8, p2}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->doBackup(ZI)V

    .line 94
    iput-boolean v8, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mIsBackupActive:Z

    .line 96
    :cond_3
    iget v5, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mBackupType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 97
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.android.app.watchmanager_BACKUP_COMPLETE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->TAG:Ljava/lang/String;

    const-string v6, "SCloud backup, sending broadcast"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    iput v4, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mBackupType:I

    goto :goto_0

    .line 89
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1
.end method

.method public onProgressCancel(I)V
    .locals 0
    .param p1, "where"    # I

    .prologue
    .line 67
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
    .line 47
    .local p2, "deletePackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public onProgressError(II)V
    .locals 0
    .param p1, "where"    # I
    .param p2, "error"    # I

    .prologue
    .line 62
    return-void
.end method

.method public onProgressRetry(I)V
    .locals 0
    .param p1, "where"    # I

    .prologue
    .line 57
    return-void
.end method

.method public onUpdate(Ljava/lang/String;I)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 52
    return-void
.end method

.method public setListenter(Lcom/samsung/android/hostmanager/br/BackupRestoreListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    .line 42
    return-void
.end method
