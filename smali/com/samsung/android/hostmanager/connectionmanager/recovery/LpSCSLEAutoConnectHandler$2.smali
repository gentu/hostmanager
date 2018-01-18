.class Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$2;
.super Landroid/os/Handler;
.source "LpSCSLEAutoConnectHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1609
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v10, 0xffff

    const/4 v9, 0x1

    .line 1612
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    iget-object v6, v6, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    .line 1613
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr()Ljava/util/Set;

    move-result-object v1

    .line 1614
    .local v1, "addrSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1616
    .local v0, "AddrIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    .line 1617
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1618
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    iget-object v7, v6, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1619
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_0

    .line 1621
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v3

    .line 1623
    .local v3, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_0

    .line 1624
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 1627
    :pswitch_0
    if-eqz v3, :cond_0

    .line 1628
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getIsFirstAttempt()Z

    move-result v6

    if-ne v6, v9, :cond_0

    .line 1629
    const-string v6, "LpSCSLEAutoConnectHandler"

    const-string v7, "disconnect BLE device"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    invoke-virtual {v6, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->disconnectBLEDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1632
    :catch_0
    move-exception v4

    .line 1634
    .local v4, "e":Landroid/os/DeadObjectException;
    invoke-virtual {v4}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_0

    .line 1640
    .end local v4    # "e":Landroid/os/DeadObjectException;
    :pswitch_1
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    invoke-static {v6, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->access$000(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 1644
    :pswitch_2
    if-eqz v3, :cond_1

    .line 1645
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRecoveryFlag(Z)V

    .line 1646
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1648
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    invoke-static {v6, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V

    .line 1652
    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v5

    .line 1653
    .local v5, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    iget-object v6, v6, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isScsPreference(Ljava/lang/String;)Z

    move-result v6

    if-ne v9, v6, :cond_3

    .line 1654
    const-string v6, "LpSCSLEAutoConnectHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMAC] SCS preference is true. try to Connect SCS for device ( after 6sec case) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    invoke-static {v6, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1657
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    invoke-static {v6, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->access$300(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto/16 :goto_0

    .line 1660
    :cond_2
    const-string v6, "LpSCSLEAutoConnectHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMAC] SCS is in enabling state already.   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1664
    :cond_3
    const-string v6, "LpSCSLEAutoConnectHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMAC] SCS preference is false. Dont Connect SCS for device  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1670
    .end local v5    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :pswitch_3
    const-string v6, "LpSCSLEAutoConnectHandler"

    const-string v7, "handleMessages: setConnectionScanParameter() slow scan values"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    iget-object v6, v6, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    const/16 v7, 0x800

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z

    goto/16 :goto_0

    .line 1676
    :pswitch_4
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    iget-object v6, v6, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    .line 1677
    const-string v6, "LpSCSLEAutoConnectHandler"

    const-string v7, "handleMessages: setConnectionScanParameter() defalut scan values"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    iget-object v6, v6, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v7, 0x3eb

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1679
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    iget-object v6, v6, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    invoke-virtual {v6, v10, v10}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z

    goto/16 :goto_0

    .line 1689
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_4
    return-void

    .line 1624
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
