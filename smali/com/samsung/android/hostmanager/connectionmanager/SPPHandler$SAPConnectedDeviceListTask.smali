.class Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SAPConnectedDeviceListTask;
.super Ljava/lang/Object;
.source "SPPHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SAPConnectedDeviceListTask"
.end annotation


# instance fields
.field accessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

.field bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
    .param p2, "manager"    # Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 936
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SAPConnectedDeviceListTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SAPConnectedDeviceListTask;->accessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    .line 934
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SAPConnectedDeviceListTask;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 937
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SAPConnectedDeviceListTask;->accessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    .line 938
    iput-object p3, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SAPConnectedDeviceListTask;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 939
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 944
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SAPConnectedDeviceListTask;->accessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    if-nez v5, :cond_1

    .line 945
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[CMWS] accessoryManager is null!"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 949
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[CMWS] Run SAP Connected Device List Task"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SAPConnectedDeviceListTask;->accessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->getConnectedAccessories()Ljava/util/List;

    move-result-object v3

    .line 953
    .local v3, "devicelist":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessorymanager/SamDevice;>;"
    if-nez v3, :cond_2

    .line 954
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[CMWS] No SAP connected device"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 958
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;

    .line 960
    .local v0, "accessory":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 961
    .local v1, "accessoryDeviceAddress":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SAPConnectedDeviceListTask;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 963
    .local v2, "bleutoothDeviceAddress":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 966
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 968
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMWS] Set already connected device to Wearable State : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SAPConnectedDeviceListTask;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 972
    invoke-static {v6}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v4

    .line 973
    .local v4, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SAPConnectedDeviceListTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v6, v4, v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    goto :goto_1
.end method
