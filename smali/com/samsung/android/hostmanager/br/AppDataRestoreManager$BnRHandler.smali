.class Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;
.super Landroid/os/Handler;
.source "AppDataRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BnRHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    .line 555
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 556
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 560
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 561
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage msg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v0, 0x0

    .line 564
    .local v0, "MacId":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$100(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v8

    iget-object v0, v8, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    .line 565
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NewDeviceIdAPI:handleMessage macid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$200(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    .line 571
    .local v1, "appListSize":I
    :goto_0
    if-lez v1, :cond_0

    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$300(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)I

    move-result v8

    if-le v1, v8, :cond_0

    .line 572
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->bPkgPresent()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 579
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$300(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)I

    move-result v8

    if-le v1, v8, :cond_2

    .line 580
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Value of appListIndex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v10}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$300(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$100(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v9

    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$200(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Ljava/util/List;

    move-result-object v8

    iget-object v10, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v10}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$300(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)I

    move-result v10

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/aidl/BackupInfo;

    const-string v10, "1"

    const-string v11, "1"

    invoke-virtual {v9, v8, v0, v10, v11}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->restoreWearable(Lcom/samsung/android/hostmanager/aidl/BackupInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 582
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$200(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Ljava/util/List;

    move-result-object v8

    iget-object v11, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v11}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$300(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)I

    move-result v11

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/aidl/BackupInfo;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->getPkgName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$200(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Ljava/util/List;

    move-result-object v8

    iget-object v10, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v10}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$300(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)I

    move-result v10

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/aidl/BackupInfo;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->getPkgName()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v10}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$300(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)I

    move-result v10

    invoke-virtual {v9, v8, v10}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->onUpdate(Ljava/lang/String;I)V

    .line 584
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$308(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)I

    .line 610
    :goto_1
    return-void

    .line 575
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$308(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)I

    goto/16 :goto_0

    .line 587
    :cond_2
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "App Data Restore Completed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.samsung.android.hostmanager.SYSTEM_RESTORE_COMPLETE"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 590
    .local v6, "timeInMillis":J
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 591
    .local v5, "time":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createRestoreTimePreference1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v10}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$100(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->getConnectedDeviceType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    sget-object v8, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v10}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$100(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->getConnectedDeviceType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_restore_time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Lcom/samsung/android/hostmanager/br/BackupManager;->createRestoreTimePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v8, "LAST_RESTORE_TIME"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    sget-object v8, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 596
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->RestoreStop()V

    .line 597
    invoke-static {}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendRestoreCompleteIntent: TIME: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-static {v0}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v4

    .line 602
    .local v4, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$400(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/samsung/android/hostmanager/setup/SetupManager;->changeIdleClock(Ljava/lang/String;)V

    .line 604
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2
    const/4 v8, 0x6

    if-gt v2, v8, :cond_3

    .line 605
    invoke-virtual {v4, v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->manageSetupInfo(I)Z

    .line 604
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 608
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;->this$0:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->access$500(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;

    move-result-object v8

    const/4 v9, 0x1

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1
.end method
