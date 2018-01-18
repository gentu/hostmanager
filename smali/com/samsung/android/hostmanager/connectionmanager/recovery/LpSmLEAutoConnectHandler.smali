.class public Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;
.super Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;
.source "LpSmLEAutoConnectHandler.java"


# static fields
.field private static final DEFAULT_LE_SCAN_INTERVAL:I = 0xffff

.field private static final DEFAULT_LE_SCAN_WINDOW:I = 0xffff

.field private static final FAST_LE_SCAN_INTERVAL:I = 0x60

.field private static final FAST_LE_SCAN_WINDOW:I = 0x30

.field private static final LE_HIGH_RSSI:I = 0x7f

.field private static final LE_LOW_RSSI:I = -0x56

.field private static final LE_MID_RSSI:I = -0x55

.field private static final LE_RSSI_THRESHOLD:I = -0x55

.field private static final MSG_DEFAULT_LE_SCAN_PARAMETER:I = 0x3ec

.field private static final MSG_GATT_SERVICE_BINDING:I = 0x3e9

.field private static final MSG_LE_DISCONNECT:I = 0x3e8

.field private static final MSG_LE_SCAN_PARAMETER:I = 0x3eb

.field private static final MSG_WAIT_AUTOCONNECT_SERVICE:I = 0x3ea

.field private static final RECOVERY_CHECK_RSSI:I = 0x2

.field private static final RECOVERY_FIRST_CONNECTION_RETRY:I = 0x0

.field private static final RECOVERY_NO_CHECK_RSSI:I = 0x1

.field private static final SLOW_LE_SCAN_INTERVAL:I = 0x800

.field private static final SLOW_LE_SCAN_TIMER:I = 0xea60

.field private static final SLOW_LE_SCAN_WINDOW:I = 0x80

.field private static final TAG:Ljava/lang/String; = "LpSmLEAutoConnecter"

.field private static final WAITTING_TINE_FOR_DISCONNECT_CALL:I = 0x2710

.field private static mLocker:Ljava/lang/Object;

.field private static pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;


# instance fields
.field private mLeHighRssi:I

.field private mLeLowRssi:I

.field private mLeMidRssi:I

.field private mTryAutoBTEnable:Z

.field protected final mWorkerHandler:Landroid/os/Handler;

.field private mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mLocker:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Landroid/bluetooth/BluetoothGattCallback;)V
    .locals 2
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .param p2, "gattCallbacks"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;-><init>()V

    .line 47
    const/16 v0, -0x56

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mLeLowRssi:I

    .line 49
    const/16 v0, -0x55

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mLeMidRssi:I

    .line 51
    const/16 v0, 0x7f

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mLeHighRssi:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    .line 1342
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler$1;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    .line 114
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 115
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 116
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    .line 117
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    .line 118
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 119
    const-string v0, "LpSmLEAutoConnecter"

    const-string v1, "[CMAC] Sorry! Bluetooth is not supported in this device"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mTryAutoBTEnable:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->doGattObjectTry(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->startAutoConnection(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private checkLowLevelDisconnection(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reason"    # I
    .param p3, "linkType"    # I

    .prologue
    const/4 v5, 0x1

    const/16 v7, 0xc

    const/4 v6, 0x0

    .line 949
    if-nez p1, :cond_1

    .line 950
    const-string v2, "LpSmLEAutoConnecter"

    const-string v3, "[CMAC] Device is NULL"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    const-string v2, "LpSmLEAutoConnecter"

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

    .line 957
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 958
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_2

    .line 959
    const-string v2, "LpSmLEAutoConnecter"

    const-string v3, "[CMAC] checkLowLevelDisconnection : deviceSet is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 965
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRecoveryFlag()Z

    move-result v2

    if-ne v2, v5, :cond_3

    .line 966
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->BREDR_LINK_TYPE:I

    if-ne p3, v2, :cond_3

    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->LOCAL_USER_DISCONNECTION:I

    if-ne p2, v2, :cond_3

    .line 967
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 968
    invoke-virtual {v0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRecoveryFlag(Z)V

    .line 969
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 970
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->startAutoConnection(Landroid/bluetooth/BluetoothDevice;)V

    .line 976
    :cond_3
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->BREDR_LINK_TYPE:I

    if-ne p3, v2, :cond_7

    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->LOCAL_USER_DISCONNECTION:I

    if-ne v2, p2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 977
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->USER_REMOVED_BOND:I

    if-eq p2, v2, :cond_7

    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->AUTH_FAIL:I

    if-eq p2, v2, :cond_7

    .line 981
    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 982
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    .line 983
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 982
    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 985
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v1

    .line 986
    .local v1, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    const-string v2, "LpSmLEAutoConnecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 989
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 990
    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 986
    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const-string v2, "LpSmLEAutoConnecter"

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

    .line 998
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->CHIP_SET_ERROR:I

    if-ne v2, p2, :cond_5

    .line 1000
    const-string v2, "LpSmLEAutoConnecter"

    const-string v3, "[CMAC] ACL_DISCONNECT reason 34, set BREDR flag to flase"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {v2, p1, v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1004
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 1005
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1008
    .end local v1    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_6
    const-string v2, "LpSmLEAutoConnecter"

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

    .line 1013
    :cond_7
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->LE_LINK_TYPE:I

    if-ne p3, v2, :cond_9

    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->CONNECTION_ACCEPT_TIME_OUT_EXCEEDED:I

    if-ne p2, v2, :cond_9

    .line 1014
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_8

    .line 1015
    const-string v2, "LpSmLEAutoConnecter"

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

    .line 1020
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->runBluetoothStateOffOn()V

    goto/16 :goto_0

    .line 1023
    :cond_9
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->LE_LINK_TYPE:I

    if-ne p3, v2, :cond_e

    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->REASON_LINK_LOSS:I

    if-eq p2, v2, :cond_e

    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->CONN_FAILED_TO_BE_EASTABLISHED:I

    if-eq p2, v2, :cond_e

    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->USER_REMOVED_BOND:I

    if-eq p2, v2, :cond_e

    sget v2, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->REMOTE_USER_DISCONNECTION:I

    if-eq p2, v2, :cond_e

    .line 1027
    const-string v2, "LpSmLEAutoConnecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] ACTION_ACL_DISCONNECT - LE Disconnected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1028
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1027
    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string v2, "LpSmLEAutoConnecter"

    const-string v3, "[CMAC] LE AutoConnection is finish..request SPP & HFP Connection"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1032
    if-nez v0, :cond_a

    .line 1033
    const-string v2, "LpSmLEAutoConnecter"

    const-string v3, "[CMAC] checkLowLevelDisconnection : deviceSet is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1037
    :cond_a
    invoke-virtual {v0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 1038
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1040
    if-eqz p1, :cond_d

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 1041
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    .line 1042
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1041
    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1045
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1046
    if-nez v0, :cond_b

    .line 1047
    const-string v2, "LpSmLEAutoConnecter"

    const-string v3, "[CMAC] checkLowLevelDisconnection : deviceSet is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1051
    :cond_b
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRSSIVFlag()Z

    move-result v2

    if-ne v5, v2, :cond_c

    .line 1052
    const-string v2, "LpSmLEAutoConnecter"

    const-string v3, "[CMAC] RSSI callback is not avilable, restart auto connection : connectLEDeviceafterLLOrRUT.. "

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSIVFlag(Z)V

    .line 1059
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1062
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 1063
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1066
    :cond_c
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->connectAllProfile(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1069
    :cond_d
    const-string v2, "LpSmLEAutoConnecter"

    const-string v3, "[CMAC] device address is not available"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1073
    :cond_e
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->LE_LINK_TYPE:I

    if-ne p3, v2, :cond_f

    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->REASON_LINK_LOSS:I

    if-eq p2, v2, :cond_10

    :cond_f
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->LE_LINK_TYPE:I

    if-ne p3, v2, :cond_13

    sget v2, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->REMOTE_USER_DISCONNECTION:I

    if-ne p2, v2, :cond_13

    .line 1076
    :cond_10
    if-eqz p1, :cond_12

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 1077
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    .line 1078
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1077
    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1079
    const-string v2, "LpSmLEAutoConnecter"

    const-string v3, "[CMAC] LE link loss , start LE Autoconnection again"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 1082
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1083
    if-nez v0, :cond_11

    .line 1084
    const-string v2, "LpSmLEAutoConnecter"

    const-string v3, "[CMAC] checkLowLevelDisconnection : deviceSet is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1087
    :cond_11
    invoke-virtual {v0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 1088
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1090
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1093
    :cond_12
    const-string v2, "LpSmLEAutoConnecter"

    const-string v3, "[CMAC] device address is not available"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1097
    :cond_13
    const-string v2, "LpSmLEAutoConnecter"

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

    .line 276
    if-nez p1, :cond_0

    .line 277
    const-string v3, "LpSmLEAutoConnecter"

    const-string v4, "[CMAC] BluetoothDevice instance is NULL"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :goto_0
    return-void

    .line 281
    :cond_0
    const-string v3, "LpSmLEAutoConnecter"

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

    .line 284
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "macAddr":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 288
    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 289
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_1

    .line 290
    const-string v3, "LpSmLEAutoConnecter"

    const-string v4, "[CMAC] checkMonitorForRssi : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_1
    const/16 v3, -0x55

    if-lt p2, v3, :cond_2

    .line 296
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnectionFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 297
    const-string v3, "LpSmLEAutoConnecter"

    const-string v4, "[CMAC] rssi value is sufficient for AG connection establishment, disconnect BLE"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-direct {p0, p1, v6, v6, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->runBLEMonitorRssi(Landroid/bluetooth/BluetoothDevice;III)Z

    .line 301
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->disconnectBLEDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 311
    :cond_2
    :goto_1
    invoke-virtual {v0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSIVFlag(Z)V

    .line 312
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto :goto_0

    .line 302
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Landroid/os/DeadObjectException;
    invoke-virtual {v1}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_1

    .line 305
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 314
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v3, "LpSmLEAutoConnecter"

    const-string v4, "[CMAC] checkMonitorForRssi : device address is not available"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized connectLEDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 18
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 367
    monitor-enter p0

    if-nez p1, :cond_0

    .line 368
    :try_start_0
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Device is NULL"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    :goto_0
    monitor-exit p0

    return-void

    .line 372
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v14

    const/16 v15, 0xc

    if-eq v14, v15, :cond_1

    .line 373
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : bonded state is not BONDED"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 378
    :cond_1
    :try_start_2
    sget-object v14, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v14

    if-nez v14, :cond_2

    sget-object v14, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 379
    :cond_2
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] BR/EDR is connecting..retrun LE Connection Reqeust"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->isBREDRConnectingState(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 385
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] BR/EDR rety is connecting..retrun LE Connection Reqeust"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v4

    .line 390
    .local v4, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v4, :cond_5

    .line 391
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : deviceSet is null"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_5
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 397
    .local v2, "btGatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v2, :cond_7

    .line 398
    const-string v14, "LpSmLEAutoConnecter"

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

    .line 405
    :goto_1
    if-eqz v2, :cond_6

    .line 406
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice update mBluetoothGatt"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v14, :cond_6

    .line 410
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v15, 0x7

    invoke-virtual {v14, v15, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 411
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "connectLEDevice : call closeProfileProxy for Gatt instance"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 421
    :cond_6
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMSC] connectLEDevice : set device Type for android L (> KITKAT) "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v15}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setDeviceType(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v15

    if-ne v14, v15, :cond_8

    .line 424
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setDeviceSetDone(Z)V

    .line 430
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->setLEScanParameters(Landroid/bluetooth/BluetoothDevice;)V

    .line 433
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v7

    .line 434
    .local v7, "hostBluetoothVersion":I
    const/4 v11, 0x0

    .line 435
    .local v11, "isRadomLeConnectCalledFlag":Z
    const/4 v9, 0x0

    .line 436
    .local v9, "isGearSupportRandomLeFlag":Z
    const/4 v10, 0x0

    .line 438
    .local v10, "isHostSupportRandomLeFlag":Z
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : check LE address type"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getWearableProfileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 444
    .local v13, "profileVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isGearNotifiedRandomLeTrueFlag(Ljava/lang/String;)Z

    move-result v8

    .line 446
    .local v8, "isGearNotified":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isRandomLESupported()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 448
    const/4 v10, 0x1

    .line 450
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Random LE is Supported. connect LE"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v14, "2.0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 454
    const/4 v9, 0x1

    .line 456
    const/4 v14, 0x1

    if-ne v8, v14, :cond_9

    .line 458
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Gear device random LE is Supported and Gear is notified. use connectGatt"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 462
    const/4 v11, 0x1

    .line 520
    :goto_3
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v14

    if-nez v14, :cond_e

    .line 522
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeUpdated(Z)V

    .line 523
    invoke-virtual {v4, v11, v9, v10, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeValues(ZZZI)V

    .line 588
    :goto_4
    if-eqz v2, :cond_14

    .line 589
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] Gatt instance is created and Le Autoconnection is set to true"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-virtual {v4, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 593
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 595
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v5

    .line 596
    .local v5, "deviceSets":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v5, :cond_13

    .line 597
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : deviceSets is null"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    .end local v5    # "deviceSets":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v7    # "hostBluetoothVersion":I
    .end local v8    # "isGearNotified":Z
    .end local v9    # "isGearSupportRandomLeFlag":Z
    .end local v10    # "isHostSupportRandomLeFlag":Z
    .end local v11    # "isRadomLeConnectCalledFlag":Z
    .end local v13    # "profileVersion":Ljava/lang/String;
    :cond_7
    const-string v14, "LpSmLEAutoConnecter"

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

    .line 427
    :cond_8
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setDeviceSetDone(Z)V

    goto/16 :goto_2

    .line 466
    .restart local v7    # "hostBluetoothVersion":I
    .restart local v8    # "isGearNotified":Z
    .restart local v9    # "isGearSupportRandomLeFlag":Z
    .restart local v10    # "isHostSupportRandomLeFlag":Z
    .restart local v11    # "isRadomLeConnectCalledFlag":Z
    .restart local v13    # "profileVersion":Ljava/lang/String;
    :cond_9
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Gear device random LE is Supported and Gear is not notified. use connectGattUsePublicAddr"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 468
    :try_start_3
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v15, v1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 474
    :goto_5
    const/4 v11, 0x0

    goto :goto_3

    .line 469
    :catch_0
    move-exception v6

    .line 470
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_5

    .line 477
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :cond_a
    const-string v14, "1.6"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    const-string v14, "1.0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    const-string v14, "0.1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 479
    :cond_b
    const/4 v9, 0x0

    .line 480
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Gear device random LE is NOT Supported. use connectGattUsePublicAddr"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 482
    :try_start_5
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v15, v1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    .line 485
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 487
    :catch_1
    move-exception v6

    .line 488
    .local v6, "e":Ljava/lang/NoSuchMethodError;
    :try_start_6
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Exception No Such method. use connectGatt "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 492
    const/4 v11, 0x1

    .line 499
    goto/16 :goto_3

    .line 493
    .end local v6    # "e":Ljava/lang/NoSuchMethodError;
    :catch_2
    move-exception v6

    .line 494
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Exception No Such method. use connectGatt "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 498
    const/4 v11, 0x1

    .line 499
    goto/16 :goto_3

    .line 501
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :cond_c
    const-string v14, "UNKNOWN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 503
    const-string v14, "LpSmLEAutoConnecter"

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

    .line 504
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice: LE Connection not requested, set Default Scan Parameters"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v15, 0x3eb

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 506
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    const v15, 0xffff

    const v16, 0xffff

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z

    .line 507
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    goto/16 :goto_0

    .line 512
    :cond_d
    const-string v14, "LpSmLEAutoConnecter"

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

    .line 513
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice: LE Connection not requested, set Default Scan Parameters"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v15, 0x3eb

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 515
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    const v15, 0xffff

    const v16, 0xffff

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z

    .line 516
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    goto/16 :goto_0

    .line 526
    :cond_e
    const-string v14, "LpSmLEAutoConnecter"

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

    goto/16 :goto_4

    .line 532
    :cond_f
    const/4 v12, 0x0

    .line 534
    .local v12, "isRandomLEFlag":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_11

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x16

    if-le v14, v15, :cond_11

    .line 535
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : M OS. use connectGattUsePublicAddr"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 537
    :try_start_7
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v15, v1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v2

    .line 538
    const/4 v12, 0x0

    .line 560
    :goto_6
    :try_start_8
    const-string v14, "2.0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 562
    const/4 v12, 0x1

    .line 565
    :cond_10
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v14

    if-nez v14, :cond_12

    .line 567
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeUpdated(Z)V

    .line 568
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v12, v15, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeValues(ZZZI)V

    goto/16 :goto_4

    .line 540
    :catch_3
    move-exception v6

    .line 541
    .local v6, "e":Ljava/lang/NoSuchMethodError;
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Exception No Such method. use connectGatt "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 545
    const/4 v12, 0x1

    .line 552
    goto :goto_6

    .line 546
    .end local v6    # "e":Ljava/lang/NoSuchMethodError;
    :catch_4
    move-exception v6

    .line 547
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Exception No Such method. use connectGatt "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 551
    const/4 v12, 0x1

    .line 552
    goto :goto_6

    .line 555
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :cond_11
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice : Random LE is not Supported. use connectGatt"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    goto :goto_6

    .line 571
    :cond_12
    const-string v14, "LpSmLEAutoConnecter"

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

    goto/16 :goto_4

    .line 601
    .end local v12    # "isRandomLEFlag":Z
    .restart local v5    # "deviceSets":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_13
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 602
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setGattObjectTryCnt(I)V

    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto/16 :goto_0

    .line 606
    .end local v5    # "deviceSets":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_14
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] btGatt is null, retry LE Connection"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "[CMAC] connectLEDevice: LE Connection not requested, set Default Scan Parameters"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v15, 0x3eb

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 609
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    const v15, 0xffff

    const v16, 0xffff

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z

    .line 610
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getGattObjectTryCnt()I

    move-result v3

    .line 613
    .local v3, "cnt":I
    const/4 v14, 0x5

    if-ge v3, v14, :cond_16

    .line 614
    const-string v14, "LpSmLEAutoConnecter"

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

    .line 615
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v15, 0x3e9

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 616
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v15, 0x3e9

    const-wide/16 v16, 0x3e8

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 617
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "Sending 1 second Delayed timer for Gatt oject binding is ok "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 619
    :cond_15
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "Sending 1 second Delayed timer for Gatt oject binding is Failed"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 622
    :cond_16
    const-string v14, "LpSmLEAutoConnecter"

    const-string v15, "LE connection retry count exceed, stop retry "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

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

    .line 677
    monitor-enter p0

    if-nez p1, :cond_0

    .line 678
    :try_start_0
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] Device is NULL"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    :goto_0
    monitor-exit p0

    return-void

    .line 683
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v10

    const/16 v11, 0xc

    if-eq v10, v11, :cond_1

    .line 684
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : bonded state is not BONDED"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 677
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 689
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->isAutoConnectionRunning(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    if-ne v13, v10, :cond_2

    .line 690
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : LE connect request is already called..return this routine.."

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 695
    :cond_2
    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v10

    if-nez v10, :cond_3

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 696
    :cond_3
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] BR/EDR is connecting..retrun LE Connection Reqeust"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 701
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->isBREDRConnectingState(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 702
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] BR/EDR rety is connecting..retrun LE Connection Reqeust"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 707
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 708
    .local v1, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v1, :cond_6

    .line 709
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : deviceSet is null"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 713
    :cond_6
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 715
    .local v0, "btGatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v0, :cond_8

    .line 716
    const-string v10, "LpSmLEAutoConnecter"

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

    .line 723
    :goto_1
    if-eqz v0, :cond_7

    .line 724
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT update mBluetoothGatt"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v10, :cond_7

    .line 728
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v11, 0x7

    invoke-virtual {v10, v11, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 729
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "connectLEDeviceafterLLOrRUT : call closeProfileProxy for Gatt instance"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 734
    :cond_7
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v3

    .line 735
    .local v3, "hostBluetoothVersion":I
    const/4 v7, 0x0

    .line 736
    .local v7, "isRadomLeConnectCalledFlag":Z
    const/4 v5, 0x0

    .line 737
    .local v5, "isGearSupportRandomLeFlag":Z
    const/4 v6, 0x0

    .line 739
    .local v6, "isHostSupportRandomLeFlag":Z
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : check LE address type"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMSC] connectLEDeviceafterLLOrRUT : set device Type for android L (> KITKAT) "

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setDeviceType(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    if-ne v13, v10, :cond_9

    .line 751
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setDeviceSetDone(Z)V

    .line 757
    :goto_2
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->setLEScanParameters(Landroid/bluetooth/BluetoothDevice;)V

    .line 759
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v10

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getWearableProfileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 760
    .local v9, "profileVersion":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v10

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isGearNotifiedRandomLeTrueFlag(Ljava/lang/String;)Z

    move-result v4

    .line 762
    .local v4, "isGearNotified":Z
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isRandomLESupported()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 764
    const/4 v6, 0x1

    .line 766
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Random LE is Supported. connect LE"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v10, "2.0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 770
    const/4 v5, 0x1

    .line 772
    if-ne v4, v13, :cond_a

    .line 774
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Gear device random LE is Supported and Gear is notified. use connectGatt"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 778
    const/4 v7, 0x1

    .line 836
    :goto_3
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v10

    if-nez v10, :cond_f

    .line 838
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeUpdated(Z)V

    .line 839
    invoke-virtual {v1, v7, v5, v6, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeValues(ZZZI)V

    .line 890
    :goto_4
    if-nez v0, :cond_14

    .line 891
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : connectGatt fail"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT: LE Connection not requested, set Default Scan Parameters"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v11, 0x3eb

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 895
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v10

    const v11, 0xffff

    const v12, 0xffff

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z

    .line 896
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    goto/16 :goto_0

    .line 719
    .end local v3    # "hostBluetoothVersion":I
    .end local v4    # "isGearNotified":Z
    .end local v5    # "isGearSupportRandomLeFlag":Z
    .end local v6    # "isHostSupportRandomLeFlag":Z
    .end local v7    # "isRadomLeConnectCalledFlag":Z
    .end local v9    # "profileVersion":Ljava/lang/String;
    :cond_8
    const-string v10, "LpSmLEAutoConnecter"

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

    .line 754
    .restart local v3    # "hostBluetoothVersion":I
    .restart local v5    # "isGearSupportRandomLeFlag":Z
    .restart local v6    # "isHostSupportRandomLeFlag":Z
    .restart local v7    # "isRadomLeConnectCalledFlag":Z
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setDeviceSetDone(Z)V

    goto/16 :goto_2

    .line 782
    .restart local v4    # "isGearNotified":Z
    .restart local v9    # "profileVersion":Ljava/lang/String;
    :cond_a
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Gear device random LE is Supported and Gear is not notified. use connectGattUsePublicAddr"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 784
    :try_start_3
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-interface {v10, p1, v11, v12}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 790
    :goto_5
    const/4 v7, 0x0

    goto :goto_3

    .line 785
    :catch_0
    move-exception v2

    .line 786
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_5

    .line 793
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_b
    const-string v10, "1.6"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "1.0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "0.1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 795
    :cond_c
    const/4 v5, 0x0

    .line 796
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Gear device random LE is NOT Supported. use connectGattUsePublicAddr"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 798
    :try_start_5
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-interface {v10, p1, v11, v12}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 801
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 803
    :catch_1
    move-exception v2

    .line 804
    .local v2, "e":Ljava/lang/NoSuchMethodError;
    :try_start_6
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Exception No Such method. use connectGatt "

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 808
    const/4 v7, 0x1

    .line 815
    goto/16 :goto_3

    .line 809
    .end local v2    # "e":Ljava/lang/NoSuchMethodError;
    :catch_2
    move-exception v2

    .line 810
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Exception No Such method. use connectGatt "

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 814
    const/4 v7, 0x1

    .line 815
    goto/16 :goto_3

    .line 817
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_d
    const-string v10, "UNKNOWN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 819
    const-string v10, "LpSmLEAutoConnecter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[CMAC] connectLEDeviceafterLLOrRUT: CM received error value..stop AC : Profile version "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT: LE Connection not requested, set Default Scan Parameters"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v11, 0x3eb

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 822
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v10

    const v11, 0xffff

    const v12, 0xffff

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z

    .line 823
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    goto/16 :goto_0

    .line 828
    :cond_e
    const-string v10, "LpSmLEAutoConnecter"

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

    .line 829
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT: LE Connection not requested, set Default Scan Parameters"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v11, 0x3eb

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 831
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v10

    const v11, 0xffff

    const v12, 0xffff

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z

    .line 832
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    goto/16 :goto_0

    .line 842
    :cond_f
    const-string v10, "LpSmLEAutoConnecter"

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

    goto/16 :goto_4

    .line 847
    :cond_10
    const/4 v8, 0x0

    .line 849
    .local v8, "isRandomLEFlag":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_12

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x16

    if-le v10, v11, :cond_12

    .line 850
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : M OS. use connectGattUsePublicAddr"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 852
    :try_start_7
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-interface {v10, p1, v11, v12}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    .line 853
    const/4 v8, 0x0

    .line 875
    :goto_6
    :try_start_8
    const-string v10, "2.0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 877
    const/4 v8, 0x1

    .line 880
    :cond_11
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v10

    if-nez v10, :cond_13

    .line 882
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeUpdated(Z)V

    .line 883
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v8, v11, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeValues(ZZZI)V

    goto/16 :goto_4

    .line 855
    :catch_3
    move-exception v2

    .line 856
    .local v2, "e":Ljava/lang/NoSuchMethodError;
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Exception No Such method. use connectGatt "

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 860
    const/4 v8, 0x1

    .line 867
    goto :goto_6

    .line 861
    .end local v2    # "e":Ljava/lang/NoSuchMethodError;
    :catch_4
    move-exception v2

    .line 862
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Exception No Such method. use connectGatt "

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 866
    const/4 v8, 0x1

    .line 867
    goto :goto_6

    .line 870
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_12
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Random LE is not Supported. use connectGatt"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    goto :goto_6

    .line 886
    :cond_13
    const-string v10, "LpSmLEAutoConnecter"

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

    goto/16 :goto_4

    .line 901
    .end local v8    # "isRandomLEFlag":Z
    :cond_14
    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 904
    if-eqz v0, :cond_15

    .line 905
    const-string v10, "LpSmLEAutoConnecter"

    const-string v11, "[CMAC] Gatt instance is created"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 911
    :cond_15
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method private disconnectLE(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1217
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 1218
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1219
    const-string v3, "LpSmLEAutoConnecter"

    const-string v4, "[CMAC] stop Autoconnection process"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1223
    .local v2, "macAddr":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1224
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_0

    .line 1225
    const-string v3, "LpSmLEAutoConnecter"

    const-string v4, "[CMAC] disconnectLE : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v2    # "macAddr":Ljava/lang/String;
    :goto_0
    return-void

    .line 1229
    .restart local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .restart local v2    # "macAddr":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnectionFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1232
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    .line 1234
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->disconnectBLEDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 1237
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v4, 0x3eb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1238
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    const v4, 0xffff

    const v5, 0xffff

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1246
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 1248
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto :goto_0

    .line 1239
    :catch_0
    move-exception v1

    .line 1241
    .local v1, "e":Landroid/os/DeadObjectException;
    invoke-virtual {v1}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_1

    .line 1242
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v1

    .line 1243
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1250
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "macAddr":Ljava/lang/String;
    :cond_2
    const-string v3, "LpSmLEAutoConnecter"

    const-string v4, "[CMAC] device address is not available"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doGattObjectTry(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 919
    if-nez p1, :cond_1

    .line 920
    const-string v2, "LpSmLEAutoConnecter"

    const-string v3, "[CMAC] Device is NULL"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 924
    .local v1, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v1, :cond_2

    .line 925
    const-string v2, "LpSmLEAutoConnecter"

    const-string v3, "[CMAC] doGattObjectTry - deviceSet is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 929
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getGattObjectTryCnt()I

    move-result v0

    .line 931
    .local v0, "cnt":I
    add-int/lit8 v0, v0, 0x1

    .line 932
    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setGattObjectTryCnt(I)V

    .line 933
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 935
    const-string v2, "LpSmLEAutoConnecter"

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

    .line 936
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 937
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->connectLEDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method private getBLEGattInstance(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;
    .locals 4
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1332
    if-nez p1, :cond_0

    .line 1339
    :goto_0
    return-object v1

    .line 1334
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getACDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1335
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_1

    .line 1336
    const-string v2, "LpSmLEAutoConnecter"

    const-string v3, "deviceSet is null!!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1339
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Landroid/bluetooth/BluetoothGattCallback;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;
    .locals 3
    .param p0, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .param p1, "gattCallbacks"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    const/4 v0, 0x0

    .line 88
    if-nez p0, :cond_0

    .line 89
    const-string v1, "LpSmLEAutoConnecter"

    const-string v2, "[CMAC] LpSmLEAutoConnectHandler - Sorry! ConnectionManager instance is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-object v0

    .line 94
    :cond_0
    if-nez p1, :cond_1

    .line 95
    const-string v1, "LpSmLEAutoConnecter"

    const-string v2, "[CMAC] LpSmLEAutoConnectHandler - Sorry! BluetoothGattCallback instance is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    if-nez v0, :cond_3

    .line 102
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    if-nez v0, :cond_2

    .line 104
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Landroid/bluetooth/BluetoothGattCallback;)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    .line 106
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_3
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    goto :goto_0

    .line 106
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
    .line 1546
    const-string v2, "LpSmLEAutoConnecter"

    const-string v3, "[CMAC] initRetryCnt - INIT_RECOVERY_RETRY_CNT_SPP"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    if-eqz p1, :cond_1

    .line 1551
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isSppRetryRecoveried()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1552
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1553
    .local v0, "bundles":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 1554
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1555
    const-string v2, "RECONNECTION_STRING_STEP"

    const-string v3, "INIT_RECOVERY_RETRY_CNT_SPP"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v3, 0x18

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 1562
    .end local v0    # "bundles":Landroid/os/Bundle;
    .end local v1    # "itemBundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 1559
    :cond_1
    const-string v2, "LpSmLEAutoConnecter"

    const-string v3, "[CMAC] initRetryCnt - device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isBREDRConnectingState(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1282
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isBREDRConnecting(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 1284
    .local v0, "ret":Z
    return v0
.end method

.method private isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "service"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .prologue
    .line 1261
    if-nez p1, :cond_0

    .line 1262
    const-string v2, "LpSmLEAutoConnecter"

    const-string v3, "[CMAC] isConnectingServiceState - device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    :cond_0
    const/4 v0, 0x0

    .line 1265
    .local v0, "currentstate":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v1

    .line 1266
    .local v1, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v0

    .line 1268
    const-string v2, "LpSmLEAutoConnecter"

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

    .line 1269
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1270
    const/4 v2, 0x1

    .line 1272
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

    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getWearableProfileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "profileVersion":Ljava/lang/String;
    const-string v4, "2.0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .line 171
    .local v1, "isWearableRandomLe":Z
    :cond_0
    const-string v4, "LpSmLEAutoConnecter"

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

    .line 173
    const-string v4, "LpSmLEAutoConnecter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CMAC] connectLE History : is Host device supported for LE random address : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isRandomLESupported()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v4, "LpSmLEAutoConnecter"

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

    .line 176
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 177
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_1

    .line 178
    const-string v3, "LpSmLEAutoConnecter"

    const-string v4, "[CMAC] processConnectionStateChangeResponse : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :goto_0
    monitor-exit p0

    return-void

    .line 182
    :cond_1
    :try_start_1
    const-string v4, "LpSmLEAutoConnecter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CMAC] connectLE History : device Set is performed? ( 3 ): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isDeviceSetDone()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v4

    if-ne v4, v3, :cond_3

    .line 185
    const-string v4, "LpSmLEAutoConnecter"

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

    .line 186
    const-string v4, "LpSmLEAutoConnecter"

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

    .line 187
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

    .line 186
    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getIsFirstAttempt()Z

    move-result v4

    if-ne v4, v3, :cond_5

    .line 197
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 199
    const-string v3, "LpSmLEAutoConnecter"

    const-string v4, "[CMAC] Sending 2 second Delayed timer for Le disconnection"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :goto_2
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSICheckerState(I)V

    .line 204
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 217
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v4, 0x3ec

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v4, 0x3ec

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 219
    const-string v3, "LpSmLEAutoConnecter"

    const-string v4, "[CMAC] Sending 2 second Delayed timer for set default"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 167
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v1    # "isWearableRandomLe":Z
    .end local v2    # "profileVersion":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 191
    .restart local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .restart local v1    # "isWearableRandomLe":Z
    .restart local v2    # "profileVersion":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v4, "LpSmLEAutoConnecter"

    const-string v5, "[CMAC] connectLE History : first isRandomLE isNotupdated"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 201
    :cond_4
    const-string v3, "LpSmLEAutoConnecter"

    const-string v4, "[CMAC] Sending 2 second Delayed timer for Le disconnection Failed"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 207
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 208
    const-string v3, "LpSmLEAutoConnecter"

    const-string v4, "[CMAC] request runBLEMonitorRssi"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mLeLowRssi:I

    iget v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mLeMidRssi:I

    iget v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mLeHighRssi:I

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->runBLEMonitorRssi(Landroid/bluetooth/BluetoothDevice;III)Z

    .line 210
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setIsFirstAttempt(Z)V

    .line 211
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSICheckerState(I)V

    .line 212
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto :goto_3

    .line 221
    :cond_6
    const-string v3, "LpSmLEAutoConnecter"

    const-string v4, "[CMAC] Sending 2 second Delayed timer for set default failed"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized onDisconnectedGattCallback(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    const-string v0, "LpSmLEAutoConnecter"

    const-string v1, "[CMAC] Cancel LE disconnection alarm timer"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    const-string v0, "LpSmLEAutoConnecter"

    const-string v1, "[CMAC] set LE defalut scan parameter alarm timer"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 229
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

    .line 1155
    const/16 v1, 0xa

    if-ne p2, v1, :cond_1

    .line 1156
    const-string v1, "LpSmLEAutoConnecter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMAC] BlueTooth State is set OFF : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mTryAutoBTEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    iget-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mTryAutoBTEnable:Z

    if-eqz v1, :cond_0

    .line 1160
    const-string v1, "LpSmLEAutoConnecter"

    const-string v2, "[CMAC] Let replace Bluetooth STATE-OFF with STATE-ON (STATE-OFF -> STATE-ON)"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    iput-boolean v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mTryAutoBTEnable:Z

    .line 1163
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1166
    :cond_1
    if-ne p2, v3, :cond_0

    .line 1168
    const-string v1, "LpSmLEAutoConnecter"

    const-string v2, "[CMAC] change BlueTooth State(STATE-ON)"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    if-eqz p1, :cond_0

    .line 1171
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1173
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->initRetryCnt(Landroid/bluetooth/BluetoothDevice;)V

    .line 1174
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1175
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-eqz v0, :cond_2

    .line 1177
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setIsFirstAttempt(Z)V

    .line 1178
    invoke-virtual {v0, v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSICheckerState(I)V

    .line 1179
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1183
    :cond_2
    const-string v1, "LpSmLEAutoConnecter"

    const-string v2, "[CMSC] unset BR/EDR Connecting Flag....."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {v1, p1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1187
    const-string v1, "LpSmLEAutoConnecter"

    const-string v2, "[CMAC] BluetoothStateChange - call connectLEDevice"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->connectLEDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method private declared-synchronized processConnectionStateChangeResponse(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 248
    monitor-enter p0

    if-nez p1, :cond_1

    .line 249
    :try_start_0
    const-string v0, "LpSmLEAutoConnecter"

    const-string v1, "[CMAC] BluetoothDevice instance is NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 253
    :cond_1
    :try_start_1
    const-string v0, "LpSmLEAutoConnecter"

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

    .line 256
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->GATT_SUCCESS:I

    if-ne p2, v0, :cond_2

    .line 257
    const-string v0, "LpSmLEAutoConnecter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC] onConnectionStateChange - LE connection successful : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 258
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->onConnectedGattCallback(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 262
    :cond_2
    if-nez p3, :cond_0

    .line 263
    :try_start_2
    const-string v0, "LpSmLEAutoConnecter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC] onConnectionStateChange - LE disconnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->onDisconnectedGattCallback(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized processRecovery(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1292
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1293
    :try_start_0
    const-string v1, "LpSmLEAutoConnecter"

    const-string v2, "[CMAC] processRecovery - device is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    :goto_0
    monitor-exit p0

    return-void

    .line 1297
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1298
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_1

    .line 1299
    const-string v1, "LpSmLEAutoConnecter"

    const-string v2, "[CMAC] processRecovery : deviceSet is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1292
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1304
    .restart local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1305
    const-string v1, "LpSmLEAutoConnecter"

    const-string v2, "[CMAC] processRecovery : this device is not connected previously"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1309
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRecoveryFlag(Z)V

    .line 1310
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1311
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->disconnectAllProfile(Landroid/bluetooth/BluetoothDevice;)V

    .line 1313
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1314
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1315
    const-string v1, "LpSmLEAutoConnecter"

    const-string v2, "[CMAC] Sending 10 second Delayed timer for LE connection"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    :cond_3
    const-string v1, "LpSmLEAutoConnecter"

    const-string v2, "[CMAC] wake start..."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->acquireWakeLock(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private restartAutoConnection(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 133
    if-nez p1, :cond_1

    .line 134
    const-string v0, "LpSmLEAutoConnecter"

    const-string v1, "[CMAC] device is NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    if-nez v0, :cond_2

    .line 141
    const-string v0, "LpSmLEAutoConnecter"

    const-string v1, "[CMAC] restartAutoConnection - WearableState is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_2
    const-string v0, "LpSmLEAutoConnecter"

    const-string v1, "[CMAC] start AutoConnection for service restart"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isContainDeviceSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 150
    const-string v0, "LpSmLEAutoConnecter"

    const-string v1, "[CMAC] restartAutoConnection : putDeviceMacForACDeviceSet.."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putDeviceMacForACDeviceSet(Ljava/lang/String;)V

    .line 157
    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 158
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->connectLEDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 155
    :cond_3
    const-string v0, "LpSmLEAutoConnecter"

    const-string v1, "restartAutoConnection - DeviceSet is already exist"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 161
    :cond_4
    const-string v0, "LpSmLEAutoConnecter"

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

    .line 331
    monitor-enter p0

    if-nez p1, :cond_0

    .line 354
    :goto_0
    monitor-exit p0

    return v2

    .line 334
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 335
    .local v1, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v1, :cond_1

    .line 336
    const-string v3, "LpSmLEAutoConnecter"

    const-string v4, "[CMAC] runBLEMonitorRssi : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 331
    .end local v1    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 340
    .restart local v1    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getBLEGattInstance(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 341
    .local v0, "btGatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v0, :cond_2

    .line 342
    const-string v3, "LpSmLEAutoConnecter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] runBLEMonitorRssi : btGatt, addr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 343
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothGattFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothGattInterface;

    move-result-object v3

    invoke-interface {v3, v0, p2, p3, p4}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothGattInterface;->monitorRssi(Landroid/bluetooth/BluetoothGatt;III)Z

    move-result v2

    .line 349
    .local v2, "ret":Z
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSIVFlag(Z)V

    .line 350
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto :goto_0

    .line 353
    .end local v2    # "ret":Z
    :cond_2
    const-string v3, "LpSmLEAutoConnecter"

    const-string v4, "[CMAC] runBLEMonitorRssi : btGatt is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private runBluetoothStateOffOn()V
    .locals 3

    .prologue
    .line 1106
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 1120
    :goto_0
    return-void

    .line 1108
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mTryAutoBTEnable:Z

    .line 1110
    :try_start_0
    const-string v1, "LpSmLEAutoConnecter"

    const-string v2, "[CMAC] BT shutdown - BluetoothAdapter"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothAdapterFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothAdapterInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothAdapterInterface;->shutdown(Landroid/bluetooth/BluetoothAdapter;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1113
    :catch_0
    move-exception v0

    .line 1114
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-string v1, "LpSmLEAutoConnecter"

    const-string v2, "[CMAC] BT disable - BluetoothAdapter"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0

    .line 1116
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 1117
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "LpSmLEAutoConnecter"

    const-string v2, "[CMAC] BT disable - BluetoothAdapter"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method private setLEScanParameters(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const-wide/32 v4, 0xea60

    const/16 v3, 0x3eb

    .line 641
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 643
    const-string v0, "LpSmLEAutoConnecter"

    const-string v1, "[CMAC] connectLEDevice: setConnectionScanParameter() fast scan values"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    const/16 v1, 0x60

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z

    .line 647
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    const-string v0, "LpSmLEAutoConnecter"

    const-string v1, "[CMAC] Sending 1 minuite Delayed timer for setting slow scan parameters"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :goto_0
    const-string v0, "LpSmLEAutoConnecter"

    const-string v1, "[CMAC] wake start for slow le scan..."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->acquireWakeLock(J)V

    .line 667
    return-void

    .line 650
    :cond_0
    const-string v0, "LpSmLEAutoConnecter"

    const-string v1, "[CMAC] Fail to Send 1 minuite Delayed timer for setting slow scan parameters"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startAutoConnection(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1128
    if-nez p1, :cond_1

    .line 1129
    const-string v0, "LpSmLEAutoConnecter"

    const-string v1, "[CMAC] device is NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1134
    const-string v0, "LpSmLEAutoConnecter"

    const-string v1, "[CMAC] startAutoConnection - WearableState is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1138
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 1139
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1140
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 1141
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 1144
    :cond_3
    const-string v0, "LpSmLEAutoConnecter"

    const-string v1, "[CMAC] device address is not available"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1568
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1569
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1570
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1571
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1574
    :cond_0
    const-string v0, "LpSmLEAutoConnecter"

    const-string v1, "[CMAC] close - release wake Lock"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    .line 1577
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    .line 1578
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
    .line 1201
    monitor-enter p0

    :try_start_0
    const-string v1, "LpSmLEAutoConnecter"

    const-string v2, "[CMAC] disconnectBLEDevice to connect AG"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getBLEGattInstance(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 1204
    .local v0, "btGatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v0, :cond_0

    .line 1205
    const-string v1, "LpSmLEAutoConnecter"

    const-string v2, "[CMAC] call disconnect LE"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1208
    :cond_0
    monitor-exit p0

    return-void

    .line 1201
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

    .line 1438
    const-string v8, "LpSmLEAutoConnecter"

    const-string v9, "[CMAC] enter sendCommandMessage working method"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    const-string v8, "AUTO_CONNECTION_STRING_STEP"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1443
    .local v7, "step":Ljava/lang/String;
    const-string v8, "ACTION_ACL_DISCONNECTED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1444
    const-string v8, "LpSmLEAutoConnecter"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : ACTION_ACL_DISCONNECTED"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getExtraDisconnectionReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1448
    .local v3, "reason":I
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getExtraLinkType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1449
    .local v1, "linktype":I
    invoke-direct {p0, p1, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->checkLowLevelDisconnection(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1543
    .end local v1    # "linktype":I
    .end local v3    # "reason":I
    :cond_0
    :goto_0
    return-void

    .line 1453
    :cond_1
    const-string v8, "MSG_GATT_CONNECTION_STATE_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1454
    const-string v8, "LpSmLEAutoConnecter"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : MSG_GATT_CONNECTION_STATE_CHANGE"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    const-string v8, "AUTO_CONNECTION_INT_GATT_STATE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1457
    .local v6, "status":I
    const-string v8, "AUTO_CONNECTION_INT_GATT_NEWSTATE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1458
    .local v2, "newState":I
    invoke-direct {p0, p1, v6, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->processConnectionStateChangeResponse(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 1461
    .end local v2    # "newState":I
    .end local v6    # "status":I
    :cond_2
    const-string v8, "MSG_MONITOR_RSSI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1462
    const-string v8, "LpSmLEAutoConnecter"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : MSG_MONITOR_RSSI"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    const-string v8, "AUTO_CONNECTION_INT_MONITOR_RSSI"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1464
    .local v4, "rssi":I
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->checkMonitorForRssi(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 1467
    .end local v4    # "rssi":I
    :cond_3
    const-string v8, "ACTION_STATE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1468
    const-string v8, "LpSmLEAutoConnecter"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : ACTION_STATE_CHANGED"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    const-string v8, "BUNDLE_CMKEY_INT_BLUETOOTHADAPTER_STATE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1470
    .local v5, "state":I
    invoke-direct {p0, p1, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->processBluetoothStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 1479
    .end local v5    # "state":I
    :cond_4
    const-string v8, "REQUEST_RECOVERY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1480
    const-string v8, "LpSmLEAutoConnecter"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : REQUEST_RECOVERY"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1484
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_5

    .line 1485
    const-string v8, "LpSmLEAutoConnecter"

    const-string v9, "[CMAC] sendCommandMessage : deviceSet is null"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1489
    :cond_5
    const/4 v8, 0x2

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRSSICheckerState()I

    move-result v9

    if-ne v8, v9, :cond_6

    .line 1490
    const-string v8, "LpSmLEAutoConnecter"

    const-string v9, "[CMAC] Recovery : request to recovery (BT OFF/ON)"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    invoke-virtual {v0, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSICheckerState(I)V

    .line 1493
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->runBluetoothStateOffOn()V

    .line 1494
    invoke-virtual {v0, v11}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setIsFirstAttempt(Z)V

    .line 1495
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto/16 :goto_0

    .line 1496
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRSSICheckerState()I

    move-result v8

    if-ne v11, v8, :cond_7

    .line 1497
    const-string v8, "LpSmLEAutoConnecter"

    const-string v9, "[CMAC] Recovery : Skip Recovery(BT OFF/ON), Start Auto Connection "

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    invoke-virtual {v0, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setIsFirstAttempt(Z)V

    .line 1500
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1501
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->initRetryCnt(Landroid/bluetooth/BluetoothDevice;)V

    .line 1502
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->processRecovery(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1503
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRSSICheckerState()I

    move-result v8

    if-nez v8, :cond_0

    .line 1504
    const-string v8, "LpSmLEAutoConnecter"

    const-string v9, "[CMAC] Recovery : recovery for first connection requestion.."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->initRetryCnt(Landroid/bluetooth/BluetoothDevice;)V

    .line 1507
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->processRecovery(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1511
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_8
    const-string v8, "HFP_CONNECTION_FAIL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1512
    const-string v8, "LpSmLEAutoConnecter"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : HFP_CONNECTION_FAIL"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    new-instance v8, Landroid/os/Handler;

    iget-object v9, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler$2;

    invoke-direct {v9, p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler$2;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1528
    :cond_9
    const-string v8, "RESTART_AUTO_CONNECT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1529
    const-string v8, "LpSmLEAutoConnecter"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : RESTART_AUTO_CONNECT"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->restartAutoConnection(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1533
    :cond_a
    const-string v8, "STOP_AUTO_CONNECTION"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1534
    const-string v8, "LpSmLEAutoConnecter"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : STOP_AUTO_CONNECTION"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->disconnectLE(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1538
    :cond_b
    const-string v8, "BLUETOOTH_STATE_OFF_ON"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1539
    const-string v8, "LpSmLEAutoConnecter"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : BLUETOOTH_STATE_OFF_ON"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->runBluetoothStateOffOn()V

    goto/16 :goto_0
.end method
