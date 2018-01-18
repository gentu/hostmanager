.class Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;
.super Landroid/os/Handler;
.source "AppDataBackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/br/AppDataBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/br/AppDataBackupManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    const/4 v5, -0x1

    const/4 v9, 0x0

    .line 123
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 124
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage msg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$100(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-static {v7}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$200(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;)I

    move-result v7

    if-le v6, v7, :cond_1

    .line 127
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Value of mAppListIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-static {v7}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$200(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "MacId":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$300(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v5

    iget-object v0, v5, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    .line 131
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NewDeviceIdAPI:handleMessage macid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$300(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v6

    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$100(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;)Ljava/util/List;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-static {v7}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$200(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;)I

    move-result v7

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/hostmanager/aidl/BackupInfo;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v0, v5, v10}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->backupWearable(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 136
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$208(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;)I

    .line 173
    .end local v0    # "MacId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setListenerBR(Landroid/os/Handler;)V

    .line 139
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-static {v6, v9}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$202(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;I)I

    .line 141
    const/4 v4, -0x1

    .line 143
    .local v4, "selectedAccount":I
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$400(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-static {v7}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$300(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v7

    iget-object v7, v7, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    const-string v8, "backup_restore_mode"

    invoke-static {v6, v7, v8}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "brModePref":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 145
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    move v4, v5

    .line 147
    :cond_2
    :goto_1
    if-eq v4, v10, :cond_4

    .line 148
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No more apps to back up "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$200(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    iget-boolean v6, v6, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mIsBackupActive:Z

    if-eqz v6, :cond_3

    .line 155
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Invoke System backup"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    const/4 v7, 0x0

    sget v8, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->BACKUP_TYPE:I

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->doBackup(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    iput-boolean v9, v6, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mIsBackupActive:Z

    .line 166
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$500(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 167
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.android.app.watchmanager_BACKUP_COMPLETE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SCloud backup, sending broadcast"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$400(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 170
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-static {v6, v5}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->access$502(Lcom/samsung/android/hostmanager/br/AppDataBackupManager;I)I

    goto/16 :goto_0

    .line 145
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    iput-boolean v9, v6, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mIsBackupActive:Z

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager$1;->this$0:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    iput-boolean v9, v6, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->mIsBackupActive:Z

    throw v5
.end method
