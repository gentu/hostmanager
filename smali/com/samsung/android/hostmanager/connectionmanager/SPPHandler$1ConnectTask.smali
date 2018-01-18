.class Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;
.super Ljava/lang/Object;
.source "SPPHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->sapConnect(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectTask"
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
    .param p2, "_address"    # Ljava/lang/String;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;->address:Ljava/lang/String;

    .line 361
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 368
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;->address:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;->address:Ljava/lang/String;

    .line 372
    invoke-static {v6}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v5

    .line 374
    .local v5, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v5, :cond_0

    .line 378
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-gt v6, v7, :cond_3

    .line 380
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, " [CMSC] call AccessoryManager.connect for android 4.3"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 384
    invoke-virtual {v6, v5, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v1

    .line 386
    .local v1, "curState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    if-ne v1, v6, :cond_2

    .line 388
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, " [CMSC] Cancel SPP connection : SPP State CONNECTING -> DISCONNECTED"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v6, v5, v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 395
    :cond_2
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    if-eq v1, v6, :cond_3

    .line 396
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, " [CMSC] HFP not connected -> Skip AccessoryManager.connect for android 4.3"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 433
    .end local v1    # "curState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    .end local v5    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :catch_0
    move-exception v2

    .line 435
    .local v2, "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$302(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    .line 436
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;->address:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v4

    .line 437
    .local v4, "tDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-nez v4, :cond_7

    .line 438
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[CMSCS] tDevice is null, it can not be here"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "tDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .restart local v5    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 405
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 406
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BluetoothAdapter enabled...calling SAP connect"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isBonded(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v3

    .line 410
    .local v3, "isBonded":Z
    if-nez v3, :cond_4

    .line 411
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[Accessory] devcice is unbonded, do not call SAP connect"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 445
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v3    # "isBonded":Z
    .end local v5    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :catch_1
    move-exception v2

    .line 446
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 448
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Accessory] SecurityException: connect request failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 450
    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 447
    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 415
    .end local v2    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v3    # "isBonded":Z
    .restart local v5    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_4
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$300(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 416
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[jdub] SAP, SamAccessoryManager.connect : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;->address:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$300(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;->address:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->connect(Ljava/lang/String;I)V

    .line 421
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->removeSPPWaitingConnectionInfo(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 451
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v3    # "isBonded":Z
    .end local v5    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :catch_2
    move-exception v2

    .line 452
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 453
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Accessory] Exception: connect request failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 454
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 453
    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 425
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v3    # "isBonded":Z
    .restart local v5    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_5
    :try_start_3
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[CMSCS] mAccessoryManager is null, handle it before request SPP"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->setSPPSWaitingConnectionInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-static {v6, v5}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto/16 :goto_0

    .line 430
    .end local v3    # "isBonded":Z
    :cond_6
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BluetoothAdapter not enabled...exiting"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 441
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v5    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "tDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_7
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[CMSCS] mAccessoryManager is crashed. must retry get object again!!"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->setSPPSWaitingConnectionInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-static {v6, v4}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto/16 :goto_0
.end method
