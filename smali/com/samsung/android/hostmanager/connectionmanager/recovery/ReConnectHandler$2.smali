.class Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler$2;
.super Landroid/os/Handler;
.source "ReConnectHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 412
    const-string v1, "ReConnectHandler"

    const-string v2, "mSCSRetryHandler : receviced message"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 415
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 416
    const-string v1, "ReConnectHandler"

    const-string v2, "bluetooth device is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 421
    const-string v1, "ReConnectHandler"

    const-string v2, "device address is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;

    iget-object v1, v1, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 427
    const-string v1, "ReConnectHandler"

    const-string v2, "it is not in Connected device address list"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_2
    const-string v1, "ReConnectHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMAC][Accessory][RETRY] SCS retry count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->getScsRecoveryTryCnt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;

    invoke-static {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method
