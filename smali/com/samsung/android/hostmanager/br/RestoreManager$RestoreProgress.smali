.class Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;
.super Landroid/os/AsyncTask;
.source "RestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/br/RestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreProgress"
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
.field bRestoreFail:Z

.field isCancel:Z

.field final synthetic this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/br/RestoreManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/br/RestoreManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 280
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 278
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->bRestoreFail:Z

    .line 279
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->isCancel:Z

    .line 281
    invoke-static {p1, p2}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$002(Lcom/samsung/android/hostmanager/br/RestoreManager;Landroid/content/Context;)Landroid/content/Context;

    .line 282
    return-void
.end method


# virtual methods
.method DeleteDir(Ljava/lang/String;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 642
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v5

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

    .line 643
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_5

    .line 645
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 646
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 647
    .local v3, "childFileList":[Ljava/io/File;
    if-eqz v3, :cond_4

    .line 648
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeleteDir childFileList len = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    array-length v6, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v1, v3, v5

    .line 650
    .local v1, "childFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 651
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->DeleteDir(Ljava/lang/String;)V

    .line 649
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 653
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 654
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "clocklist.xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 655
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "wapplist.xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 656
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "fontlist.xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 657
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ttslist.xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 658
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$000(Lcom/samsung/android/hostmanager/br/RestoreManager;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-static {v9}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$100(Lcom/samsung/android/hostmanager/br/RestoreManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 660
    .local v0, "backupFileForDelete":Ljava/io/File;
    const-string v7, "clocklist.xml"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "wapplist.xml"

    .line 661
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 662
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 663
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DchildFileDeletefileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    .line 665
    .local v2, "childFileDeleteCheck":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DchildFileDeleteCheck = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 668
    .end local v2    # "childFileDeleteCheck":Z
    :cond_3
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DchildFileDeletefileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    .line 670
    .restart local v2    # "childFileDeleteCheck":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DchildFileDeleteCheck = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 676
    .end local v0    # "backupFileForDelete":Ljava/io/File;
    .end local v1    # "childFile":Ljava/io/File;
    .end local v2    # "childFileDeleteCheck":Z
    :cond_4
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DeleteDir path not exist!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .end local v3    # "childFileList":[Ljava/io/File;
    :cond_5
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 277
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 50
    .param p1, "arg"    # [Ljava/lang/String;

    .prologue
    .line 297
    const-wide/16 v8, 0x0

    .line 298
    .local v8, "count":J
    const/16 v20, 0x0

    .line 299
    .local v20, "lenghtOfTotalFile":I
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    .line 300
    .local v29, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .line 301
    .local v31, "mapInt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    .line 303
    .local v30, "mapBool":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$000(Lcom/samsung/android/hostmanager/br/RestoreManager;)Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getGearModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v32

    .line 306
    .local v32, "modelName":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$000(Lcom/samsung/android/hostmanager/br/RestoreManager;)Landroid/content/Context;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$100(Lcom/samsung/android/hostmanager/br/RestoreManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getIntCardPathForLocalBR(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v6, "backupFolder":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v46

    if-eqz v46, :cond_22

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$000(Lcom/samsung/android/hostmanager/br/RestoreManager;)Landroid/content/Context;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$100(Lcom/samsung/android/hostmanager/br/RestoreManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v18

    .line 309
    .local v18, "filesSrcPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$000(Lcom/samsung/android/hostmanager/br/RestoreManager;)Landroid/content/Context;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$100(Lcom/samsung/android/hostmanager/br/RestoreManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForPrefTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v36

    .line 310
    .local v36, "prefsSrcPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$000(Lcom/samsung/android/hostmanager/br/RestoreManager;)Landroid/content/Context;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$100(Lcom/samsung/android/hostmanager/br/RestoreManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDatabaseTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v10

    .line 311
    .local v10, "databaseSrcPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$000(Lcom/samsung/android/hostmanager/br/RestoreManager;)Landroid/content/Context;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$100(Lcom/samsung/android/hostmanager/br/RestoreManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForWallpaperBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v45

    .line 312
    .local v45, "wallpapersSrcPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$000(Lcom/samsung/android/hostmanager/br/RestoreManager;)Landroid/content/Context;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$100(Lcom/samsung/android/hostmanager/br/RestoreManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v14

    .line 313
    .local v14, "fileDestPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$000(Lcom/samsung/android/hostmanager/br/RestoreManager;)Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForSharePref(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v34

    .line 314
    .local v34, "prefsDestPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$000(Lcom/samsung/android/hostmanager/br/RestoreManager;)Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDatabases(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 315
    .local v11, "databasesDestPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$000(Lcom/samsung/android/hostmanager/br/RestoreManager;)Landroid/content/Context;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$100(Lcom/samsung/android/hostmanager/br/RestoreManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForWallpaper(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v43

    .line 316
    .local v43, "wallpapersDestPath":Ljava/lang/String;
    new-instance v46, Ljava/io/File;

    move-object/from16 v0, v46

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v46 .. v46}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v23

    .line 317
    .local v23, "listFiles":[Ljava/io/File;
    new-instance v46, Ljava/io/File;

    move-object/from16 v0, v46

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v46 .. v46}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v26

    .line 318
    .local v26, "listPrefs":[Ljava/io/File;
    new-instance v46, Ljava/io/File;

    move-object/from16 v0, v46

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v46 .. v46}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v21

    .line 320
    .local v21, "listDatabases":[Ljava/io/File;
    new-instance v44, Ljava/io/File;

    invoke-direct/range {v44 .. v45}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v44, "wallpapersDir":Ljava/io/File;
    const/16 v28, 0x0

    .line 323
    .local v28, "listWallpapers":[Ljava/io/File;
    invoke-virtual/range {v44 .. v44}, Ljava/io/File;->exists()Z

    move-result v46

    if-eqz v46, :cond_0

    .line 324
    invoke-virtual/range {v44 .. v44}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v28

    .line 326
    :cond_0
    if-eqz v23, :cond_1

    .line 327
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v46, v0

    add-int/lit8 v20, v46, 0x3

    .line 329
    :cond_1
    if-eqz v26, :cond_2

    .line 330
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v46, v0

    add-int v20, v20, v46

    .line 332
    :cond_2
    if-eqz v21, :cond_3

    .line 333
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v46, v0

    add-int v20, v20, v46

    .line 335
    :cond_3
    if-eqz v28, :cond_4

    .line 336
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v46, v0

    add-int v20, v20, v46

    .line 338
    :cond_4
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "doInBackground  lenghtOfTotalFile:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    if-eqz v23, :cond_d

    .line 341
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->DeleteDir(Ljava/lang/String;)V

    .line 342
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v13, "fileDestFolder":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v46

    if-nez v46, :cond_5

    .line 344
    invoke-virtual {v13}, Ljava/io/File;->mkdir()Z

    move-result v15

    .line 345
    .local v15, "filemkCheck":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "filemkCheck : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v15    # "filemkCheck":Z
    :cond_5
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    .line 348
    .local v24, "listFiles_count":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_e

    .line 349
    aget-object v22, v23, v19

    .line 350
    .local v22, "listFile":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isFile()Z

    move-result v46

    if-eqz v46, :cond_c

    .line 351
    aget-object v46, v23, v19

    invoke-virtual/range {v46 .. v46}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v46

    aget-object v47, v23, v19

    .line 352
    invoke-virtual/range {v47 .. v47}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x2f

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v47

    add-int/lit8 v47, v47, 0x1

    .line 351
    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 353
    .local v16, "filename":Ljava/lang/String;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sget-object v47, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 354
    .local v17, "filepath":Ljava/lang/String;
    new-instance v38, Ljava/io/File;

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 355
    .local v38, "saveFile":Ljava/io/File;
    const-string v46, "clocklist.xml"

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_6

    const-string v46, "wapplist.xml"

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_6

    const-string v46, "fontlist.xml"

    .line 356
    move-object/from16 v0, v16

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_6

    const-string v46, "ttslist.xml"

    .line 357
    move-object/from16 v0, v16

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_7

    .line 358
    :cond_6
    const-wide/16 v46, 0x1

    add-long v8, v8, v46

    .line 359
    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->publishProgress([Ljava/lang/Object;)V

    .line 348
    .end local v16    # "filename":Ljava/lang/String;
    .end local v17    # "filepath":Ljava/lang/String;
    .end local v38    # "saveFile":Ljava/io/File;
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 362
    .restart local v16    # "filename":Ljava/lang/String;
    .restart local v17    # "filepath":Ljava/lang/String;
    .restart local v38    # "saveFile":Ljava/io/File;
    :cond_7
    const/16 v46, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/File;->setReadable(Z)Z

    move-result v40

    .line 363
    .local v40, "saveFileReadCheck":Z
    invoke-static/range {v38 .. v38}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->createFile(Ljava/io/File;)V

    .line 364
    if-nez v40, :cond_8

    .line 366
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    const-string v47, "permission denied---"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_8
    const/16 v46, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    move-result v41

    .line 369
    .local v41, "saveFileWriteCheck":Z
    if-nez v41, :cond_9

    .line 371
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    const-string v47, "permission denied---"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_9
    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->copyFileToDestination(Ljava/io/File;Ljava/io/File;)V

    .line 378
    .end local v16    # "filename":Ljava/lang/String;
    .end local v17    # "filepath":Ljava/lang/String;
    .end local v38    # "saveFile":Ljava/io/File;
    .end local v40    # "saveFileReadCheck":Z
    .end local v41    # "saveFileWriteCheck":Z
    :cond_a
    :goto_2
    const-wide/16 v46, 0x1

    add-long v8, v8, v46

    .line 379
    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->publishProgress([Ljava/lang/Object;)V

    .line 381
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "files file name= "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " path= "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 586
    .end local v6    # "backupFolder":Ljava/io/File;
    .end local v10    # "databaseSrcPath":Ljava/lang/String;
    .end local v11    # "databasesDestPath":Ljava/lang/String;
    .end local v13    # "fileDestFolder":Ljava/io/File;
    .end local v14    # "fileDestPath":Ljava/lang/String;
    .end local v18    # "filesSrcPath":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v21    # "listDatabases":[Ljava/io/File;
    .end local v22    # "listFile":Ljava/io/File;
    .end local v23    # "listFiles":[Ljava/io/File;
    .end local v24    # "listFiles_count":I
    .end local v26    # "listPrefs":[Ljava/io/File;
    .end local v28    # "listWallpapers":[Ljava/io/File;
    .end local v34    # "prefsDestPath":Ljava/lang/String;
    .end local v36    # "prefsSrcPath":Ljava/lang/String;
    .end local v43    # "wallpapersDestPath":Ljava/lang/String;
    .end local v44    # "wallpapersDir":Ljava/io/File;
    .end local v45    # "wallpapersSrcPath":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 587
    .local v12, "e":Ljava/lang/RuntimeException;
    const/16 v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->bRestoreFail:Z

    .line 588
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 593
    .end local v12    # "e":Ljava/lang/RuntimeException;
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$1602(Lcom/samsung/android/hostmanager/br/RestoreManager;Z)Z

    .line 594
    const/16 v46, 0x0

    :goto_4
    return-object v46

    .line 374
    .restart local v6    # "backupFolder":Ljava/io/File;
    .restart local v10    # "databaseSrcPath":Ljava/lang/String;
    .restart local v11    # "databasesDestPath":Ljava/lang/String;
    .restart local v13    # "fileDestFolder":Ljava/io/File;
    .restart local v14    # "fileDestPath":Ljava/lang/String;
    .restart local v18    # "filesSrcPath":Ljava/lang/String;
    .restart local v19    # "i":I
    .restart local v21    # "listDatabases":[Ljava/io/File;
    .restart local v22    # "listFile":Ljava/io/File;
    .restart local v23    # "listFiles":[Ljava/io/File;
    .restart local v24    # "listFiles_count":I
    .restart local v26    # "listPrefs":[Ljava/io/File;
    .restart local v28    # "listWallpapers":[Ljava/io/File;
    .restart local v34    # "prefsDestPath":Ljava/lang/String;
    .restart local v36    # "prefsSrcPath":Ljava/lang/String;
    .restart local v43    # "wallpapersDestPath":Ljava/lang/String;
    .restart local v44    # "wallpapersDir":Ljava/io/File;
    .restart local v45    # "wallpapersSrcPath":Ljava/lang/String;
    :cond_c
    :try_start_1
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isDirectory()Z

    move-result v46

    if-eqz v46, :cond_a

    .line 375
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdirs()Z

    move-result v37

    .line 376
    .local v37, "resMkDir":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "resMkDir = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 589
    .end local v6    # "backupFolder":Ljava/io/File;
    .end local v10    # "databaseSrcPath":Ljava/lang/String;
    .end local v11    # "databasesDestPath":Ljava/lang/String;
    .end local v13    # "fileDestFolder":Ljava/io/File;
    .end local v14    # "fileDestPath":Ljava/lang/String;
    .end local v18    # "filesSrcPath":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v21    # "listDatabases":[Ljava/io/File;
    .end local v22    # "listFile":Ljava/io/File;
    .end local v23    # "listFiles":[Ljava/io/File;
    .end local v24    # "listFiles_count":I
    .end local v26    # "listPrefs":[Ljava/io/File;
    .end local v28    # "listWallpapers":[Ljava/io/File;
    .end local v34    # "prefsDestPath":Ljava/lang/String;
    .end local v36    # "prefsSrcPath":Ljava/lang/String;
    .end local v37    # "resMkDir":Z
    .end local v43    # "wallpapersDestPath":Ljava/lang/String;
    .end local v44    # "wallpapersDir":Ljava/io/File;
    .end local v45    # "wallpapersSrcPath":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 590
    .local v12, "e":Ljava/lang/Exception;
    const/16 v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->bRestoreFail:Z

    .line 591
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 385
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v6    # "backupFolder":Ljava/io/File;
    .restart local v10    # "databaseSrcPath":Ljava/lang/String;
    .restart local v11    # "databasesDestPath":Ljava/lang/String;
    .restart local v14    # "fileDestPath":Ljava/lang/String;
    .restart local v18    # "filesSrcPath":Ljava/lang/String;
    .restart local v21    # "listDatabases":[Ljava/io/File;
    .restart local v23    # "listFiles":[Ljava/io/File;
    .restart local v26    # "listPrefs":[Ljava/io/File;
    .restart local v28    # "listWallpapers":[Ljava/io/File;
    .restart local v34    # "prefsDestPath":Ljava/lang/String;
    .restart local v36    # "prefsSrcPath":Ljava/lang/String;
    .restart local v43    # "wallpapersDestPath":Ljava/lang/String;
    .restart local v44    # "wallpapersDir":Ljava/io/File;
    .restart local v45    # "wallpapersSrcPath":Ljava/lang/String;
    :cond_d
    :try_start_2
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    const-string v47, "there is no files to restore"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/16 v46, 0x0

    goto :goto_4

    .line 390
    .restart local v13    # "fileDestFolder":Ljava/io/File;
    .restart local v19    # "i":I
    .restart local v24    # "listFiles_count":I
    :cond_e
    if-eqz v26, :cond_17

    .line 391
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    const-string v47, "Restore Prefs !!"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v33, Ljava/io/File;

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    .local v33, "prefsDestFolder":Ljava/io/File;
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v46

    if-nez v46, :cond_f

    .line 394
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->mkdir()Z

    move-result v37

    .line 395
    .restart local v37    # "resMkDir":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "resMkDir = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v37    # "resMkDir":Z
    :cond_f
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    .line 398
    .local v27, "listPrefs_count":I
    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_18

    .line 399
    aget-object v25, v26, v19

    .line 400
    .local v25, "listPref":Ljava/io/File;
    aget-object v46, v26, v19

    invoke-virtual/range {v46 .. v46}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v46

    aget-object v47, v26, v19

    .line 401
    invoke-virtual/range {v47 .. v47}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x2f

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v47

    add-int/lit8 v47, v47, 0x1

    .line 400
    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 402
    .restart local v16    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$300(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    .line 403
    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$400(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    .line 404
    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$500(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    .line 405
    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$600(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    .line 406
    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$700(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    .line 407
    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$800(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    .line 408
    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$900(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    .line 409
    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$1000(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    .line 410
    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$1100(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    .line 411
    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$1200(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    .line 412
    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$1300(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    .line 413
    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$1400(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    .line 414
    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$1500(Lcom/samsung/android/hostmanager/br/RestoreManager;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_11

    .line 416
    :cond_10
    const-wide/16 v46, 0x1

    add-long v8, v8, v46

    .line 417
    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->publishProgress([Ljava/lang/Object;)V

    .line 398
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_5

    .line 431
    :cond_11
    const-string v46, "hm_shared_preference.xml"

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$1600(Lcom/samsung/android/hostmanager/br/RestoreManager;)Z

    move-result v46

    if-eqz v46, :cond_13

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "_"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "installed_clock_app.xml"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_12

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "_"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "installed_wapp_app.xml"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    .line 432
    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_12

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "_"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "installed_wgt_only_app.xml"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    .line 433
    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_12

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "_"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "installed_wgt_sign_data.xml"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    .line 434
    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_13

    .line 435
    :cond_12
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "pref_log doInBackground() check pref "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->clear()V

    .line 437
    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->clear()V

    .line 438
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->clear()V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    move-object/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$1700(Lcom/samsung/android/hostmanager/br/RestoreManager;Ljava/io/File;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v47

    const-string v48, ".xml"

    const-string v49, ""

    invoke-virtual/range {v47 .. v49}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    move-object/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$1800(Lcom/samsung/android/hostmanager/br/RestoreManager;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 441
    const-wide/16 v46, 0x1

    add-long v8, v8, v46

    .line 442
    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 445
    :cond_13
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sget-object v47, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 446
    .local v35, "prefsPath":Ljava/lang/String;
    new-instance v38, Ljava/io/File;

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    .restart local v38    # "saveFile":Ljava/io/File;
    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->exists()Z

    move-result v46

    if-eqz v46, :cond_14

    .line 448
    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->delete()Z

    move-result v39

    .line 449
    .local v39, "saveFileDeleteCheck":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "saveFileDeleteCheck : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v39    # "saveFileDeleteCheck":Z
    :cond_14
    invoke-static/range {v38 .. v38}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->createFile(Ljava/io/File;)V

    .line 452
    const/16 v46, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/File;->setReadable(Z)Z

    move-result v40

    .line 453
    .restart local v40    # "saveFileReadCheck":Z
    if-nez v40, :cond_15

    .line 455
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    const-string v47, "permission denied---"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_15
    const/16 v46, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    move-result v41

    .line 458
    .restart local v41    # "saveFileWriteCheck":Z
    if-nez v41, :cond_16

    .line 460
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    const-string v47, "permission denied---"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_16
    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->copyFileToDestination(Ljava/io/File;Ljava/io/File;)V

    .line 464
    const-wide/16 v46, 0x1

    add-long v8, v8, v46

    .line 466
    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 471
    .end local v16    # "filename":Ljava/lang/String;
    .end local v25    # "listPref":Ljava/io/File;
    .end local v27    # "listPrefs_count":I
    .end local v33    # "prefsDestFolder":Ljava/io/File;
    .end local v35    # "prefsPath":Ljava/lang/String;
    .end local v38    # "saveFile":Ljava/io/File;
    .end local v40    # "saveFileReadCheck":Z
    .end local v41    # "saveFileWriteCheck":Z
    :cond_17
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    const-string v47, "there is no prefs to restore"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/16 v46, 0x0

    goto/16 :goto_4

    .line 475
    .restart local v27    # "listPrefs_count":I
    .restart local v33    # "prefsDestFolder":Ljava/io/File;
    :cond_18
    if-eqz v21, :cond_1c

    .line 476
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    const-string v47, "listDatabases Files !!"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->DeleteDir(Ljava/lang/String;)V

    .line 478
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v7, "databaseDestFolder":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v46

    if-nez v46, :cond_19

    .line 480
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    move-result v15

    .line 481
    .restart local v15    # "filemkCheck":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "databaseDestFolder : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .end local v15    # "filemkCheck":Z
    :cond_19
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v24, v0

    .line 484
    const/16 v19, 0x0

    :goto_7
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_1d

    .line 485
    aget-object v22, v21, v19

    .line 486
    .restart local v22    # "listFile":Ljava/io/File;
    aget-object v46, v21, v19

    invoke-virtual/range {v46 .. v46}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v46

    aget-object v47, v21, v19

    .line 487
    invoke-virtual/range {v47 .. v47}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x2f

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v47

    add-int/lit8 v47, v47, 0x1

    .line 486
    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 488
    .restart local v16    # "filename":Ljava/lang/String;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sget-object v47, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 489
    .restart local v17    # "filepath":Ljava/lang/String;
    new-instance v38, Ljava/io/File;

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    .restart local v38    # "saveFile":Ljava/io/File;
    invoke-static/range {v38 .. v38}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->createFile(Ljava/io/File;)V

    .line 492
    const/16 v46, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/File;->setReadable(Z)Z

    move-result v40

    .line 493
    .restart local v40    # "saveFileReadCheck":Z
    if-nez v40, :cond_1a

    .line 495
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    const-string v47, "permission denied---"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_1a
    const/16 v46, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    move-result v41

    .line 498
    .restart local v41    # "saveFileWriteCheck":Z
    if-nez v41, :cond_1b

    .line 500
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    const-string v47, "permission denied---"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_1b
    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->copyFileToDestination(Ljava/io/File;Ljava/io/File;)V

    .line 503
    const-wide/16 v46, 0x1

    add-long v8, v8, v46

    .line 505
    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->publishProgress([Ljava/lang/Object;)V

    .line 484
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_7

    .line 509
    .end local v7    # "databaseDestFolder":Ljava/io/File;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v17    # "filepath":Ljava/lang/String;
    .end local v22    # "listFile":Ljava/io/File;
    .end local v38    # "saveFile":Ljava/io/File;
    .end local v40    # "saveFileReadCheck":Z
    .end local v41    # "saveFileWriteCheck":Z
    :cond_1c
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    const-string v47, "there is no Databases to restore"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/16 v46, 0x0

    goto/16 :goto_4

    .line 513
    .restart local v7    # "databaseDestFolder":Ljava/io/File;
    :cond_1d
    if-eqz v28, :cond_21

    .line 514
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    const-string v47, "listWallpapers Files !!"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->DeleteDir(Ljava/lang/String;)V

    .line 516
    new-instance v42, Ljava/io/File;

    invoke-direct/range {v42 .. v43}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 517
    .local v42, "wallpaperDestFolder":Ljava/io/File;
    invoke-virtual/range {v42 .. v42}, Ljava/io/File;->exists()Z

    move-result v46

    if-nez v46, :cond_1e

    .line 518
    invoke-virtual/range {v42 .. v42}, Ljava/io/File;->mkdir()Z

    move-result v15

    .line 519
    .restart local v15    # "filemkCheck":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "wallpaperDestFolder : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .end local v15    # "filemkCheck":Z
    :cond_1e
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v24, v0

    .line 522
    const/16 v19, 0x0

    :goto_8
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_23

    .line 523
    aget-object v22, v28, v19

    .line 524
    .restart local v22    # "listFile":Ljava/io/File;
    aget-object v46, v28, v19

    invoke-virtual/range {v46 .. v46}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v46

    aget-object v47, v28, v19

    .line 525
    invoke-virtual/range {v47 .. v47}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x2f

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v47

    add-int/lit8 v47, v47, 0x1

    .line 524
    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 526
    .restart local v16    # "filename":Ljava/lang/String;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sget-object v47, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 527
    .restart local v17    # "filepath":Ljava/lang/String;
    new-instance v38, Ljava/io/File;

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 529
    .restart local v38    # "saveFile":Ljava/io/File;
    invoke-static/range {v38 .. v38}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->createFile(Ljava/io/File;)V

    .line 530
    const/16 v46, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/File;->setReadable(Z)Z

    move-result v40

    .line 531
    .restart local v40    # "saveFileReadCheck":Z
    if-nez v40, :cond_1f

    .line 533
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    const-string v47, "permission denied---"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_1f
    const/16 v46, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    move-result v41

    .line 536
    .restart local v41    # "saveFileWriteCheck":Z
    if-nez v41, :cond_20

    .line 538
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    const-string v47, "permission denied---"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_20
    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->copyFileToDestination(Ljava/io/File;Ljava/io/File;)V

    .line 541
    const-wide/16 v46, 0x1

    add-long v8, v8, v46

    .line 543
    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->publishProgress([Ljava/lang/Object;)V

    .line 522
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_8

    .line 547
    .end local v16    # "filename":Ljava/lang/String;
    .end local v17    # "filepath":Ljava/lang/String;
    .end local v22    # "listFile":Ljava/io/File;
    .end local v38    # "saveFile":Ljava/io/File;
    .end local v40    # "saveFileReadCheck":Z
    .end local v41    # "saveFileWriteCheck":Z
    .end local v42    # "wallpaperDestFolder":Ljava/io/File;
    :cond_21
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    const-string v47, "there is no Wallpapers to restore"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/16 v46, 0x0

    goto/16 :goto_4

    .line 551
    .end local v7    # "databaseDestFolder":Ljava/io/File;
    .end local v10    # "databaseSrcPath":Ljava/lang/String;
    .end local v11    # "databasesDestPath":Ljava/lang/String;
    .end local v13    # "fileDestFolder":Ljava/io/File;
    .end local v14    # "fileDestPath":Ljava/lang/String;
    .end local v18    # "filesSrcPath":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v21    # "listDatabases":[Ljava/io/File;
    .end local v23    # "listFiles":[Ljava/io/File;
    .end local v24    # "listFiles_count":I
    .end local v26    # "listPrefs":[Ljava/io/File;
    .end local v27    # "listPrefs_count":I
    .end local v28    # "listWallpapers":[Ljava/io/File;
    .end local v33    # "prefsDestFolder":Ljava/io/File;
    .end local v34    # "prefsDestPath":Ljava/lang/String;
    .end local v36    # "prefsSrcPath":Ljava/lang/String;
    .end local v43    # "wallpapersDestPath":Ljava/lang/String;
    .end local v44    # "wallpapersDir":Ljava/io/File;
    .end local v45    # "wallpapersSrcPath":Ljava/lang/String;
    :cond_22
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    const-string v47, "there is no Backup Folder to restore"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/16 v46, 0x0

    goto/16 :goto_4

    .line 555
    .restart local v7    # "databaseDestFolder":Ljava/io/File;
    .restart local v10    # "databaseSrcPath":Ljava/lang/String;
    .restart local v11    # "databasesDestPath":Ljava/lang/String;
    .restart local v13    # "fileDestFolder":Ljava/io/File;
    .restart local v14    # "fileDestPath":Ljava/lang/String;
    .restart local v18    # "filesSrcPath":Ljava/lang/String;
    .restart local v19    # "i":I
    .restart local v21    # "listDatabases":[Ljava/io/File;
    .restart local v23    # "listFiles":[Ljava/io/File;
    .restart local v24    # "listFiles_count":I
    .restart local v26    # "listPrefs":[Ljava/io/File;
    .restart local v27    # "listPrefs_count":I
    .restart local v28    # "listWallpapers":[Ljava/io/File;
    .restart local v33    # "prefsDestFolder":Ljava/io/File;
    .restart local v34    # "prefsDestPath":Ljava/lang/String;
    .restart local v36    # "prefsSrcPath":Ljava/lang/String;
    .restart local v42    # "wallpaperDestFolder":Ljava/io/File;
    .restart local v43    # "wallpapersDestPath":Ljava/lang/String;
    .restart local v44    # "wallpapersDir":Ljava/io/File;
    .restart local v45    # "wallpapersSrcPath":Ljava/lang/String;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$1900(Lcom/samsung/android/hostmanager/br/RestoreManager;)I

    .line 557
    const-wide/16 v46, 0x1

    add-long v8, v8, v46

    .line 559
    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->publishProgress([Ljava/lang/Object;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->verifyClockAppPreloadState()V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->verifyWatchAppPreloadState()V

    .line 566
    const-wide/16 v46, 0x1

    add-long v8, v8, v46

    .line 568
    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->publishProgress([Ljava/lang/Object;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->verifyFontAppPreloadState()V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/samsung/android/hostmanager/br/RestoreManager;->removeTTSAppDuringRestore()V

    .line 578
    const-wide/16 v46, 0x1

    add-long v8, v8, v46

    .line 580
    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->publishProgress([Ljava/lang/Object;)V

    .line 581
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "After Restore lenghtOfTotalFile:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "After Restore count:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v46, v0

    cmp-long v46, v8, v46

    if-gez v46, :cond_b

    .line 584
    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->publishProgress([Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 608
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->isCancel:Z

    .line 610
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreManager;->onProgressCancel(I)V

    .line 611
    invoke-super {p0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 612
    return-void
.end method

.method public onForceStop()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$2100(Lcom/samsung/android/hostmanager/br/RestoreManager;)Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->onCancelled()V

    .line 683
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 277
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "file_url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 620
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->isCancel:Z

    if-ne v2, v3, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->bRestoreFail:Z

    if-ne v2, v3, :cond_2

    .line 624
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bRestoreFail = true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$2000(Lcom/samsung/android/hostmanager/br/RestoreManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 626
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$2000(Lcom/samsung/android/hostmanager/br/RestoreManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1774

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 627
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 628
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "desc"

    const-string v3, "Error"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v2, "progress"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 630
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 631
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 632
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$2002(Lcom/samsung/android/hostmanager/br/RestoreManager;Landroid/os/Handler;)Landroid/os/Handler;

    goto :goto_0

    .line 637
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/hostmanager/br/RestoreManager;->onProgressComplete(ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 287
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 288
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 277
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 3
    .param p1, "progress"    # [Ljava/lang/String;

    .prologue
    .line 603
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreManager$RestoreProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/br/RestoreManager;->access$000(Lcom/samsung/android/hostmanager/br/RestoreManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/RestoreManager;->onUpdate(Ljava/lang/String;I)V

    .line 604
    return-void
.end method
