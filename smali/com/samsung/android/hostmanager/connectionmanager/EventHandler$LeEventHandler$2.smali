.class Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler$2;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "EventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler$2;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 1402
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1404
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1405
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] onConnectionStateChange device is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->i_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v2

    .line 1408
    .local v2, "itemBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1409
    const-string v3, "AUTO_CONNECTION_STRING_STEP"

    const-string v4, "MSG_GATT_CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    const-string v3, "AUTO_CONNECTION_INT_GATT_STATE"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1413
    const-string v3, "AUTO_CONNECTION_INT_GATT_NEWSTATE"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1415
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler$2;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    const-string v4, "CONNECTIONCONTROLLER"

    const/16 v5, 0x221

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 1417
    return-void
.end method

.method public onMonitorRssi(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "rssi"    # I

    .prologue
    .line 1420
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1421
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] onMonitorRssi rssi value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and device is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->i_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1426
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v2

    .line 1427
    .local v2, "itemBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1428
    const-string v3, "AUTO_CONNECTION_STRING_STEP"

    const-string v4, "MSG_MONITOR_RSSI"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const-string v3, "AUTO_CONNECTION_INT_MONITOR_RSSI"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1431
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler$2;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    const-string v4, "CONNECTIONCONTROLLER"

    const/16 v5, 0x222

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 1432
    return-void
.end method

.method public semOnMonitorLeRssi(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "rssi"    # I

    .prologue
    .line 1436
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[BLE] semOnMonitorLeRssi called. transfer legacy callbacks"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler$2;->onMonitorRssi(Landroid/bluetooth/BluetoothGatt;I)V

    .line 1438
    return-void
.end method
