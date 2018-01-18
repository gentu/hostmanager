.class Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$StartRecoveryTask;
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
    name = "StartRecoveryTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

.field wDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
    .param p2, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 807
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$StartRecoveryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$StartRecoveryTask;->wDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 808
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$StartRecoveryTask;->wDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 809
    return-void
.end method

.method private startRecovery(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 6
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 813
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 814
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 816
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[CMAC][RETRY] BT OFF - Recovery will not be started"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :cond_1
    :goto_0
    return-void

    .line 820
    :cond_2
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[CMSC][RETRY]  startRecovery: unset BR/EDR Connecting Flag"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$StartRecoveryTask;->wDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 823
    .local v1, "bDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_1

    .line 826
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$StartRecoveryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 828
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[CMAC][Accessory][RETRY] start Auto Connection!! (in SPPConnectionRetryTask)"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 833
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v3

    .line 834
    .local v3, "itemBundle":Landroid/os/Bundle;
    const-string v4, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 835
    const-string v4, "AUTO_CONNECTION_STRING_STEP"

    const-string v5, "REQUEST_RECOVERY"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$StartRecoveryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    const/16 v5, 0x17

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$StartRecoveryTask;->wDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$StartRecoveryTask;->startRecovery(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    .line 843
    return-void
.end method
