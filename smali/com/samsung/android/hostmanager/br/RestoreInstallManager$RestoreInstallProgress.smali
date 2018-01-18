.class Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;
.super Landroid/os/AsyncTask;
.source "RestoreInstallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/br/RestoreInstallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreInstallProgress"
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

.field isNoInstallApp:Z

.field final synthetic this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/br/RestoreInstallManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 168
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 164
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->bRestoreFail:Z

    .line 165
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->isCancel:Z

    .line 166
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->isNoInstallApp:Z

    .line 169
    invoke-static {p1, p2}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$002(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;Landroid/content/Context;)Landroid/content/Context;

    .line 170
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 163
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "arg"    # [Ljava/lang/String;

    .prologue
    .line 198
    const/4 v6, 0x1

    sput-boolean v6, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreInstallProgress:Z

    .line 200
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    iget v6, v6, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->lenghtOfTotalFile:I

    if-lez v6, :cond_4

    .line 201
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$300(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 202
    .local v4, "reInstallList_count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_4

    .line 203
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$600()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reinstall Start = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$300(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/hostmanager/br/ReinstallInfo;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->isInstallFinish:Z

    .line 205
    iget-object v7, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$300(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/hostmanager/br/ReinstallInfo;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$702(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    iget-object v7, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$300(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/hostmanager/br/ReinstallInfo;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->getbPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$802(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$600()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HPackage "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$700(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " BPackage ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$800(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v5, -0x1

    .line 210
    .local v5, "result":I
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$700(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "kr.co.rightbrain.RetailModeB2Provider"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 212
    new-instance v2, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;

    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$700(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "E7ySa6930D"

    invoke-direct {v2, v6, v7}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .local v2, "info":Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$200(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    const-string v7, "kr.co.rightbrain.RetailModeB2Provider"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$900(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;Ljava/lang/String;)V

    .line 215
    const/4 v5, 0x1

    .line 228
    .end local v2    # "info":Lcom/samsung/android/hostmanager/br/RestoreInstallManager$PackageNameInfo;
    :cond_0
    :goto_1
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$600()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Result of Restore App Case "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 231
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->isInstallFinish:Z

    .line 236
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$1100(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;

    move-result-object v7

    monitor-enter v7

    .line 238
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$600()Ljava/lang/String;

    move-result-object v6

    const-string v8, "doInBackground() Wait for install response"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$1100(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V

    .line 241
    sget-boolean v6, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreInstallProgress:Z

    if-nez v6, :cond_2

    .line 242
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$600()Ljava/lang/String;

    move-result-object v6

    const-string v8, "STOP Install"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->bRestoreFail:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    const/4 v6, 0x0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    .end local v1    # "i":I
    .end local v4    # "reInstallList_count":I
    .end local v5    # "result":I
    :goto_2
    return-object v6

    .line 217
    .restart local v1    # "i":I
    .restart local v4    # "reInstallList_count":I
    .restart local v5    # "result":I
    :cond_1
    const/4 v3, 0x0

    .line 219
    .local v3, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_start_2
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v7}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$1000(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v7

    iget-object v7, v7, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_end_2
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .line 223
    :goto_3
    if-eqz v3, :cond_0

    .line 224
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$700(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v7}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$800(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->restoreTizenApp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_3

    .line 246
    .end local v0    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    .end local v3    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :catch_1
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 249
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    :cond_3
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$600()Ljava/lang/String;

    move-result-object v6

    const-string v7, "doInBackground() proceed to install next app"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$300(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/hostmanager/br/ReinstallInfo;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/br/ReinstallInfo;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v8

    const/4 v6, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    iget-wide v10, v9, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->count:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {p0, v7}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->publishProgress([Ljava/lang/Object;)V

    .line 253
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    iget-wide v8, v6, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->count:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->count:J

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 249
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 262
    .end local v1    # "i":I
    .end local v4    # "reInstallList_count":I
    .end local v5    # "result":I
    :cond_4
    const/4 v6, 0x0

    sput-boolean v6, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreAfterReset:Z

    .line 263
    const/4 v6, 0x0

    sput-boolean v6, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreInstallProgress:Z

    .line 264
    const/4 v6, 0x0

    goto/16 :goto_2
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 274
    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 275
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->isCancel:Z

    .line 276
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->onProgressCancel(I)V

    .line 278
    return-void
.end method

.method public onForceStop()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$1100(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->onCancelled()V

    .line 311
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 163
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "file_url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 282
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreInstallProgress:Z

    .line 284
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->isCancel:Z

    if-ne v2, v3, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->bRestoreFail:Z

    if-ne v2, v3, :cond_2

    .line 288
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bRestoreFail = true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$1200(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$1200(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1774

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 291
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "desc"

    const-string v3, "Error"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v2, "progress"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 295
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 296
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v2, v5}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$1202(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;Landroid/os/Handler;)Landroid/os/Handler;

    goto :goto_0

    .line 298
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->isNoInstallApp:Z

    if-ne v2, v3, :cond_4

    .line 299
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$1300(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 300
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$1300(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->onProgressComplete(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 302
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->onProgressComplete(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 305
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$1300(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->onProgressComplete(ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$100(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$200(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$300(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$300(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$400(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$500(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$300(Lcom/samsung/android/hostmanager/br/RestoreInstallManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->lenghtOfTotalFile:I

    .line 186
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total Reinstall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    iget v2, v2, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->lenghtOfTotalFile:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    iget v0, v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->lenghtOfTotalFile:I

    if-lez v0, :cond_1

    .line 193
    :goto_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 194
    return-void

    .line 191
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->isNoInstallApp:Z

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 163
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 4
    .param p1, "progress"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 268
    invoke-static {}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressUpdate Integer.parseInt(progress[0]):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager$RestoreInstallProgress;->this$0:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    aget-object v2, p1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->onUpdate(Ljava/lang/String;I)V

    .line 270
    return-void
.end method
