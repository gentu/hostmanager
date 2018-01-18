.class Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;
.super Landroid/os/AsyncTask;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/br/BackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackUpProgress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field bBackupFail:Z

.field bEmptyFile:Z

.field isCancel:Z

.field final synthetic this$0:Lcom/samsung/android/hostmanager/br/BackupManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/br/BackupManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/br/BackupManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 117
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 113
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->bBackupFail:Z

    .line 114
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->bEmptyFile:Z

    .line 115
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->isCancel:Z

    .line 118
    invoke-static {p1, p2}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$002(Lcom/samsung/android/hostmanager/br/BackupManager;Landroid/content/Context;)Landroid/content/Context;

    .line 119
    return-void
.end method

.method private CheckwritableSDCard()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 416
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "strState":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 419
    const/4 v1, 0x1

    .line 423
    :cond_0
    :goto_0
    return v1

    .line 420
    :cond_1
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private prepareBackupDataDirectory()Z
    .locals 7

    .prologue
    .line 363
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$400(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->DeleteDir(Ljava/lang/String;)V

    .line 365
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$400(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v3, "backupRoot":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 367
    const-string v5, "BackupManager"

    const-string v6, "backupRoot make Dir fail!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$700(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v1, "backupFiles":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 372
    const-string v5, "BackupManager"

    const-string v6, "backupFiles make Dir fail!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$800(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .local v2, "backupPrefs":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_2

    .line 376
    const-string v5, "BackupManager"

    const-string v6, "backupPrefs make Dir fail!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$3000(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, "backupDatabases":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_3

    .line 380
    const-string v5, "BackupManager"

    const-string v6, "backupDatabases make Dir fail!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_3
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$3100(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .local v4, "backupWallpapers":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_4

    .line 384
    const-string v5, "BackupManager"

    const-string v6, "backupWallpapers make Dir fail!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_4
    const/4 v5, 0x1

    return v5
.end method


# virtual methods
.method DeleteDir(Ljava/lang/String;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 390
    const-string v5, "BackupManager"

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

    .line 391
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 392
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_2

    .line 393
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 394
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 395
    .local v2, "childFileList":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 396
    const-string v5, "BackupManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeleteDir childFileList len = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v2, v5

    .line 399
    .local v0, "childFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 400
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->DeleteDir(Ljava/lang/String;)V

    .line 398
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 404
    .local v1, "childFileDeleteCheck":Z
    const-string v7, "BackupManager"

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

    .line 407
    .end local v0    # "childFile":Ljava/io/File;
    .end local v1    # "childFileDeleteCheck":Z
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    .line 408
    .local v4, "fileDeleteCheck":Z
    const-string v5, "BackupManager"

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

    .line 413
    .end local v2    # "childFileList":[Ljava/io/File;
    .end local v4    # "fileDeleteCheck":Z
    :cond_2
    :goto_2
    return-void

    .line 411
    :cond_3
    const-string v5, "BackupManager"

    const-string v6, "DeleteDir path not exist!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p1, "arg"    # [Ljava/lang/String;

    .prologue
    .line 158
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->CheckwritableSDCard()Z

    move-result v19

    if-nez v19, :cond_0

    .line 159
    const-string v19, "BackupManager"

    const-string v20, "CheckwritableSDCard is false !!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->bBackupFail:Z

    .line 161
    const/16 v19, 0x0

    .line 313
    :goto_0
    return-object v19

    .line 163
    :cond_0
    const-string v19, "BackupManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "rootofDest = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$400(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$000(Lcom/samsung/android/hostmanager/br/BackupManager;)Landroid/content/Context;

    move-result-object v19

    const-string v20, "clocklist.xml"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$500(Lcom/samsung/android/hostmanager/br/BackupManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathByFileName(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v2, "clockListFile":Ljava/io/File;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$000(Lcom/samsung/android/hostmanager/br/BackupManager;)Landroid/content/Context;

    move-result-object v19

    const-string v20, "wapplist.xml"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$500(Lcom/samsung/android/hostmanager/br/BackupManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathByFileName(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v18, "wappListFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_2

    .line 169
    :cond_1
    const-string v19, "BackupManager"

    const-string v20, "Impotant file empty.. Can not backup !!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->bEmptyFile:Z

    .line 171
    const/16 v19, 0x0

    goto :goto_0

    .line 175
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->prepareBackupDataDirectory()Z

    move-result v19

    if-nez v19, :cond_3

    .line 176
    const-string v19, "BackupManager"

    const-string v20, "backup fail !! reason : directory"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->bBackupFail:Z

    .line 178
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 192
    :cond_3
    const-string v19, "BackupManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "rootofSrc= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$600(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$000(Lcom/samsung/android/hostmanager/br/BackupManager;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$500(Lcom/samsung/android/hostmanager/br/BackupManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v8, "filesFileDir":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$000(Lcom/samsung/android/hostmanager/br/BackupManager;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForSharePref(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v11, "prefFileDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$000(Lcom/samsung/android/hostmanager/br/BackupManager;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDatabases(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v4, "databaseFileDir":Ljava/io/File;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$000(Lcom/samsung/android/hostmanager/br/BackupManager;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$500(Lcom/samsung/android/hostmanager/br/BackupManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForWallpaper(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v16, "wallpaperFileDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 198
    .local v7, "files":[Ljava/io/File;
    if-eqz v7, :cond_7

    .line 199
    const-string v19, "BackupManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "file list count= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v7

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "rootofSrc= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v21, v0

    .line 200
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$600(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " rootofDest= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v21, v0

    .line 201
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$400(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 199
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    array-length v9, v7

    .line 203
    .local v9, "files_count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v9, :cond_8

    .line 204
    aget-object v6, v7, v10

    .line 205
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, ".png"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 206
    new-instance v15, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$700(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 207
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v15, "saveFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 209
    invoke-static {v15}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->createFile(Ljava/io/File;)V

    .line 210
    invoke-static {v6, v15}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->copyFileToDestination(Ljava/io/File;Ljava/io/File;)V

    .line 203
    .end local v15    # "saveFile":Ljava/io/File;
    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 211
    .restart local v15    # "saveFile":Ljava/io/File;
    :cond_5
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 212
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v14

    .line 213
    .local v14, "resMkDir":Z
    const-string v19, "BackupManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "resMkDir = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 307
    .end local v2    # "clockListFile":Ljava/io/File;
    .end local v4    # "databaseFileDir":Ljava/io/File;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "files":[Ljava/io/File;
    .end local v8    # "filesFileDir":Ljava/io/File;
    .end local v9    # "files_count":I
    .end local v10    # "i":I
    .end local v11    # "prefFileDir":Ljava/io/File;
    .end local v14    # "resMkDir":Z
    .end local v15    # "saveFile":Ljava/io/File;
    .end local v16    # "wallpaperFileDir":Ljava/io/File;
    .end local v18    # "wappListFile":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 308
    .local v5, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 313
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :cond_6
    :goto_3
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 218
    .restart local v2    # "clockListFile":Ljava/io/File;
    .restart local v4    # "databaseFileDir":Ljava/io/File;
    .restart local v7    # "files":[Ljava/io/File;
    .restart local v8    # "filesFileDir":Ljava/io/File;
    .restart local v11    # "prefFileDir":Ljava/io/File;
    .restart local v16    # "wallpaperFileDir":Ljava/io/File;
    .restart local v18    # "wappListFile":Ljava/io/File;
    :cond_7
    :try_start_1
    const-string v19, "BackupManager"

    const-string v20, "there is no files to backup"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_8
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 222
    .local v12, "prefs":[Ljava/io/File;
    if-eqz v12, :cond_a

    .line 223
    const-string v19, "BackupManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "prefs file list count= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v12

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    array-length v13, v12

    .line 225
    .local v13, "prefs_count":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    if-ge v10, v13, :cond_b

    .line 226
    aget-object v6, v12, v10

    .line 227
    .restart local v6    # "file":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$800(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 228
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .restart local v15    # "saveFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$900(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 230
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$1000(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 231
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$1100(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 232
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$1200(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 233
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$1300(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 234
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$1400(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 235
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$1500(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 236
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$1600(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 237
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$1700(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 238
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$1800(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 239
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$1900(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 240
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$2000(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 241
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$2100(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 242
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$2200(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 243
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$2300(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 244
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$2400(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 245
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$2500(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 246
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$2600(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 247
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$2700(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 248
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$2800(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 249
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$2900(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 251
    invoke-static {v15}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->createFile(Ljava/io/File;)V

    .line 252
    invoke-static {v6, v15}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->copyFileToDestination(Ljava/io/File;Ljava/io/File;)V

    .line 254
    :cond_9
    const-string v19, "BackupManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "prefs file name= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " path= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 257
    .end local v6    # "file":Ljava/io/File;
    .end local v10    # "i":I
    .end local v13    # "prefs_count":I
    .end local v15    # "saveFile":Ljava/io/File;
    :cond_a
    const-string v19, "BackupManager"

    const-string v20, "there is no prefs to backup"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_b
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 260
    .local v3, "dataBaseFiles":[Ljava/io/File;
    const-string v19, "BackupManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "databaseFileDir "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    if-eqz v3, :cond_e

    .line 263
    const-string v19, "BackupManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "dataBaseFiles list count = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v3

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "rootofSrc = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v21, v0

    .line 264
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$600(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " rootofDest = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$400(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 263
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    array-length v9, v3

    .line 268
    .restart local v9    # "files_count":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_5
    if-ge v10, v9, :cond_f

    .line 269
    aget-object v6, v3, v10

    .line 270
    .restart local v6    # "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, ".db"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_c

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, ".db-journal"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 271
    :cond_c
    new-instance v15, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$3000(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 272
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .restart local v15    # "saveFile":Ljava/io/File;
    invoke-static {v15}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->createFile(Ljava/io/File;)V

    .line 275
    invoke-static {v6, v15}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->copyFileToDestination(Ljava/io/File;Ljava/io/File;)V

    .line 277
    const-string v19, "BackupManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "dataBase file name= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " path= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 278
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 277
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v15    # "saveFile":Ljava/io/File;
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 282
    .end local v6    # "file":Ljava/io/File;
    .end local v9    # "files_count":I
    .end local v10    # "i":I
    :cond_e
    const-string v19, "BackupManager"

    const-string v20, "there is no files to backup"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_f
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    .line 287
    .local v17, "wallpaperFiles":[Ljava/io/File;
    if-eqz v17, :cond_10

    .line 288
    const-string v19, "BackupManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "wallpaperFiles list count= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " rootofSrc= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v21, v0

    .line 289
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$600(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " rootofDest= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v21, v0

    .line 290
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$400(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 288
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    move-object/from16 v0, v17

    array-length v9, v0

    .line 294
    .restart local v9    # "files_count":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    if-ge v10, v9, :cond_6

    .line 295
    aget-object v6, v17, v10

    .line 296
    .restart local v6    # "file":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$3100(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .restart local v15    # "saveFile":Ljava/io/File;
    invoke-static {v15}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->createFile(Ljava/io/File;)V

    .line 299
    invoke-static {v6, v15}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->copyFileToDestination(Ljava/io/File;Ljava/io/File;)V

    .line 301
    const-string v19, "BackupManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "dataBase file name= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " path= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 304
    .end local v6    # "file":Ljava/io/File;
    .end local v9    # "files_count":I
    .end local v10    # "i":I
    .end local v15    # "saveFile":Ljava/io/File;
    :cond_10
    const-string v19, "BackupManager"

    const-string v20, "there is no files to backup"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 309
    .end local v2    # "clockListFile":Ljava/io/File;
    .end local v3    # "dataBaseFiles":[Ljava/io/File;
    .end local v4    # "databaseFileDir":Ljava/io/File;
    .end local v7    # "files":[Ljava/io/File;
    .end local v8    # "filesFileDir":Ljava/io/File;
    .end local v11    # "prefFileDir":Ljava/io/File;
    .end local v12    # "prefs":[Ljava/io/File;
    .end local v16    # "wallpaperFileDir":Ljava/io/File;
    .end local v17    # "wallpaperFiles":[Ljava/io/File;
    .end local v18    # "wappListFile":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 310
    .local v5, "e":Ljava/lang/Exception;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->bBackupFail:Z

    .line 311
    const-string v19, "Error: "

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 325
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->isCancel:Z

    .line 327
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$400(Lcom/samsung/android/hostmanager/br/BackupManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->DeleteDir(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/BackupManager;->onProgressCancel(I)V

    .line 329
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 112
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "file_url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 336
    const-string v2, "BackupManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostExecute file_url : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->isCancel:Z

    if-ne v2, v5, :cond_0

    .line 338
    const-string v2, "BackupManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostExecute isCancel : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->isCancel:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->bBackupFail:Z

    if-ne v2, v5, :cond_2

    .line 341
    const-string v2, "BackupManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostExecute bBackupFail : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->bBackupFail:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$000(Lcom/samsung/android/hostmanager/br/BackupManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$500(Lcom/samsung/android/hostmanager/br/BackupManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getIntCardPathForLocalBR(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "rootofDest":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "backUpDevInfo":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->bEmptyFile:Z

    if-eq v2, v5, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->bBackupFail:Z

    if-eq v2, v5, :cond_1

    .line 355
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$000(Lcom/samsung/android/hostmanager/br/BackupManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$500(Lcom/samsung/android/hostmanager/br/BackupManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    const-string v4, "backup_was_done"

    const-string v5, "true"

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->updatePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$300(Lcom/samsung/android/hostmanager/br/BackupManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/br/BackupManager;->sendBackupCompleteIntent(I)V

    .line 359
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$3200(Lcom/samsung/android/hostmanager/br/BackupManager;)V

    goto :goto_0

    .line 344
    .end local v0    # "backUpDevInfo":Ljava/io/File;
    .end local v1    # "rootofDest":Ljava/lang/String;
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->bEmptyFile:Z

    if-ne v2, v5, :cond_3

    .line 345
    const-string v2, "BackupManager"

    const-string v3, "Backup Fail.. Empty Impotant file.."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 347
    :cond_3
    const-string v2, "BackupManager"

    const-string v3, "onPostExecute onProgressComplete : Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3}, Lcom/samsung/android/hostmanager/br/BackupManager;->onProgressComplete(ILjava/util/ArrayList;)V

    .line 349
    const-string v2, "BackupManager"

    const-string v3, "onPostExecute onProgressComplete : End"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 126
    const-string v3, "BackupManager"

    const-string v4, "inside onPreExecute"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "clockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    const-string v3, "BackupManager"

    const-string v4, "going to call createClockListResultXML"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$100(Lcom/samsung/android/hostmanager/br/BackupManager;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v2, "wappList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-static {v3, v2}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$200(Lcom/samsung/android/hostmanager/br/BackupManager;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/br/BackupManager;->access$300(Lcom/samsung/android/hostmanager/br/BackupManager;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 148
    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->this$0:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/br/BackupManager;->initBackupPath()V

    .line 150
    :cond_0
    return-void

    .line 135
    .end local v2    # "wappList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "wappList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    .line 143
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 112
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/br/BackupManager$BackUpProgress;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/String;

    .prologue
    .line 321
    return-void
.end method
