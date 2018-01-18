.class Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;
.super Ljava/lang/Object;
.source "WearableConnectionManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doBackup(ZILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # Z
    .param p2, "systemBackupType"    # I
    .param p3, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 1100
    :try_start_0
    invoke-static {p3}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getBackupRestoreManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v1

    .line 1101
    .local v1, "mIBackupRestoreManager":Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    if-eqz v1, :cond_0

    .line 1103
    invoke-virtual {v1, p2}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->onBackupRequest(I)V
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    .end local v1    # "mIBackupRestoreManager":Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    :cond_0
    :goto_0
    return-void

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    .local v0, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBondStateChanged(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v3, 0x4

    .line 1149
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CM::onBondStateChanged() "

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    if-eqz p1, :cond_0

    .line 1151
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM::onBondStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    .line 1152
    invoke-static {v2, p2}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1800(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1151
    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    if-nez p2, :cond_1

    .line 1154
    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendCMBondStateChangedToApp(Ljava/lang/String;II)V

    .line 1156
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM::onBondStateChanged - deviceBTName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1158
    invoke-virtual {p1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GEAR 2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setNotification(Ljava/lang/String;Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0
.end method

.method public onDeviceAdded(ILcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;)V
    .locals 3
    .param p1, "link"    # I
    .param p2, "device"    # Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .prologue
    .line 1144
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM::onDeviceAdded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    return-void
.end method

.method public onError(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V
    .locals 5
    .param p1, "device"    # Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .param p2, "errorCode"    # I

    .prologue
    const/4 v4, 0x1

    .line 1117
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM::onError device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x7

    if-eq p2, v1, :cond_0

    const/16 v1, 0x8

    if-eq p2, v1, :cond_0

    const/16 v1, 0x9

    if-ne p2, v1, :cond_1

    .line 1122
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendConnectFailResult(Ljava/lang/String;I)V

    .line 1125
    :cond_1
    if-ne p2, v4, :cond_2

    .line 1126
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CM::onError :ERROR_SPP_CONNECT_FAILED"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    :cond_2
    const/16 v1, 0xb

    if-ne p2, v1, :cond_3

    .line 1132
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CM::onError :ERROR_SCS_ACCOUNT_AUTHENTICATION_FAILED"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/hostmanager/service/IUHostManager;->requestTokenFromUI(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1141
    :cond_3
    :goto_0
    return-void

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1137
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1138
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onLinkStateChanged(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V
    .locals 3
    .param p1, "device"    # Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .param p2, "link"    # I

    .prologue
    .line 1112
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM::onLinkStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    return-void
.end method

.method public onScanFinished()V
    .locals 0

    .prologue
    .line 1096
    return-void
.end method

.method public onServiceStateChanged(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;II)V
    .locals 28
    .param p1, "device"    # Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .param p2, "type"    # I
    .param p3, "state"    # I

    .prologue
    .line 744
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v8

    .line 745
    .local v8, "btAddress":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v9

    .line 746
    .local v9, "btName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CM::SCS::onServiceStateChanged type : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v26, v0

    .line 747
    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1000(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " state : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v26, v0

    .line 748
    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1100(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " device : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " address : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 746
    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v22

    .line 751
    .local v22, "socket":Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
    if-eqz v22, :cond_4

    .line 752
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CM::SCS::onServiceStateChanged set realstate to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->setRealState(I)V

    .line 757
    :goto_0
    const/16 v24, 0x4

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 758
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "CM::SCS::====================LogIn state========================"

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "CM::SCS::change state to connect"

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1200()Landroid/os/Handler;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 762
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "CM::SCS::removeCallbacks mLogoutRunnable"

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1200()Landroid/os/Handler;

    move-result-object v24

    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1300()Ljava/lang/Runnable;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 766
    :cond_0
    const/16 p3, 0x1

    .line 767
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getConnectedPeerAgent()Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->onServiceConnectionResponseForLogin(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;ILjava/lang/String;)V

    .line 797
    :cond_1
    :goto_1
    if-nez v9, :cond_2

    .line 798
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getDeviceNameByDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 801
    :cond_2
    if-nez v8, :cond_8

    .line 802
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "CM::SCS::onServiceStateChanged address = null"

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :cond_3
    :goto_2
    return-void

    .line 755
    :cond_4
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "CM::SCS::onServiceStateChanged socket is null for set realstate"

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 768
    :cond_5
    const/16 v24, 0x5

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 769
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "CM::SCS::====================LogOut state========================"

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "CM::SCS::change state to disconnect"

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const/16 p3, 0x3

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isLogOutCondition(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 774
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "SCS::should be logged out."

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 776
    :cond_6
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "SCS::wait for login during 10s."

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const/16 v24, 0x1

    sput-boolean v24, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isLogOutState:Z

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v8}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1502(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Ljava/lang/String;)Ljava/lang/String;

    .line 780
    new-instance v24, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5$1;-><init>(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;)V

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1302(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 789
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1200()Landroid/os/Handler;

    move-result-object v24

    if-nez v24, :cond_7

    .line 790
    new-instance v24, Landroid/os/Handler;

    invoke-direct/range {v24 .. v24}, Landroid/os/Handler;-><init>()V

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1202(Landroid/os/Handler;)Landroid/os/Handler;

    .line 793
    :cond_7
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1200()Landroid/os/Handler;

    move-result-object v24

    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1300()Ljava/lang/Runnable;

    move-result-object v25

    const-wide/16 v26, 0x2710

    invoke-virtual/range {v24 .. v27}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 805
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    if-eqz v24, :cond_9

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    const-string v25, "scs_pref_HM"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 807
    .local v20, "pref":Landroid/content/SharedPreferences;
    const-string v24, "scs_setting_value"

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 808
    .local v21, "settingValue":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SCS::onServiceStateChanged() settingValue = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    .end local v20    # "pref":Landroid/content/SharedPreferences;
    .end local v21    # "settingValue":Z
    :cond_9
    const/16 v24, 0x1

    move/from16 v0, v24

    move/from16 v1, p3

    if-ne v0, v1, :cond_a

    const/16 v24, 0x6

    move/from16 v0, v24

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    .line 814
    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendConnectSuccessResult(Ljava/lang/String;)V

    .line 817
    :cond_a
    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendCMBondStateChangedToApp(Ljava/lang/String;II)V

    .line 820
    const/16 v24, 0x1

    move/from16 v0, v24

    move/from16 v1, p3

    if-ne v0, v1, :cond_10

    const/16 v24, 0x4

    move/from16 v0, v24

    move/from16 v1, p2

    if-eq v0, v1, :cond_b

    const/16 v24, 0x5

    move/from16 v0, v24

    move/from16 v1, p2

    if-ne v0, v1, :cond_10

    .line 823
    :cond_b
    const/16 v24, 0x0

    sput-boolean v24, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isLogOutState:Z

    .line 824
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CM:: Connection is complete with Connection Manager...deviceName = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v24, "GALAXY Gear"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_c

    .line 826
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 828
    .local v7, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothAdapterFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothAdapterInterface;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothAdapterInterface;->clearAutoConnDevice(Landroid/bluetooth/BluetoothAdapter;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 833
    .end local v7    # "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_c
    :goto_3
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getConnectedType(Ljava/lang/String;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 834
    .local v12, "connectTypeString":Ljava/lang/String;
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0x17

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_f

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "wearable_connect_type"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v12}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ConnectType : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "connected_wearable_id"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v24

    if-eqz v24, :cond_d

    .line 845
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "wearable_connect_type"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "connected_wearable_id"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1064
    .end local v12    # "connectTypeString":Ljava/lang/String;
    :cond_d
    :goto_4
    const/16 v24, 0x3

    move/from16 v0, v24

    move/from16 v1, p3

    if-ne v0, v1, :cond_26

    const/16 v24, 0x4

    move/from16 v0, v24

    move/from16 v1, p2

    if-eq v0, v1, :cond_e

    const/16 v24, 0x5

    move/from16 v0, v24

    move/from16 v1, p2

    if-ne v0, v1, :cond_26

    .line 1066
    :cond_e
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CM::mConnectedWearableList.remove() BTAddress = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    :try_start_2
    invoke-static {v8}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v24

    if-eqz v24, :cond_3

    .line 1070
    invoke-static {v8}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->destroy()V
    :try_end_2
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 1072
    :catch_0
    move-exception v16

    .line 1073
    .local v16, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto/16 :goto_2

    .line 829
    .end local v16    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    .restart local v7    # "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_1
    move-exception v16

    .line 830
    .local v16, "e":Ljava/lang/NoSuchMethodError;
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "No such Method Error"

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 847
    .end local v7    # "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v16    # "e":Ljava/lang/NoSuchMethodError;
    .restart local v12    # "connectTypeString":Ljava/lang/String;
    :catch_2
    move-exception v16

    .line 848
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 849
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CM::write setting exeption = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 853
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "wearable_connect_type"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 854
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ConnectType : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "connected_wearable_id"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 858
    .end local v12    # "connectTypeString":Ljava/lang/String;
    :cond_10
    const/16 v24, 0x3

    move/from16 v0, v24

    move/from16 v1, p3

    if-ne v0, v1, :cond_d

    const/16 v24, 0x4

    move/from16 v0, v24

    move/from16 v1, p2

    if-eq v0, v1, :cond_11

    const/16 v24, 0x5

    move/from16 v0, v24

    move/from16 v1, p2

    if-ne v0, v1, :cond_d

    .line 863
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    if-eqz v24, :cond_1f

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v8}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->updateDeviceRegistryDisconnected(Landroid/content/Context;Ljava/lang/String;)I

    .line 871
    :goto_5
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "Starting the auto backup"

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const/16 v24, 0x0

    sput-boolean v24, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreInstallProgress:Z

    .line 873
    const/16 v24, 0x1

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2, v8}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->doBackup(ZILjava/lang/String;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v24

    if-eqz v24, :cond_12

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v24

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isConnected:Z

    .line 880
    :cond_12
    const/4 v15, 0x0

    .line 882
    .local v15, "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :try_start_3
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v15

    .line 883
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "MGR_WEARABLE_READY_FOR_RESTORE_RES deviceManager = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 888
    :goto_6
    if-eqz v15, :cond_18

    .line 889
    new-instance v11, Landroid/content/Intent;

    const-string v24, "com.samsung.android.hostmanager.CONNECTION_STATUS_CHANGED"

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 890
    .local v11, "connectIntent":Landroid/content/Intent;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 892
    .local v10, "bun":Landroid/os/Bundle;
    const/16 v23, 0x0

    .line 893
    .local v23, "statMgr":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    const/4 v14, 0x0

    .line 894
    .local v14, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    invoke-virtual {v15}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getStatusManager()Lcom/samsung/android/hostmanager/manager/IStatusManager;

    move-result-object v23

    .line 895
    if-eqz v23, :cond_13

    .line 896
    invoke-interface/range {v23 .. v23}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v14

    .line 899
    :cond_13
    const-string v24, "connectStatus"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 900
    const-string v24, "deviceAddress"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string v24, "deviceName"

    invoke-static {v8}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    if-eqz v14, :cond_14

    .line 903
    const-string v24, "deviceNumber"

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getModelNumber()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string v24, "OSversion"

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSwVersion()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v24

    if-eqz v24, :cond_15

    .line 907
    const-string v24, "connectType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getConnectType()I

    move-result v25

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 910
    :cond_15
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "statusconnect::connectStatus = 1"

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "statusconnect::deviceid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "statusconnect::deviceName = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {v8}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    if-eqz v14, :cond_16

    .line 914
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "statusconnect::deviceNumber = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getModelNumber()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "statusconnect::OSversion = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSwVersion()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v24

    if-eqz v24, :cond_17

    .line 918
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "statusconnect::connectType = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getConnectType()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    :cond_17
    invoke-virtual {v11, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    if-eqz v24, :cond_18

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 923
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "send connect status changed broadcast Disconnect!"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    .end local v10    # "bun":Landroid/os/Bundle;
    .end local v11    # "connectIntent":Landroid/content/Intent;
    .end local v14    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .end local v23    # "statMgr":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :cond_18
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v24, v0

    if-eqz v24, :cond_19

    .line 928
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->resetReadyForRestoreTimer(Ljava/lang/String;)V

    .line 931
    :cond_19
    if-eqz v22, :cond_1a

    .line 932
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "socket is null"

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "socket.getRealState() is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getRealState()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getRealState()I

    move-result v24

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1a

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1600(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Ljava/util/Map;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    :cond_1a
    :try_start_4
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v24

    if-eqz v24, :cond_1b

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Disconnected"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    .line 942
    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 948
    :cond_1b
    :goto_7
    const/16 v24, 0x5

    move/from16 v0, v24

    move/from16 v1, p2

    if-eq v0, v1, :cond_21

    .line 950
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    const-string v25, "audio"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 951
    .local v6, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v24

    if-eqz v24, :cond_20

    .line 952
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/hostmanager/service/ICHostManager;->playDisconnectSound()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 962
    .end local v6    # "audioManager":Landroid/media/AudioManager;
    :goto_8
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0x17

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_22

    .line 964
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "wmanager_connected"

    const-string v26, "0"

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6

    .line 974
    :goto_9
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 976
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "wmanager_connected"

    const-string v26, "0"

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 985
    :cond_1c
    :goto_a
    const/4 v13, 0x0

    .line 987
    .local v13, "connected_wearable":Ljava/lang/String;
    :try_start_8
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0x17

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_23

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "connected_wearable"

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v13

    .line 995
    :goto_b
    if-eqz v13, :cond_1d

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_1d

    .line 996
    const-string v24, "CrossConnection"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Connected wearable : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    const-string v25, "gear"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 998
    const-string v24, "CrossConnection"

    const-string v25, "Disconnected Write null in id and name"

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0x17

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_24

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "connected_wearable"

    const-string v26, ""

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "connected_wearable_id"

    const-string v26, ""

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 1009
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "connected_wearable"

    const-string v26, ""

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "connected_wearable_id"

    const-string v26, ""

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 1023
    :cond_1d
    :goto_c
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0x17

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_25

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "wearable_connect_type"

    const-string v26, ""

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v24

    if-eqz v24, :cond_1e

    .line 1032
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "wearable_connect_type"

    const-string v26, ""

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 1043
    :cond_1e
    :goto_d
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 1044
    .local v19, "intent":Landroid/content/Intent;
    const-string v24, "com.samsung.android.app.watchmanager.widget.SAPDISCONNECT"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v8}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1700(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Ljava/lang/String;)V

    .line 1050
    const-wide/16 v24, 0x1f4

    :try_start_b
    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_b

    .line 1055
    :goto_e
    sget-boolean v24, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isLogOutState:Z

    if-nez v24, :cond_d

    .line 1057
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getCurNotiState()I

    move-result v24

    if-eqz v24, :cond_d

    .line 1058
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setNotification(Ljava/lang/String;Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    goto/16 :goto_4

    .line 866
    .end local v13    # "connected_wearable":Ljava/lang/String;
    .end local v15    # "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    .end local v19    # "intent":Landroid/content/Intent;
    :cond_1f
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "CM:: mContext is null, can\'t call updateDeviceRegistryDisconnected()"

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 884
    .restart local v15    # "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :catch_3
    move-exception v16

    .line 885
    .local v16, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto/16 :goto_6

    .line 944
    .end local v16    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    :catch_4
    move-exception v18

    .line 945
    .local v18, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 954
    .end local v18    # "ex":Ljava/lang/Exception;
    .restart local v6    # "audioManager":Landroid/media/AudioManager;
    :cond_20
    :try_start_c
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "current mode is silent."

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_8

    .line 956
    .end local v6    # "audioManager":Landroid/media/AudioManager;
    :catch_5
    move-exception v17

    .line 957
    .local v17, "e1":Landroid/os/RemoteException;
    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_8

    .line 960
    .end local v17    # "e1":Landroid/os/RemoteException;
    :cond_21
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "type : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 965
    :catch_6
    move-exception v16

    .line 966
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 967
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Provider DB is not available currently, exception "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 977
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v16

    .line 978
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 979
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CM::write setting exeption = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 983
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "wmanager_connected"

    const-string v26, "0"

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_a

    .line 990
    .restart local v13    # "connected_wearable":Ljava/lang/String;
    :cond_23
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "connected_wearable"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_d .. :try_end_d} :catch_8

    move-result-object v13

    goto/16 :goto_b

    .line 992
    :catch_8
    move-exception v16

    .line 993
    .local v16, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual/range {v16 .. v16}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_b

    .line 1011
    .end local v16    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_9
    move-exception v16

    .line 1012
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 1013
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CM::write setting exeption = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1017
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "connected_wearable"

    const-string v26, ""

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "connected_wearable_id"

    const-string v26, ""

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_c

    .line 1033
    :catch_a
    move-exception v16

    .line 1034
    .restart local v16    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 1035
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CM::write setting exeption = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1039
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "wearable_connect_type"

    const-string v26, ""

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_d

    .line 1051
    .restart local v19    # "intent":Landroid/content/Intent;
    :catch_b
    move-exception v16

    .line 1052
    .local v16, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_e

    .line 1077
    .end local v13    # "connected_wearable":Ljava/lang/String;
    .end local v15    # "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    .end local v16    # "e":Ljava/lang/InterruptedException;
    .end local v19    # "intent":Landroid/content/Intent;
    :cond_26
    const/16 v24, 0x1

    move/from16 v0, v24

    move/from16 v1, p3

    if-ne v0, v1, :cond_3

    const/16 v24, 0x4

    move/from16 v0, v24

    move/from16 v1, p2

    if-eq v0, v1, :cond_27

    const/16 v24, 0x5

    move/from16 v0, v24

    move/from16 v1, p2

    if-ne v0, v1, :cond_3

    .line 1079
    :cond_27
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CM::CM Connection is completed...device = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :try_start_e
    invoke-static {v8}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v24

    if-eqz v24, :cond_28

    .line 1083
    invoke-static {v8}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->destroy()V

    .line 1085
    :cond_28
    invoke-static {v8}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;
    :try_end_e
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_e .. :try_end_e} :catch_c

    goto/16 :goto_2

    .line 1086
    :catch_c
    move-exception v16

    .line 1087
    .local v16, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public onStateChanged(I)V
    .locals 3
    .param p1, "cmState"    # I

    .prologue
    .line 739
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM::onStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    return-void
.end method
