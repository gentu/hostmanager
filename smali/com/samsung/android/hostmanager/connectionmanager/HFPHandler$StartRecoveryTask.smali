.class Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$StartRecoveryTask;
.super Ljava/lang/Object;
.source "HFPHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartRecoveryTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

.field wDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;
    .param p2, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 738
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$StartRecoveryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$StartRecoveryTask;->wDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 739
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$StartRecoveryTask;->wDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 740
    return-void
.end method

.method private startRecovery(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 7
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    const/4 v6, 0x0

    .line 748
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$StartRecoveryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v4, p1, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 749
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 750
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 752
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[CMAC][RETRY] BT OFF - Recovery will not be started"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    :goto_0
    return-void

    .line 756
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$StartRecoveryTask;->wDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 757
    .local v1, "bDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_1

    .line 761
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[CMSC][RETRY]  startRecovery: unset BR/EDR Connecting Flag"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$StartRecoveryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v4

    invoke-virtual {v4, v1, v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 765
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[CMAC][HFP][RETRY] request BT Shutdown by Han!! (in HFPConnectionRetryTask)"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$StartRecoveryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    const/16 v5, 0x25

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 773
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "bDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-le v4, v5, :cond_6

    .line 774
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[CMAC][RETRY] SPP is not connected..start Auto Connection (Android v4.4)"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 777
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 779
    :cond_4
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[CMAC][RETRY] BT OFF - Recovery will not be started"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 783
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$StartRecoveryTask;->wDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 784
    .restart local v1    # "bDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_1

    .line 788
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[CMSC][RETRY]  startRecovery: unset BR/EDR Connecting Flag"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$StartRecoveryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v4

    invoke-virtual {v4, v1, v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 791
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[CMAC][Accessory][RETRY] start Auto Connection!! (in HFPConnectionRetryTask)"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 796
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v3

    .line 797
    .local v3, "itemBundle":Landroid/os/Bundle;
    const-string v4, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 798
    const-string v4, "AUTO_CONNECTION_STRING_STEP"

    const-string v5, "REQUEST_RECOVERY"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$StartRecoveryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    const/16 v5, 0x17

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 802
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "bDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "itemBundle":Landroid/os/Bundle;
    :cond_6
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[CMAC][RETRY] Android version is 4.2 or 4.3)"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$StartRecoveryTask;->wDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$StartRecoveryTask;->startRecovery(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    .line 810
    return-void
.end method
