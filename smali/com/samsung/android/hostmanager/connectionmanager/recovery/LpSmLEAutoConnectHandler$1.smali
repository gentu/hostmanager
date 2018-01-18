.class Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler$1;
.super Landroid/os/Handler;
.source "LpSmLEAutoConnectHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v8, 0xffff

    .line 1345
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    iget-object v5, v5, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v5

    .line 1346
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr()Ljava/util/Set;

    move-result-object v1

    .line 1347
    .local v1, "addrSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1349
    .local v0, "AddrIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 1350
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1351
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    iget-object v6, v5, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1352
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_0

    .line 1354
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v3

    .line 1356
    .local v3, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_0

    .line 1357
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 1359
    :pswitch_0
    if-eqz v3, :cond_0

    .line 1360
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getIsFirstAttempt()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1361
    const-string v5, "LpSmLEAutoConnecter"

    const-string v6, "disconnect BLE device"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    invoke-virtual {v5, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->disconnectBLEDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1364
    :catch_0
    move-exception v4

    .line 1366
    .local v4, "e":Landroid/os/DeadObjectException;
    invoke-virtual {v4}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_0

    .line 1373
    .end local v4    # "e":Landroid/os/DeadObjectException;
    :pswitch_1
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    invoke-static {v5, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->access$000(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 1376
    :pswitch_2
    if-eqz v3, :cond_1

    .line 1377
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRecoveryFlag(Z)V

    .line 1378
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1380
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    invoke-static {v5, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 1384
    :pswitch_3
    const-string v5, "LpSmLEAutoConnecter"

    const-string v6, "handleMessages: setConnectionScanParameter() slow scan values"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    iget-object v5, v5, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v5

    const/16 v6, 0x800

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z

    goto :goto_0

    .line 1390
    :pswitch_4
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    iget-object v5, v5, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    .line 1391
    const-string v5, "LpSmLEAutoConnecter"

    const-string v6, "handleMessages: setConnectionScanParameter() defalut scan values"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    iget-object v5, v5, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v6, 0x3eb

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1393
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    iget-object v5, v5, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z

    goto/16 :goto_0

    .line 1403
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_2
    return-void

    .line 1357
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
