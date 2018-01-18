.class Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;
.super Landroid/os/Handler;
.source "AppDataRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestoreHandler"
.end annotation


# instance fields
.field private final mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "appDataRestoreManager"    # Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 647
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 648
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;->mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    .line 649
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0xbb8

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 653
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 655
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_3

    .line 657
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v6, "entered in the try of RESTORE_SETTINGS"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;->mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    if-eqz v3, :cond_1

    .line 659
    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;->mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->restoreResoreSettings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;->mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    if-eqz v3, :cond_2

    .line 667
    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;->mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    const/16 v6, 0x63

    invoke-static {v3, v6}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$600(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;I)V

    .line 671
    :goto_1
    invoke-virtual {p0, v8, v10, v11}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 712
    :cond_0
    :goto_2
    return-void

    .line 661
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v6, "mAppDataRestoreManager is null!!!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 669
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v6, "mAppDataRestoreManager is null!!!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 672
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v7, :cond_6

    .line 675
    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;->mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    if-eqz v3, :cond_5

    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 678
    .local v4, "timeInMillis":J
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 679
    .local v2, "time":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createRestoreTimePreference2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;->mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    .line 681
    invoke-static {v7}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$100(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v7

    .line 682
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->getConnectedDeviceType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 679
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    sget-object v3, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;->mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    .line 685
    invoke-static {v7}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$100(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v7

    .line 686
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->getConnectedDeviceType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_restore_time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 683
    invoke-static {v3, v6, v2}, Lcom/samsung/android/hostmanager/br/BackupManager;->createRestoreTimePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    sget-object v3, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;->mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    .line 691
    invoke-static {v6}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$100(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    const-string v7, "last_restore_time"

    .line 689
    invoke-static {v3, v6, v7, v2}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->updatePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;->mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$700(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 694
    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;->mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    .line 695
    invoke-static {v3}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$700(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v6, 0x1772

    .line 694
    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 697
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 699
    .end local v1    # "message":Landroid/os/Message;
    :cond_4
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RESTORE_COMPLETE: TIME: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 701
    .end local v2    # "time":Ljava/lang/String;
    .end local v4    # "timeInMillis":J
    :cond_5
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v6, "mAppDataRestoreManager is null!!!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 704
    :cond_6
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v8, :cond_0

    .line 705
    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;->mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    if-eqz v3, :cond_7

    .line 706
    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;->mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    const/16 v6, 0x64

    invoke-static {v3, v6}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$600(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;I)V

    .line 710
    :goto_3
    invoke-virtual {p0, v7, v10, v11}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 708
    :cond_7
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v6, "mAppDataRestoreManager is null!!!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
