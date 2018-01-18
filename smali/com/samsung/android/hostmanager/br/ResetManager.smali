.class public Lcom/samsung/android/hostmanager/br/ResetManager;
.super Ljava/lang/Object;
.source "ResetManager.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/br/BackupRestoreListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackupPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

.field private mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

.field private mResetProgress:Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/samsung/android/hostmanager/br/ResetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/br/ResetManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bnrManager"    # Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/ResetManager;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/samsung/android/hostmanager/br/ResetManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    .line 64
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/ResetManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/ResetManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceTypeBackupSubFolder(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/ResetManager;->mBackupPath:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;-><init>(Lcom/samsung/android/hostmanager/br/ResetManager;Lcom/samsung/android/hostmanager/br/ResetManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/ResetManager;->mResetProgress:Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;

    .line 68
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/samsung/android/hostmanager/br/ResetManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/ResetManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/ResetManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/br/ResetManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/ResetManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/ResetManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/br/ResetManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/ResetManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/ResetManager;->mBackupPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/br/ResetManager;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/ResetManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/br/ResetManager;->deleteDir(Ljava/lang/String;Z)V

    return-void
.end method

.method private deleteDir(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "deleteBaseFolder"    # Z

    .prologue
    .line 96
    sget-object v5, Lcom/samsung/android/hostmanager/br/ResetManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeleteDir path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_2

    .line 100
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 101
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 102
    .local v2, "childFileList":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 103
    sget-object v5, Lcom/samsung/android/hostmanager/br/ResetManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteDir childFileList len = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v2, v5

    .line 106
    .local v0, "childFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/hostmanager/br/ResetManager;->deleteDir(Ljava/lang/String;Z)V

    .line 105
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 110
    .local v1, "childFileDeleteCheck":Z
    sget-object v7, Lcom/samsung/android/hostmanager/br/ResetManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "childFileDeleteCheck = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 116
    .end local v0    # "childFile":Ljava/io/File;
    .end local v1    # "childFileDeleteCheck":Z
    :cond_1
    if-eqz p2, :cond_2

    .line 117
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    .line 118
    .local v4, "fileDeleteCheck":Z
    sget-object v5, Lcom/samsung/android/hostmanager/br/ResetManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileDeleteCheck = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v2    # "childFileList":[Ljava/io/File;
    .end local v4    # "fileDeleteCheck":Z
    :cond_2
    :goto_2
    return-void

    .line 121
    :cond_3
    sget-object v5, Lcom/samsung/android/hostmanager/br/ResetManager;->TAG:Ljava/lang/String;

    const-string v6, "deleteDir path not exist!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public ResetStart()V
    .locals 5

    .prologue
    .line 75
    sget-object v2, Lcom/samsung/android/hostmanager/br/ResetManager;->TAG:Ljava/lang/String;

    const-string v3, "ResetStart"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getConnectManager()Lcom/samsung/android/hostmanager/connection/IWSocketManager;

    move-result-object v0

    .line 77
    .local v0, "connectionManager":Lcom/samsung/android/hostmanager/connection/IWSocketManager;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/ResetManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/samsung/android/hostmanager/connection/IWSocketManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v2

    iget-boolean v1, v2, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isInitialedGear:Z

    .line 78
    .local v1, "isInitialedGear":Z
    sget-object v2, Lcom/samsung/android/hostmanager/br/ResetManager;->TAG:Ljava/lang/String;

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

    .line 82
    if-eqz v1, :cond_0

    .line 83
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/ResetManager;->mResetProgress:Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/ResetManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/hostmanager/br/BackupRestoreListener;->onProgressComplete(ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public ResetStop()V
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/samsung/android/hostmanager/br/ResetManager;->TAG:Ljava/lang/String;

    const-string v1, "ResetStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public onProgressCancel(I)V
    .locals 1
    .param p1, "where"    # I

    .prologue
    .line 761
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/ResetManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/hostmanager/br/BackupRestoreListener;->onProgressCancel(I)V

    .line 762
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
    .line 745
    .local p2, "deletePackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/ResetManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hostmanager/br/BackupRestoreListener;->onProgressComplete(ILjava/util/ArrayList;)V

    .line 747
    return-void
.end method

.method public onProgressError(II)V
    .locals 1
    .param p1, "where"    # I
    .param p2, "error"    # I

    .prologue
    .line 756
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/ResetManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hostmanager/br/BackupRestoreListener;->onProgressError(II)V

    .line 757
    return-void
.end method

.method public onProgressRetry(I)V
    .locals 1
    .param p1, "where"    # I

    .prologue
    .line 751
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/ResetManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/hostmanager/br/BackupRestoreListener;->onProgressRetry(I)V

    .line 752
    return-void
.end method

.method public onUpdate(Ljava/lang/String;I)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 766
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/ResetManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hostmanager/br/BackupRestoreListener;->onUpdate(Ljava/lang/String;I)V

    .line 767
    return-void
.end method

.method public setListener(Lcom/samsung/android/hostmanager/br/BackupRestoreListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/ResetManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    .line 72
    return-void
.end method
