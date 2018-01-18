.class Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler$1;
.super Landroid/os/Handler;
.source "SmLEAutoConnectHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1224
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    iget-object v5, v5, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v5

    .line 1225
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr()Ljava/util/Set;

    move-result-object v1

    .line 1226
    .local v1, "addrSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1227
    .local v0, "AddrIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1229
    .local v3, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-eqz v0, :cond_2

    .line 1230
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1231
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    iget-object v6, v5, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1232
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_0

    .line 1233
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_0

    .line 1234
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 1236
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v3

    .line 1237
    if-eqz v3, :cond_0

    .line 1238
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getIsFirstAttempt()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1239
    const-string v5, "SmLEAutoConnecter"

    const-string v6, "disconnect BLE device"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    invoke-virtual {v5, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->disconnectBLEDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1242
    :catch_0
    move-exception v4

    .line 1244
    .local v4, "e":Landroid/os/DeadObjectException;
    invoke-virtual {v4}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_0

    .line 1250
    .end local v4    # "e":Landroid/os/DeadObjectException;
    :pswitch_1
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    invoke-static {v5, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->access$000(Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 1253
    :pswitch_2
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v3

    .line 1254
    if-eqz v3, :cond_1

    .line 1255
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRecoveryFlag(Z)V

    .line 1256
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1258
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    invoke-static {v5, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 1267
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    return-void

    .line 1234
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
