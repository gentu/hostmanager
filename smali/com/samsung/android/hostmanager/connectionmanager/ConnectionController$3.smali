.class Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$3;
.super Ljava/lang/Object;
.source "ConnectionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->onReceivedEvent(ILandroid/os/Bundle;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1050
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    .line 1051
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr()Ljava/util/Set;

    move-result-object v2

    .line 1052
    .local v2, "addrSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1053
    .local v0, "AddrIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    .line 1054
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1055
    const/4 v4, 0x0

    .line 1057
    .local v4, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1058
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1059
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 1069
    :goto_1
    if-nez v4, :cond_2

    .line 1070
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "device is null."

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    .end local v1    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_2
    return-void

    .line 1064
    .restart local v1    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMAC] get BluetoothDevice when BT STATE is off"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v6

    .line 1066
    .local v6, "wearableDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-static {v6}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    goto :goto_1

    .line 1074
    .end local v6    # "wearableDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1075
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-static {v4}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v5

    .line 1076
    .local v5, "itemBundle":Landroid/os/Bundle;
    const-string v7, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1077
    const-string v7, "AUTO_CONNECTION_STRING_STEP"

    const-string v8, "ACTION_STATE_CHANGED"

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    const-string v7, "BUNDLE_CMKEY_INT_BLUETOOTHADAPTER_STATE"

    const/16 v8, 0xa

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1081
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-static {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$1600(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)Z

    move-result v7

    if-ne v7, v9, :cond_3

    .line 1082
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-static {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$1700(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V

    goto :goto_0

    .line 1084
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    const/16 v8, 0x17

    invoke-virtual {v7, v8, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1089
    .end local v1    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "itemBundle":Landroid/os/Bundle;
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-static {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$1600(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)Z

    move-result v7

    if-ne v7, v9, :cond_0

    .line 1090
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-static {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->access$1700(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V

    goto :goto_2
.end method
