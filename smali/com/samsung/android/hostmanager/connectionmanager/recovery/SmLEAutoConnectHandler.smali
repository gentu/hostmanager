.class public Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;
.super Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;
.source "SmLEAutoConnectHandler.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final LE_HIGH_RSSI:I = 0x7f

.field private static final LE_LOW_RSSI:I = -0x56

.field private static final LE_MID_RSSI:I = -0x55

.field private static final LE_RSSI_THRESHOLD:I = -0x55

.field private static final MSG_GATT_SERVICE_BINDING:I = 0x3e9

.field private static final MSG_LE_DISCONNECT:I = 0x3e8

.field private static final MSG_WAIT_AUTOCONNECT_SERVICE:I = 0x3ea

.field private static final RECOVERY_CHECK_RSSI:I = 0x2

.field private static final RECOVERY_FIRST_CONNECTION_RETRY:I = 0x0

.field private static final RECOVERY_NO_CHECK_RSSI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SmLEAutoConnecter"

.field private static final WAITTING_TINE_FOR_DISCONNECT_CALL:I = 0x2710

.field private static mLocker:Ljava/lang/Object;

.field private static pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;


# instance fields
.field private mLeHighRssi:I

.field private mLeLowRssi:I

.field private mLeMidRssi:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mTryAutoBTEnable:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected final mWorkerHandler:Landroid/os/Handler;

.field private mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mLocker:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Landroid/bluetooth/BluetoothGattCallback;)V
    .locals 3
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .param p2, "gattCallbacks"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;-><init>()V

    .line 50
    const/16 v0, -0x56

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mLeLowRssi:I

    .line 52
    const/16 v0, -0x55

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mLeMidRssi:I

    .line 54
    const/16 v0, 0x7f

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mLeHighRssi:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    .line 1221
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler$1;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    .line 106
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 107
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 108
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    .line 109
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    .line 110
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 111
    const-string v0, "SmLEAutoConnecter"

    const-string v1, "[CMAC] Sorry! Bluetooth is not supported in this device"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mTryAutoBTEnable:Z

    .line 117
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 118
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "SmLEAutoConnecter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->doGattObjectTry(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->startAutoConnection(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private checkLowLevelDisconnection(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reason"    # I
    .param p3, "linkType"    # I

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0xc

    const/4 v5, 0x0

    .line 832
    if-nez p1, :cond_1

    .line 833
    const-string v2, "SmLEAutoConnecter"

    const-string v3, "[CMAC] Device is NULL"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    const-string v2, "SmLEAutoConnecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] ACTION_ACL_DISCONNECTED, reason is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " linktype is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 841
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_2

    .line 842
    const-string v2, "SmLEAutoConnecter"

    const-string v3, "[CMAC] checkLowLevelDisconnection : deviceSet is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 848
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRecoveryFlag()Z

    move-result v2

    if-ne v2, v7, :cond_3

    .line 849
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->BREDR_LINK_TYPE:I

    if-ne p3, v2, :cond_3

    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->LOCAL_USER_DISCONNECTION:I

    if-ne p2, v2, :cond_3

    .line 850
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 851
    invoke-virtual {v0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRecoveryFlag(Z)V

    .line 852
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 853
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->startAutoConnection(Landroid/bluetooth/BluetoothDevice;)V

    .line 859
    :cond_3
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->BREDR_LINK_TYPE:I

    if-ne p3, v2, :cond_6

    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->LOCAL_USER_DISCONNECTION:I

    if-ne v2, p2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 860
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->USER_REMOVED_BOND:I

    if-eq p2, v2, :cond_6

    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->AUTH_FAIL:I

    if-eq p2, v2, :cond_6

    .line 864
    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 865
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    .line 866
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 865
    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 868
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v1

    .line 869
    .local v1, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    const-string v2, "SmLEAutoConnecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 872
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 873
    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 869
    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string v2, "SmLEAutoConnecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] BR/EDR link loss, start LE Autoconnection with device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 879
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 882
    .end local v1    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_5
    const-string v2, "SmLEAutoConnecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] device address is not available "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 887
    :cond_6
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->LE_LINK_TYPE:I

    if-ne p3, v2, :cond_8

    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->CONNECTION_ACCEPT_TIME_OUT_EXCEEDED:I

    if-ne p2, v2, :cond_8

    .line 888
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_7

    .line 889
    const-string v2, "SmLEAutoConnecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] BluetoothAdapter instance is null..BT Off/On fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 894
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->runBluetoothStateOffOn()V

    goto/16 :goto_0

    .line 897
    :cond_8
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->LE_LINK_TYPE:I

    if-ne p3, v2, :cond_e

    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->REASON_LINK_LOSS:I

    if-eq p2, v2, :cond_e

    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->CONN_FAILED_TO_BE_EASTABLISHED:I

    if-eq p2, v2, :cond_e

    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->USER_REMOVED_BOND:I

    if-eq p2, v2, :cond_e

    sget v2, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->REMOTE_USER_DISCONNECTION:I

    if-eq p2, v2, :cond_e

    .line 901
    const-string v2, "SmLEAutoConnecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] ACTION_ACL_DISCONNECT - LE Disconnected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 902
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 901
    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v2, "SmLEAutoConnecter"

    const-string v3, "[CMAC] LE AutoConnection is finish..request SPP & HFP Connection"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 906
    if-nez v0, :cond_9

    .line 907
    const-string v2, "SmLEAutoConnecter"

    const-string v3, "[CMAC] checkLowLevelDisconnection : deviceSet is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 912
    :cond_9
    invoke-virtual {v0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 913
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 915
    if-eqz p1, :cond_d

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 916
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    .line 917
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 916
    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 920
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 921
    if-nez v0, :cond_a

    .line 922
    const-string v2, "SmLEAutoConnecter"

    const-string v3, "[CMAC] checkLowLevelDisconnection : deviceSet is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 926
    :cond_a
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRSSIVFlag()Z

    move-result v2

    if-ne v7, v2, :cond_c

    .line 927
    const-string v2, "SmLEAutoConnecter"

    const-string v3, "[CMAC] RSSI callback is not avilable, restart auto connection : connectLEDeviceafterLLOrRUT.. "

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-virtual {v0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSIVFlag(Z)V

    .line 934
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 938
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->CHIP_SET_ERROR:I

    if-ne v2, p2, :cond_b

    .line 940
    const-string v2, "SmLEAutoConnecter"

    const-string v3, "[CMAC] ACL_DISCONNECT reason 34, set BREDR flag to flase"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {v2, p1, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 945
    :cond_b
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 946
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 949
    :cond_c
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->connectAllProfile(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 952
    :cond_d
    const-string v2, "SmLEAutoConnecter"

    const-string v3, "[CMAC] device address is not available"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 956
    :cond_e
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->LE_LINK_TYPE:I

    if-ne p3, v2, :cond_f

    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->REASON_LINK_LOSS:I

    if-eq p2, v2, :cond_10

    :cond_f
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->LE_LINK_TYPE:I

    if-ne p3, v2, :cond_13

    sget v2, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->REMOTE_USER_DISCONNECTION:I

    if-ne p2, v2, :cond_13

    .line 959
    :cond_10
    if-eqz p1, :cond_12

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 960
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    .line 961
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 960
    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 962
    const-string v2, "SmLEAutoConnecter"

    const-string v3, "[CMAC] LE link loss , start LE Autoconnection again"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 965
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 966
    if-nez v0, :cond_11

    .line 967
    const-string v2, "SmLEAutoConnecter"

    const-string v3, "[CMAC] checkLowLevelDisconnection : deviceSet is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 970
    :cond_11
    invoke-virtual {v0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 971
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 973
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 976
    :cond_12
    const-string v2, "SmLEAutoConnecter"

    const-string v3, "[CMAC] device address is not available"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 980
    :cond_13
    const-string v2, "SmLEAutoConnecter"

    const-string v3, "[CMAC] Auto Connection is not working as suitable ACL_DISCONNECT reason"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private checkMonitorForRssi(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I

    .prologue
    const/4 v6, 0x0

    .line 255
    if-nez p1, :cond_0

    .line 256
    const-string v3, "SmLEAutoConnecter"

    const-string v4, "[CMAC] BluetoothDevice instance is NULL"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_0
    return-void

    .line 260
    :cond_0
    const-string v3, "SmLEAutoConnecter"

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

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "macAddr":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 267
    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 268
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_1

    .line 269
    const-string v3, "SmLEAutoConnecter"

    const-string v4, "[CMAC] checkMonitorForRssi : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_1
    const/16 v3, -0x55

    if-lt p2, v3, :cond_2

    .line 275
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnectionFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 276
    const-string v3, "SmLEAutoConnecter"

    const-string v4, "[CMAC] rssi value is sufficient for AG connection establishment, disconnect BLE"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-direct {p0, p1, v6, v6, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->runBLEMonitorRssi(Landroid/bluetooth/BluetoothDevice;III)Z

    .line 280
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->disconnectBLEDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 290
    :cond_2
    :goto_1
    invoke-virtual {v0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSIVFlag(Z)V

    .line 291
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Landroid/os/DeadObjectException;
    invoke-virtual {v1}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_1

    .line 284
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 293
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v3, "SmLEAutoConnecter"

    const-string v4, "[CMAC] checkMonitorForRssi : device address is not available"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized connectLEDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 18
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 346
    monitor-enter p0

    if-nez p1, :cond_0

    .line 347
    :try_start_0
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Device is NULL"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    :goto_0
    monitor-exit p0

    return-void

    .line 351
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v14

    const/16 v15, 0xc

    if-eq v14, v15, :cond_1

    .line 352
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : bonded state is not BONDED"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 357
    :cond_1
    :try_start_2
    sget-object v14, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v14

    if-nez v14, :cond_2

    sget-object v14, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 358
    :cond_2
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] BR/EDR is connecting..retrun LE Connection Reqeust"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->isBREDRConnectingState(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 364
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] BR/EDR rety is connecting..retrun LE Connection Reqeust"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v4

    .line 369
    .local v4, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v4, :cond_5

    .line 370
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : deviceSet is null"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_5
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 376
    .local v2, "btGatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v2, :cond_7

    .line 377
    const-string v14, "SmLEAutoConnecter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[CMAC] connectLEDevice - device "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " BluetoothGatt is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :goto_1
    if-eqz v2, :cond_6

    .line 385
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice update mBluetoothGatt"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v14, :cond_6

    .line 389
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v15, 0x7

    invoke-virtual {v14, v15, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 390
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "connectLEDevice : call closeProfileProxy for Gatt instance"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 395
    :cond_6
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v7

    .line 396
    .local v7, "hostBluetoothVersion":I
    const/4 v11, 0x0

    .line 397
    .local v11, "isRadomLeConnectCalledFlag":Z
    const/4 v9, 0x0

    .line 398
    .local v9, "isGearSupportRandomLeFlag":Z
    const/4 v10, 0x0

    .line 400
    .local v10, "isHostSupportRandomLeFlag":Z
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : check LE address type"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getWearableProfileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 406
    .local v13, "profileVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isGearNotifiedRandomLeTrueFlag(Ljava/lang/String;)Z

    move-result v8

    .line 408
    .local v8, "isGearNotified":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isRandomLESupported()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 410
    const/4 v10, 0x1

    .line 412
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Random LE is Supported. connect LE"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v14, "2.0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 416
    const/4 v9, 0x1

    .line 418
    const/4 v14, 0x1

    if-ne v8, v14, :cond_8

    .line 420
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Gear device random LE is Supported and Gear is notified. use connectGatt"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 424
    const/4 v11, 0x1

    .line 474
    :goto_2
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v14

    if-nez v14, :cond_d

    .line 476
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeUpdated(Z)V

    .line 477
    invoke-virtual {v4, v11, v9, v10, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeValues(ZZZI)V

    .line 542
    :goto_3
    if-eqz v2, :cond_13

    .line 543
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] Gatt instance is created and Le Autoconnection is set to true"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-virtual {v4, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 547
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v5

    .line 550
    .local v5, "deviceSets":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v5, :cond_12

    .line 551
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : deviceSets is null"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 380
    .end local v5    # "deviceSets":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v7    # "hostBluetoothVersion":I
    .end local v8    # "isGearNotified":Z
    .end local v9    # "isGearSupportRandomLeFlag":Z
    .end local v10    # "isHostSupportRandomLeFlag":Z
    .end local v11    # "isRadomLeConnectCalledFlag":Z
    .end local v13    # "profileVersion":Ljava/lang/String;
    :cond_7
    const-string v14, "SmLEAutoConnecter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[CMAC] connectLEDevice - device "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " (first Auto Connection)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 428
    .restart local v7    # "hostBluetoothVersion":I
    .restart local v8    # "isGearNotified":Z
    .restart local v9    # "isGearSupportRandomLeFlag":Z
    .restart local v10    # "isHostSupportRandomLeFlag":Z
    .restart local v11    # "isRadomLeConnectCalledFlag":Z
    .restart local v13    # "profileVersion":Ljava/lang/String;
    :cond_8
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Gear device random LE is Supported and Gear is not notified. use connectGattUsePublicAddr"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 430
    :try_start_3
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v15, v1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 436
    :goto_4
    const/4 v11, 0x0

    goto :goto_2

    .line 431
    :catch_0
    move-exception v6

    .line 432
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_4

    .line 439
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :cond_9
    const-string v14, "1.6"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "1.0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "0.1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 441
    :cond_a
    const/4 v9, 0x0

    .line 442
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Gear device random LE is NOT Supported. use connectGattUsePublicAddr"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 444
    :try_start_5
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v15, v1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    .line 447
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 449
    :catch_1
    move-exception v6

    .line 450
    .local v6, "e":Ljava/lang/NoSuchMethodError;
    :try_start_6
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Exception No Such method. use connectGatt "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 454
    const/4 v11, 0x1

    .line 461
    goto/16 :goto_2

    .line 455
    .end local v6    # "e":Ljava/lang/NoSuchMethodError;
    :catch_2
    move-exception v6

    .line 456
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Exception No Such method. use connectGatt "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 460
    const/4 v11, 0x1

    .line 461
    goto/16 :goto_2

    .line 463
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :cond_b
    const-string v14, "UNKNOWN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 465
    const-string v14, "SmLEAutoConnecter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[CMAC] connectLEDevice: CM received error value..stop AC : profile version "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 470
    :cond_c
    const-string v14, "SmLEAutoConnecter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[CMAC] connectLEDevice: Worng Profile version "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 480
    :cond_d
    const-string v14, "SmLEAutoConnecter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[CMAC] connectLEDevice : already updated. RandomLESupport:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLe()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 486
    :cond_e
    const/4 v12, 0x0

    .line 488
    .local v12, "isRandomLEFlag":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_10

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x16

    if-le v14, v15, :cond_10

    .line 489
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : M OS. use connectGattUsePublicAddr"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 491
    :try_start_7
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v15, v1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v2

    .line 492
    const/4 v12, 0x0

    .line 514
    :goto_5
    :try_start_8
    const-string v14, "2.0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 516
    const/4 v12, 0x1

    .line 519
    :cond_f
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v14

    if-nez v14, :cond_11

    .line 521
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeUpdated(Z)V

    .line 522
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v12, v15, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeValues(ZZZI)V

    goto/16 :goto_3

    .line 494
    :catch_3
    move-exception v6

    .line 495
    .local v6, "e":Ljava/lang/NoSuchMethodError;
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Exception No Such method. use connectGatt "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 499
    const/4 v12, 0x1

    .line 506
    goto :goto_5

    .line 500
    .end local v6    # "e":Ljava/lang/NoSuchMethodError;
    :catch_4
    move-exception v6

    .line 501
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Exception No Such method. use connectGatt "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 505
    const/4 v12, 0x1

    .line 506
    goto :goto_5

    .line 509
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :cond_10
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Random LE is not Supported. use connectGatt"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    goto :goto_5

    .line 525
    :cond_11
    const-string v14, "SmLEAutoConnecter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[CMAC] connectLEDevice : already updated. RandomLESupport:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLe()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 555
    .end local v12    # "isRandomLEFlag":Z
    .restart local v5    # "deviceSets":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_12
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 556
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setGattObjectTryCnt(I)V

    .line 557
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto/16 :goto_0

    .line 560
    .end local v5    # "deviceSets":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_13
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "[CMAC] btGatt is null, retry LE Connection"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getGattObjectTryCnt()I

    move-result v3

    .line 563
    .local v3, "cnt":I
    const/4 v14, 0x5

    if-ge v3, v14, :cond_15

    .line 564
    const-string v14, "SmLEAutoConnecter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Sending 1 second Delayed intent for for gatt object binding count is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v15, 0x3e9

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 566
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v15, 0x3e9

    const-wide/16 v16, 0x3e8

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 567
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "Sending 1 second Delayed timer for Gatt oject binding is ok "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 569
    :cond_14
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "Sending 1 second Delayed timer for Gatt oject binding is Failed"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 572
    :cond_15
    const-string v14, "SmLEAutoConnecter"

    const-string v15, "LE connection retry count exceed, stop retry "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setGattObjectTryCnt(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;)V
    .locals 14
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v13, 0x1

    .line 587
    monitor-enter p0

    if-nez p1, :cond_0

    .line 588
    :try_start_0
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] Device is NULL"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    :goto_0
    monitor-exit p0

    return-void

    .line 593
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v10

    const/16 v11, 0xc

    if-eq v10, v11, :cond_1

    .line 594
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : bonded state is not BONDED"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 587
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 599
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->isAutoConnectionRunning(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    if-ne v13, v10, :cond_2

    .line 600
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : LE connect request is already called..return this routine.."

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 605
    :cond_2
    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v10

    if-nez v10, :cond_3

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 606
    :cond_3
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] BR/EDR is connecting..retrun LE Connection Reqeust"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 611
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->isBREDRConnectingState(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 612
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] BR/EDR rety is connecting..retrun LE Connection Reqeust"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 618
    .local v1, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v1, :cond_6

    .line 619
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : deviceSet is null"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 623
    :cond_6
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 625
    .local v0, "btGatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v0, :cond_8

    .line 626
    const-string v10, "SmLEAutoConnecter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[CMAC] connectLEDeviceafterLLOrRUT - device "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mBluetoothGatt is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :goto_1
    if-eqz v0, :cond_7

    .line 634
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT update mBluetoothGatt"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v10, :cond_7

    .line 638
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v11, 0x7

    invoke-virtual {v10, v11, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 639
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "connectLEDeviceafterLLOrRUT : call closeProfileProxy for Gatt instance"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 644
    :cond_7
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v3

    .line 645
    .local v3, "hostBluetoothVersion":I
    const/4 v7, 0x0

    .line 646
    .local v7, "isRadomLeConnectCalledFlag":Z
    const/4 v5, 0x0

    .line 647
    .local v5, "isGearSupportRandomLeFlag":Z
    const/4 v6, 0x0

    .line 649
    .local v6, "isHostSupportRandomLeFlag":Z
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : check LE address type"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v10

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getWearableProfileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 655
    .local v9, "profileVersion":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v10

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isGearNotifiedRandomLeTrueFlag(Ljava/lang/String;)Z

    move-result v4

    .line 657
    .local v4, "isGearNotified":Z
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isRandomLESupported()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 659
    const/4 v6, 0x1

    .line 661
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Random LE is Supported. connect LE"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v10, "2.0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 665
    const/4 v5, 0x1

    .line 667
    if-ne v4, v13, :cond_9

    .line 669
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Gear device random LE is Supported and Gear is notified. use connectGatt"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 673
    const/4 v7, 0x1

    .line 723
    :goto_2
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v10

    if-nez v10, :cond_e

    .line 725
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeUpdated(Z)V

    .line 726
    invoke-virtual {v1, v7, v5, v6, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeValues(ZZZI)V

    .line 778
    :goto_3
    if-nez v0, :cond_13

    .line 779
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : connectGatt fail"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 629
    .end local v3    # "hostBluetoothVersion":I
    .end local v4    # "isGearNotified":Z
    .end local v5    # "isGearSupportRandomLeFlag":Z
    .end local v6    # "isHostSupportRandomLeFlag":Z
    .end local v7    # "isRadomLeConnectCalledFlag":Z
    .end local v9    # "profileVersion":Ljava/lang/String;
    :cond_8
    const-string v10, "SmLEAutoConnecter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[CMAC] connectLEDeviceafterLLOrRUT - device "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (first Auto Connection)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 677
    .restart local v3    # "hostBluetoothVersion":I
    .restart local v4    # "isGearNotified":Z
    .restart local v5    # "isGearSupportRandomLeFlag":Z
    .restart local v6    # "isHostSupportRandomLeFlag":Z
    .restart local v7    # "isRadomLeConnectCalledFlag":Z
    .restart local v9    # "profileVersion":Ljava/lang/String;
    :cond_9
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Gear device random LE is Supported and Gear is not notified. use connectGattUsePublicAddr"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 679
    :try_start_3
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-interface {v10, p1, v11, v12}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 685
    :goto_4
    const/4 v7, 0x0

    goto :goto_2

    .line 680
    :catch_0
    move-exception v2

    .line 681
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_4

    .line 688
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_a
    const-string v10, "1.6"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "1.0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "0.1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 690
    :cond_b
    const/4 v5, 0x0

    .line 691
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Gear device random LE is NOT Supported. use connectGattUsePublicAddr"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 693
    :try_start_5
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-interface {v10, p1, v11, v12}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 696
    const/4 v7, 0x0

    goto :goto_2

    .line 698
    :catch_1
    move-exception v2

    .line 699
    .local v2, "e":Ljava/lang/NoSuchMethodError;
    :try_start_6
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Exception No Such method. use connectGatt "

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 703
    const/4 v7, 0x1

    .line 710
    goto/16 :goto_2

    .line 704
    .end local v2    # "e":Ljava/lang/NoSuchMethodError;
    :catch_2
    move-exception v2

    .line 705
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Exception No Such method. use connectGatt "

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 709
    const/4 v7, 0x1

    .line 710
    goto/16 :goto_2

    .line 712
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_c
    const-string v10, "UNKNOWN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 714
    const-string v10, "SmLEAutoConnecter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[CMAC] connectLEDeviceafterLLOrRUT: CM received error value..stop AC : profile version "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 719
    :cond_d
    const-string v10, "SmLEAutoConnecter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[CMAC] connectLEDeviceafterLLOrRUT: Worng Profile version "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 729
    :cond_e
    const-string v10, "SmLEAutoConnecter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[CMAC] connectLEDeviceafterLLOrRUT : already updated. RandomLESupport:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLe()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 735
    :cond_f
    const/4 v8, 0x0

    .line 737
    .local v8, "isRandomLEFlag":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_11

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x16

    if-le v10, v11, :cond_11

    .line 738
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : M OS. use connectGattUsePublicAddr"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 740
    :try_start_7
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-interface {v10, p1, v11, v12}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    .line 741
    const/4 v8, 0x0

    .line 763
    :goto_5
    :try_start_8
    const-string v10, "2.0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 765
    const/4 v8, 0x1

    .line 768
    :cond_10
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v10

    if-nez v10, :cond_12

    .line 770
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeUpdated(Z)V

    .line 771
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v8, v11, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeValues(ZZZI)V

    goto/16 :goto_3

    .line 743
    :catch_3
    move-exception v2

    .line 744
    .local v2, "e":Ljava/lang/NoSuchMethodError;
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Exception No Such method. use connectGatt "

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 748
    const/4 v8, 0x1

    .line 755
    goto :goto_5

    .line 749
    .end local v2    # "e":Ljava/lang/NoSuchMethodError;
    :catch_4
    move-exception v2

    .line 750
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Exception No Such method. use connectGatt "

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 754
    const/4 v8, 0x1

    .line 755
    goto :goto_5

    .line 758
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_11
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Random LE is not Supported. use connectGatt"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    goto :goto_5

    .line 774
    :cond_12
    const-string v10, "SmLEAutoConnecter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[CMAC] connectLEDeviceafterLLOrRUT : already updated. RandomLESupport:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLe()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 785
    .end local v8    # "isRandomLEFlag":Z
    :cond_13
    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 788
    if-eqz v0, :cond_14

    .line 789
    const-string v10, "SmLEAutoConnecter"

    const-string v11, "[CMAC] Gatt instance is created"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 794
    :cond_14
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method private disconnectLE(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1100
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 1101
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1102
    const-string v3, "SmLEAutoConnecter"

    const-string v4, "[CMAC] stop Autoconnection process"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1106
    .local v2, "macAddr":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1107
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_0

    .line 1108
    const-string v3, "SmLEAutoConnecter"

    const-string v4, "[CMAC] disconnectLE : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v2    # "macAddr":Ljava/lang/String;
    :goto_0
    return-void

    .line 1112
    .restart local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .restart local v2    # "macAddr":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnectionFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1115
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->disconnectBLEDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1123
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 1125
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto :goto_0

    .line 1116
    :catch_0
    move-exception v1

    .line 1118
    .local v1, "e":Landroid/os/DeadObjectException;
    invoke-virtual {v1}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_1

    .line 1119
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v1

    .line 1120
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1127
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "macAddr":Ljava/lang/String;
    :cond_2
    const-string v3, "SmLEAutoConnecter"

    const-string v4, "[CMAC] device address is not available"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doGattObjectTry(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 802
    if-nez p1, :cond_1

    .line 803
    const-string v2, "SmLEAutoConnecter"

    const-string v3, "[CMAC] Device is NULL"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 807
    .local v1, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v1, :cond_2

    .line 808
    const-string v2, "SmLEAutoConnecter"

    const-string v3, "[CMAC] doGattObjectTry - deviceSet is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 812
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getGattObjectTryCnt()I

    move-result v0

    .line 814
    .local v0, "cnt":I
    add-int/lit8 v0, v0, 0x1

    .line 815
    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setGattObjectTryCnt(I)V

    .line 816
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 818
    const-string v2, "SmLEAutoConnecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] Gatt object binding trial count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 820
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->connectLEDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method private getBLEGattInstance(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;
    .locals 4
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1211
    if-nez p1, :cond_0

    .line 1218
    :goto_0
    return-object v1

    .line 1213
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getACDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1214
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_1

    .line 1215
    const-string v2, "SmLEAutoConnecter"

    const-string v3, "deviceSet is null!!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1218
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Landroid/bluetooth/BluetoothGattCallback;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;
    .locals 3
    .param p0, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .param p1, "gattCallbacks"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    const/4 v0, 0x0

    .line 80
    if-nez p0, :cond_0

    .line 81
    const-string v1, "SmLEAutoConnecter"

    const-string v2, "[CMAC] SmLEAutoConnectHandler - Sorry! ConnectionManager instance is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-object v0

    .line 86
    :cond_0
    if-nez p1, :cond_1

    .line 87
    const-string v1, "SmLEAutoConnecter"

    const-string v2, "[CMAC] SmLEAutoConnectHandler - Sorry! BluetoothGattCallback instance is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    if-nez v0, :cond_3

    .line 94
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Landroid/bluetooth/BluetoothGattCallback;)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    .line 98
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_3
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initRetryCnt(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1410
    const-string v2, "SmLEAutoConnecter"

    const-string v3, "[CMAC] initRetryCnt - INIT_RECOVERY_RETRY_CNT_SPP"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    if-eqz p1, :cond_1

    .line 1415
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isSppRetryRecoveried()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1416
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1417
    .local v0, "bundles":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 1418
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1419
    const-string v2, "RECONNECTION_STRING_STEP"

    const-string v3, "INIT_RECOVERY_RETRY_CNT_SPP"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v3, 0x18

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 1426
    .end local v0    # "bundles":Landroid/os/Bundle;
    .end local v1    # "itemBundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 1423
    :cond_1
    const-string v2, "SmLEAutoConnecter"

    const-string v3, "[CMAC] initRetryCnt - device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isBREDRConnectingState(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1159
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isBREDRConnecting(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 1161
    .local v0, "ret":Z
    return v0
.end method

.method private isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "service"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .prologue
    .line 1138
    if-nez p1, :cond_0

    .line 1139
    const-string v2, "SmLEAutoConnecter"

    const-string v3, "[CMAC] isConnectingServiceState - device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    :cond_0
    const/4 v0, 0x0

    .line 1142
    .local v0, "currentstate":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v1

    .line 1143
    .local v1, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v0

    .line 1145
    const-string v2, "SmLEAutoConnecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] Current State(is connecting...?) - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1147
    const/4 v2, 0x1

    .line 1149
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized onConnectedGattCallback(Landroid/bluetooth/BluetoothDevice;)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getWearableProfileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "profileVersion":Ljava/lang/String;
    const-string v4, "2.0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .line 165
    .local v1, "isWearableRandomLe":Z
    :cond_0
    const-string v4, "SmLEAutoConnecter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CMAC] connectLE History : is wearable device supported for LE random address in HostDevice : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v4, "SmLEAutoConnecter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CMAC] connectLE History : is Host device supported for LE random address : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isRandomLESupported()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v4, "SmLEAutoConnecter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CMAC] connectLE History : HostDevice BT version is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " enum type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 171
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_2

    .line 172
    const-string v3, "SmLEAutoConnecter"

    const-string v4, "[CMAC] processConnectionStateChangeResponse : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 176
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v4

    if-ne v4, v3, :cond_3

    .line 178
    const-string v4, "SmLEAutoConnecter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CMAC] connectLE History : The first LE Connect request is RandomLE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLe()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v4, "SmLEAutoConnecter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CMAC] connectLE History : First HostSupportRandomLE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isHostSupportRandomLE()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", First GearSupportRandomLE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 180
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isGearSupportRandomLE()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", First HostBTVersion: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->gethostBluetoothVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " enum type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getIsFirstAttempt()Z

    move-result v4

    if-ne v4, v3, :cond_5

    .line 190
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 192
    const-string v3, "SmLEAutoConnecter"

    const-string v4, "[CMAC] Sending 2 second Delayed timer for Le disconnection"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_2
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSICheckerState(I)V

    .line 197
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 161
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v1    # "isWearableRandomLe":Z
    .end local v2    # "profileVersion":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 184
    .restart local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .restart local v1    # "isWearableRandomLe":Z
    .restart local v2    # "profileVersion":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v4, "SmLEAutoConnecter"

    const-string v5, "[CMAC] connectLE History : first isRandomLE isNotupdated"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :cond_4
    const-string v3, "SmLEAutoConnecter"

    const-string v4, "[CMAC] Sending 2 second Delayed timer for Le disconnection Failed"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 200
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    const-string v3, "SmLEAutoConnecter"

    const-string v4, "[CMAC] request runBLEMonitorRssi"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mLeLowRssi:I

    iget v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mLeMidRssi:I

    iget v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mLeHighRssi:I

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->runBLEMonitorRssi(Landroid/bluetooth/BluetoothDevice;III)Z

    .line 203
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setIsFirstAttempt(Z)V

    .line 204
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSICheckerState(I)V

    .line 205
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized onDisconnectedGattCallback(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    const-string v0, "SmLEAutoConnecter"

    const-string v1, "[CMAC] Cancel LE disconnection alarm timer"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private processBluetoothStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/16 v3, 0xc

    const/4 v4, 0x0

    .line 1038
    const/16 v1, 0xa

    if-ne p2, v1, :cond_1

    .line 1039
    const-string v1, "SmLEAutoConnecter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMAC] BlueTooth State is set OFF : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mTryAutoBTEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    iget-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mTryAutoBTEnable:Z

    if-eqz v1, :cond_0

    .line 1043
    const-string v1, "SmLEAutoConnecter"

    const-string v2, "[CMAC] Let replace Bluetooth STATE-OFF with STATE-ON (STATE-OFF -> STATE-ON)"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iput-boolean v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mTryAutoBTEnable:Z

    .line 1046
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1049
    :cond_1
    if-ne p2, v3, :cond_0

    .line 1051
    const-string v1, "SmLEAutoConnecter"

    const-string v2, "[CMAC] change BlueTooth State(STATE-ON)"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    if-eqz p1, :cond_0

    .line 1054
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1056
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->initRetryCnt(Landroid/bluetooth/BluetoothDevice;)V

    .line 1057
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1058
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-eqz v0, :cond_2

    .line 1060
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setIsFirstAttempt(Z)V

    .line 1061
    invoke-virtual {v0, v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSICheckerState(I)V

    .line 1062
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1066
    :cond_2
    const-string v1, "SmLEAutoConnecter"

    const-string v2, "[CMSC] unset BR/EDR Connecting Flag....."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {v1, p1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1070
    const-string v1, "SmLEAutoConnecter"

    const-string v2, "[CMAC] BluetoothStateChange - call connectLEDevice"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->connectLEDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method private declared-synchronized processConnectionStateChangeResponse(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 227
    monitor-enter p0

    if-nez p1, :cond_1

    .line 228
    :try_start_0
    const-string v0, "SmLEAutoConnecter"

    const-string v1, "[CMAC] BluetoothDevice instance is NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 232
    :cond_1
    :try_start_1
    const-string v0, "SmLEAutoConnecter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC] onConnectionStateChange ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->GATT_SUCCESS:I

    if-ne p2, v0, :cond_2

    .line 236
    const-string v0, "SmLEAutoConnecter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC] onConnectionStateChange - LE connection successful : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 237
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->onConnectedGattCallback(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 241
    :cond_2
    if-nez p3, :cond_0

    .line 242
    :try_start_2
    const-string v0, "SmLEAutoConnecter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC] onConnectionStateChange - LE disconnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 243
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->onDisconnectedGattCallback(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized processRecovery(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    .line 1170
    monitor-enter p0

    if-nez p1, :cond_1

    .line 1171
    :try_start_0
    const-string v1, "SmLEAutoConnecter"

    const-string v2, "[CMAC] processRecovery - device is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1200
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1175
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1176
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_2

    .line 1177
    const-string v1, "SmLEAutoConnecter"

    const-string v2, "[CMAC] processRecovery : deviceSet is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1170
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1182
    .restart local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1183
    const-string v1, "SmLEAutoConnecter"

    const-string v2, "[CMAC] processRecovery : this device is not connected previously"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1187
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRecoveryFlag(Z)V

    .line 1188
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1189
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->disconnectAllProfile(Landroid/bluetooth/BluetoothDevice;)V

    .line 1191
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1192
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1193
    const-string v1, "SmLEAutoConnecter"

    const-string v2, "[CMAC] Sending 6 second Delayed timer for LE connection"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 1197
    const-string v1, "SmLEAutoConnecter"

    const-string v2, "[CMAC] wake start..."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private restartAutoConnection(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 127
    if-nez p1, :cond_1

    .line 128
    const-string v0, "SmLEAutoConnecter"

    const-string v1, "[CMAC] device is NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    if-nez v0, :cond_2

    .line 135
    const-string v0, "SmLEAutoConnecter"

    const-string v1, "[CMAC] restartAutoConnection - WearableState is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_2
    const-string v0, "SmLEAutoConnecter"

    const-string v1, "[CMAC] start AutoConnection for service restart"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 143
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isContainDeviceSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    const-string v0, "SmLEAutoConnecter"

    const-string v1, "[CMAC] restartAutoConnection : putDeviceMacForACDeviceSet.."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putDeviceMacForACDeviceSet(Ljava/lang/String;)V

    .line 151
    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 152
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->connectLEDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 149
    :cond_3
    const-string v0, "SmLEAutoConnecter"

    const-string v1, "restartAutoConnection - DeviceSet is already exist"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 155
    :cond_4
    const-string v0, "SmLEAutoConnecter"

    const-string v1, "restartAutoConnection - Auto Connection is cancel..WearableState is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized runBLEMonitorRssi(Landroid/bluetooth/BluetoothDevice;III)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "lowRssi"    # I
    .param p3, "midRssi"    # I
    .param p4, "highRssi"    # I

    .prologue
    const/4 v2, 0x0

    .line 310
    monitor-enter p0

    if-nez p1, :cond_0

    .line 333
    :goto_0
    monitor-exit p0

    return v2

    .line 313
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 314
    .local v1, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v1, :cond_1

    .line 315
    const-string v3, "SmLEAutoConnecter"

    const-string v4, "[CMAC] runBLEMonitorRssi : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 310
    .end local v1    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 319
    .restart local v1    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getBLEGattInstance(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 320
    .local v0, "btGatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v0, :cond_2

    .line 321
    const-string v3, "SmLEAutoConnecter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] runBLEMonitorRssi : btGatt, addr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 322
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 321
    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothGattFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothGattInterface;

    move-result-object v3

    invoke-interface {v3, v0, p2, p3, p4}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothGattInterface;->monitorRssi(Landroid/bluetooth/BluetoothGatt;III)Z

    move-result v2

    .line 328
    .local v2, "ret":Z
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSIVFlag(Z)V

    .line 329
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto :goto_0

    .line 332
    .end local v2    # "ret":Z
    :cond_2
    const-string v3, "SmLEAutoConnecter"

    const-string v4, "[CMAC] runBLEMonitorRssi : btGatt is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private runBluetoothStateOffOn()V
    .locals 3

    .prologue
    .line 989
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 1003
    :goto_0
    return-void

    .line 991
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mTryAutoBTEnable:Z

    .line 993
    :try_start_0
    const-string v1, "SmLEAutoConnecter"

    const-string v2, "[CMAC] BT shutdown - BluetoothAdapter"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothAdapterFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothAdapterInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothAdapterInterface;->shutdown(Landroid/bluetooth/BluetoothAdapter;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 996
    :catch_0
    move-exception v0

    .line 997
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-string v1, "SmLEAutoConnecter"

    const-string v2, "[CMAC] BT disable - BluetoothAdapter"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0

    .line 999
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 1000
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "SmLEAutoConnecter"

    const-string v2, "[CMAC] BT disable - BluetoothAdapter"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method private startAutoConnection(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1011
    if-nez p1, :cond_1

    .line 1012
    const-string v0, "SmLEAutoConnecter"

    const-string v1, "[CMAC] device is NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1017
    const-string v0, "SmLEAutoConnecter"

    const-string v1, "[CMAC] startAutoConnection - WearableState is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1021
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 1022
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1023
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 1024
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 1027
    :cond_3
    const-string v0, "SmLEAutoConnecter"

    const-string v1, "[CMAC] device address is not available"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1433
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1436
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    .line 1437
    return-void
.end method

.method protected declared-synchronized disconnectBLEDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 1084
    monitor-enter p0

    :try_start_0
    const-string v1, "SmLEAutoConnecter"

    const-string v2, "[CMAC] disconnectBLEDevice to connect AG"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getBLEGattInstance(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 1087
    .local v0, "btGatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v0, :cond_0

    .line 1088
    const-string v1, "SmLEAutoConnecter"

    const-string v2, "[CMAC] call disconnect LE"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    :cond_0
    monitor-exit p0

    return-void

    .line 1084
    .end local v0    # "btGatt":Landroid/bluetooth/BluetoothGatt;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendCommandMessage(Landroid/bluetooth/BluetoothDevice;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1302
    const-string v8, "SmLEAutoConnecter"

    const-string v9, "[CMAC] enter sendCommandMessage working method"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const-string v8, "AUTO_CONNECTION_STRING_STEP"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1307
    .local v7, "step":Ljava/lang/String;
    const-string v8, "ACTION_ACL_DISCONNECTED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1308
    const-string v8, "SmLEAutoConnecter"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : ACTION_ACL_DISCONNECTED"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getExtraDisconnectionReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1312
    .local v3, "reason":I
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getExtraLinkType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1313
    .local v1, "linktype":I
    invoke-direct {p0, p1, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->checkLowLevelDisconnection(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1407
    .end local v1    # "linktype":I
    .end local v3    # "reason":I
    :cond_0
    :goto_0
    return-void

    .line 1317
    :cond_1
    const-string v8, "MSG_GATT_CONNECTION_STATE_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1318
    const-string v8, "SmLEAutoConnecter"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : MSG_GATT_CONNECTION_STATE_CHANGE"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const-string v8, "AUTO_CONNECTION_INT_GATT_STATE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1321
    .local v6, "status":I
    const-string v8, "AUTO_CONNECTION_INT_GATT_NEWSTATE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1322
    .local v2, "newState":I
    invoke-direct {p0, p1, v6, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->processConnectionStateChangeResponse(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 1325
    .end local v2    # "newState":I
    .end local v6    # "status":I
    :cond_2
    const-string v8, "MSG_MONITOR_RSSI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1326
    const-string v8, "SmLEAutoConnecter"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : MSG_MONITOR_RSSI"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    const-string v8, "AUTO_CONNECTION_INT_MONITOR_RSSI"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1328
    .local v4, "rssi":I
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->checkMonitorForRssi(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 1331
    .end local v4    # "rssi":I
    :cond_3
    const-string v8, "ACTION_STATE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1332
    const-string v8, "SmLEAutoConnecter"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : ACTION_STATE_CHANGED"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    const-string v8, "BUNDLE_CMKEY_INT_BLUETOOTHADAPTER_STATE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1334
    .local v5, "state":I
    invoke-direct {p0, p1, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->processBluetoothStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 1343
    .end local v5    # "state":I
    :cond_4
    const-string v8, "REQUEST_RECOVERY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1344
    const-string v8, "SmLEAutoConnecter"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : REQUEST_RECOVERY"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1348
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_5

    .line 1349
    const-string v8, "SmLEAutoConnecter"

    const-string v9, "[CMAC] sendCommandMessage : deviceSet is null"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1353
    :cond_5
    const/4 v8, 0x2

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRSSICheckerState()I

    move-result v9

    if-ne v8, v9, :cond_6

    .line 1354
    const-string v8, "SmLEAutoConnecter"

    const-string v9, "[CMAC] Recovery : request to recovery (BT OFF/ON)"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    invoke-virtual {v0, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSICheckerState(I)V

    .line 1357
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->runBluetoothStateOffOn()V

    .line 1358
    invoke-virtual {v0, v11}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setIsFirstAttempt(Z)V

    .line 1359
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto/16 :goto_0

    .line 1360
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRSSICheckerState()I

    move-result v8

    if-ne v11, v8, :cond_7

    .line 1361
    const-string v8, "SmLEAutoConnecter"

    const-string v9, "[CMAC] Recovery : Skip Recovery(BT OFF/ON), Start Auto Connection "

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    invoke-virtual {v0, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setIsFirstAttempt(Z)V

    .line 1364
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1365
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->initRetryCnt(Landroid/bluetooth/BluetoothDevice;)V

    .line 1366
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->processRecovery(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1367
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRSSICheckerState()I

    move-result v8

    if-nez v8, :cond_0

    .line 1368
    const-string v8, "SmLEAutoConnecter"

    const-string v9, "[CMAC] Recovery : recovery for first connection requestion.."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->initRetryCnt(Landroid/bluetooth/BluetoothDevice;)V

    .line 1371
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->processRecovery(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1375
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_8
    const-string v8, "HFP_CONNECTION_FAIL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1376
    const-string v8, "SmLEAutoConnecter"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : HFP_CONNECTION_FAIL"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    new-instance v8, Landroid/os/Handler;

    iget-object v9, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler$2;

    invoke-direct {v9, p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler$2;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1392
    :cond_9
    const-string v8, "RESTART_AUTO_CONNECT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1393
    const-string v8, "SmLEAutoConnecter"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : RESTART_AUTO_CONNECT"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->restartAutoConnection(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1397
    :cond_a
    const-string v8, "STOP_AUTO_CONNECTION"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1398
    const-string v8, "SmLEAutoConnecter"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : STOP_AUTO_CONNECTION"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->disconnectLE(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1402
    :cond_b
    const-string v8, "BLUETOOTH_STATE_OFF_ON"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1403
    const-string v8, "SmLEAutoConnecter"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : BLUETOOTH_STATE_OFF_ON"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->runBluetoothStateOffOn()V

    goto/16 :goto_0
.end method
