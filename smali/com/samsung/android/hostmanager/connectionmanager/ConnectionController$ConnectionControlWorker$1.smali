.class Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;
.super Ljava/lang/Object;
.source "ConnectionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->work(Lcom/sec/android/api/iface/CVMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

.field final synthetic val$message:Lcom/sec/android/api/iface/CVMessage;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;Lcom/sec/android/api/iface/CVMessage;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private requestPairing(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "currentstate"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    .param p3, "itemBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 436
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 438
    .local v0, "resBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 440
    if-nez p1, :cond_0

    .line 441
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bluetooth Device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v2, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v3, "FAIL"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    invoke-virtual {v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->response(Landroid/os/Bundle;)V

    .line 463
    :goto_0
    return v1

    .line 450
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-static {v2, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$1400(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 451
    const-string v1, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v2, "SUCCESS"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->response(Landroid/os/Bundle;)V

    .line 463
    const/4 v1, 0x1

    goto :goto_0

    .line 455
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[CMSC] create bond fail!! -> update bonded devices"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$1500(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V

    .line 458
    const-string v2, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v3, "FAIL"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestUnpairing(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "currentstate"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    .param p3, "itemBundle"    # Landroid/os/Bundle;

    .prologue
    .line 411
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 413
    .local v0, "resBundle":Landroid/os/Bundle;
    const-string v1, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 415
    if-nez p1, :cond_0

    .line 416
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bluetooth Device is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v1, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v2, "FAIL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->response(Landroid/os/Bundle;)V

    .line 431
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v1, v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-static {v1, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$1300(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    const-string v1, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v2, "SUCCESS"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->response(Landroid/os/Bundle;)V

    goto :goto_0

    .line 426
    :cond_1
    const-string v1, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v2, "FAIL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0x12

    const/4 v11, 0x1

    .line 219
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CMAC] BluetoothDevice work : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v10}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v8}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 222
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v8, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    .line 223
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 225
    .local v6, "itemBundle":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 226
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x0

    .line 228
    .local v2, "currentstate":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    if-eqz v6, :cond_0

    .line 229
    invoke-static {v6}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Landroid/os/Bundle;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 231
    invoke-static {v6}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/os/Bundle;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v7

    .line 234
    .local v7, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v8, v7, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v2

    .line 237
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current State: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .end local v7    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v8}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 406
    :cond_1
    :goto_0
    return-void

    .line 244
    :sswitch_0
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[WS] CMD_PAIRING"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    if-eqz v3, :cond_1

    .line 248
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, v3, v2, v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->requestPairing(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;Landroid/os/Bundle;)Z

    .line 253
    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v7

    .line 256
    .restart local v7    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v7, :cond_1

    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .line 257
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isBonded(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v8

    if-ne v8, v11, :cond_1

    .line 258
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[WS] CMD_PAIRING: the device already bonded!"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-static {v8, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$300(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Landroid/os/Bundle;)V

    goto :goto_0

    .line 267
    .end local v7    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :sswitch_1
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[WS] CMD_UNPAIRING"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-direct {p0, v3, v2, v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->requestUnpairing(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;Landroid/os/Bundle;)V

    goto :goto_0

    .line 275
    :sswitch_2
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMAC] we should is AutoConnection instance created??"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isContainDeviceSet(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 279
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMAC] putDeviceMacForACDeviceSet for CMD_AUTO_CONNECT"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putDeviceMacForACDeviceSet(Ljava/lang/String;)V

    .line 283
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$400(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v4

    .line 284
    .local v4, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v4, :cond_3

    .line 285
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : deviceSet is null"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnectorEnabled()Z

    move-result v8

    if-nez v8, :cond_4

    .line 291
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-static {v8, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$500(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Landroid/bluetooth/BluetoothDevice;)V

    .line 294
    :cond_4
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnectorEnabled()Z

    move-result v8

    if-ne v11, v8, :cond_a

    .line 296
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMAC] AutoConnection instance will be created.. mIsAC is true"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnector()Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

    move-result-object v8

    if-nez v8, :cond_5

    .line 303
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v8, v12, :cond_6

    .line 304
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMAC] AutoConnection instance will be created.. 4.3 below version "

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .line 308
    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->getInstance(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;

    move-result-object v8

    .line 307
    invoke-virtual {v4, v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnector(Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;)V

    .line 309
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$700(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 331
    :cond_5
    :goto_1
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMAC] request to create AutoConnection instance.. "

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$400(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v4

    .line 335
    if-nez v4, :cond_8

    .line 336
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : deviceSet is null.."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    :cond_6
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v8, v12, :cond_5

    .line 313
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    .line 314
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCompanyName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 316
    .local v5, "isOurCompany":Z
    if-eqz v5, :cond_7

    .line 319
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-static {v8, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$800(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    .line 323
    :cond_7
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .line 324
    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->getInstance(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;

    move-result-object v8

    .line 323
    invoke-virtual {v4, v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnector(Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;)V

    .line 325
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$700(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto :goto_1

    .line 340
    .end local v5    # "isOurCompany":Z
    :cond_8
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnector()Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

    move-result-object v0

    .line 341
    .local v0, "autoConnecter":Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;
    if-eqz v0, :cond_9

    .line 343
    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->sendCommandMessage(Landroid/bluetooth/BluetoothDevice;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 346
    :cond_9
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMAC] AutoConnection instance is not created...please check Android ver or BT ver"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    .end local v0    # "autoConnecter":Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;
    :cond_a
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMAC] AutoConnection instance will be created for PrevAutoConnectHandler.. mIsAC is false"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .line 353
    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/PrevAutoConnectHandler;->getInstance(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/PrevAutoConnectHandler;

    move-result-object v8

    .line 352
    invoke-virtual {v4, v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnector(Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;)V

    .line 354
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$700(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 356
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$400(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v4

    .line 357
    if-nez v4, :cond_b

    .line 358
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : deviceSet is null.."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 362
    :cond_b
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnector()Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

    move-result-object v0

    .line 364
    .restart local v0    # "autoConnecter":Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;
    if-eqz v0, :cond_c

    .line 366
    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->sendCommandMessage(Landroid/bluetooth/BluetoothDevice;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 368
    :cond_c
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMAC] AutoConnection instance is not created...please check Android ver or BT ver"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 375
    .end local v0    # "autoConnecter":Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;
    .end local v4    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :sswitch_3
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CMD_RECONNECT"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$900(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 379
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$900(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

    move-result-object v8

    invoke-virtual {v8, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->sendCommandMessage(Landroid/bluetooth/BluetoothDevice;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 381
    :cond_d
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[RECOVERY] mRecoveryHandler is null"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 386
    :sswitch_4
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[jdub] CMD_FEATURE_EXCHANGE"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$1000(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V

    goto/16 :goto_0

    .line 394
    :sswitch_5
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[jdub] CMD_FIND_PEER"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$1100(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V

    goto/16 :goto_0

    .line 401
    :sswitch_6
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CMD_BT_SHUTDOWN"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$1200(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V

    goto/16 :goto_0

    .line 240
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x17 -> :sswitch_2
        0x18 -> :sswitch_3
        0x21 -> :sswitch_5
        0x22 -> :sswitch_4
        0x25 -> :sswitch_6
    .end sparse-switch
.end method
