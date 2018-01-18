.class public Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;
.super Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;
.source "LpSCSLEAutoConnectHandler.java"


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

.field private static final RECOVERY_CHECK_RSSI_FIRST:I = 0x2

.field private static final RECOVERY_CHECK_RSSI_SECOND:I = 0x3

.field private static final RECOVERY_FIRST_CONNECTION_RETRY:I = 0x0

.field private static final RECOVERY_NO_CHECK_RSSI:I = 0x1

.field private static final SLOW_LE_SCAN_INTERVAL:I = 0x800

.field private static final SLOW_LE_SCAN_TIMER:I = 0xea60

.field private static final SLOW_LE_SCAN_WINDOW:I = 0x80

.field private static final TAG:Ljava/lang/String; = "LpSCSLEAutoConnectHandler"

.field private static final WAITTING_TINE_FOR_DISCONNECT_CALL:I = 0x2710

.field private static mLocker:Ljava/lang/Object;

.field private static pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;


# instance fields
.field private mLeHighRssi:I

.field private mLeLowRssi:I

.field private mLeMidRssi:I

.field private mTempIsTargetReason:Z

.field private mTempReason:I

.field private mTempToastFlag:Z

.field private mTryAutoBTEnable:Z

.field protected final mWorkerHandler:Landroid/os/Handler;

.field private mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mLocker:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Landroid/bluetooth/BluetoothGattCallback;)V
    .locals 3
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .param p2, "gattCallbacks"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;-><init>()V

    .line 46
    const/16 v0, -0x56

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mLeLowRssi:I

    .line 48
    const/16 v0, -0x55

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mLeMidRssi:I

    .line 50
    const/16 v0, 0x7f

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mLeHighRssi:I

    .line 53
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mTempToastFlag:Z

    .line 55
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mTempIsTargetReason:Z

    .line 57
    iput v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mTempReason:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    .line 1609
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$2;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$2;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    .line 126
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 127
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 128
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    .line 129
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    .line 130
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 131
    const-string v0, "LpSCSLEAutoConnectHandler"

    const-string v1, "[CMAC] Sorry! Bluetooth is not supported in this device"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mTryAutoBTEnable:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->doGattObjectTry(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->startAutoConnection(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;
    .param p1, "x1"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->isEnableSCSServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;
    .param p1, "x1"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->connectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    return-void
.end method

.method private checkLowLevelDisconnection(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reason"    # I
    .param p3, "linkType"    # I

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1007
    if-nez p1, :cond_1

    .line 1008
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] Device is NULL"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    const-string v3, "LpSCSLEAutoConnectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] ACTION_ACL_DISCONNECTED, reason is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " linktype is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->LE_LINK_TYPE:I

    if-ne v3, p3, :cond_2

    .line 1017
    iput p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mTempReason:I

    .line 1019
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 1020
    .local v1, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v1, :cond_3

    .line 1021
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] checkLowLevelDisconnection : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1030
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRecoveryFlag()Z

    move-result v3

    if-ne v3, v7, :cond_4

    .line 1031
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->BREDR_LINK_TYPE:I

    if-ne p3, v3, :cond_4

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->LOCAL_USER_DISCONNECTION:I

    if-ne p2, v3, :cond_4

    .line 1032
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v4, 0x3ea

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1033
    invoke-virtual {v1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRecoveryFlag(Z)V

    .line 1034
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1035
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->startAutoConnection(Landroid/bluetooth/BluetoothDevice;)V

    .line 1039
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v2

    .line 1040
    .local v2, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isScsPreference(Ljava/lang/String;)Z

    move-result v3

    if-ne v7, v3, :cond_8

    .line 1041
    const-string v3, "LpSCSLEAutoConnectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] SCS preference is true. try to Connect SCS for device  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->isEnableSCSServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1044
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->connectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    .line 1058
    .end local v2    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_4
    :goto_1
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->BREDR_LINK_TYPE:I

    if-ne p3, v3, :cond_c

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->LOCAL_USER_DISCONNECTION:I

    if-ne v3, p2, :cond_5

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 1059
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_5
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->USER_REMOVED_BOND:I

    if-eq p2, v3, :cond_c

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->AUTH_FAIL:I

    if-eq p2, v3, :cond_c

    .line 1063
    if-eqz p1, :cond_b

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 1064
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    .line 1065
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1064
    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1067
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v2

    .line 1068
    .restart local v2    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    const-string v3, "LpSCSLEAutoConnectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 1071
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 1072
    invoke-virtual {v5, v2, v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1068
    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string v3, "LpSCSLEAutoConnectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] BR/EDR link loss, start LE Autoconnection with device = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->CHIP_SET_ERROR:I

    if-ne v3, p2, :cond_6

    .line 1082
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] ACL_DISCONNECT reason 34, set BREDR flag to flase"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {v3, p1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1086
    :cond_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 1087
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;)V

    .line 1089
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isScsPreference(Ljava/lang/String;)Z

    move-result v3

    if-ne v7, v3, :cond_a

    .line 1090
    const-string v3, "LpSCSLEAutoConnectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] SCS preference is true. try to Connect SCS for device  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->isEnableSCSServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1094
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->connectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto/16 :goto_0

    .line 1047
    :cond_7
    const-string v3, "LpSCSLEAutoConnectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] SCS is in enabling state already.   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1051
    :cond_8
    const-string v3, "LpSCSLEAutoConnectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] SCS preference is false. Dont Connect SCS for device  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1097
    :cond_9
    const-string v3, "LpSCSLEAutoConnectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] SCS is in enabling state already.   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1101
    :cond_a
    const-string v3, "LpSCSLEAutoConnectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] SCS preference is false. Dont Connect SCS for device  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1105
    .end local v2    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_b
    const-string v3, "LpSCSLEAutoConnectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] device address is not available "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1108
    :cond_c
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->BREDR_LINK_TYPE:I

    if-ne p3, v3, :cond_d

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->USER_REMOVED_BOND:I

    if-eq p2, v3, :cond_0

    .line 1117
    :cond_d
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->LE_LINK_TYPE:I

    if-ne p3, v3, :cond_f

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->CONNECTION_ACCEPT_TIME_OUT_EXCEEDED:I

    if-ne p2, v3, :cond_f

    .line 1118
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v3, :cond_e

    .line 1119
    const-string v3, "LpSCSLEAutoConnectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] BluetoothAdapter instance is null..BT Off/On fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1123
    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->runBluetoothStateOffOn()V

    goto/16 :goto_0

    .line 1126
    :cond_f
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->LE_LINK_TYPE:I

    if-ne p3, v3, :cond_17

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->REASON_LINK_LOSS:I

    if-eq p2, v3, :cond_17

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->CONN_FAILED_TO_BE_EASTABLISHED:I

    if-eq p2, v3, :cond_17

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->USER_REMOVED_BOND:I

    if-eq p2, v3, :cond_17

    sget v3, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->REMOTE_USER_DISCONNECTION:I

    if-eq p2, v3, :cond_17

    .line 1130
    const-string v3, "LpSCSLEAutoConnectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] ACTION_ACL_DISCONNECT - LE Disconnected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1131
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1130
    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] LE AutoConnection is finish..request SPP & HFP Connection"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v3

    const-string v4, "LE Disconnected"

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 1139
    if-nez v1, :cond_10

    .line 1140
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] checkLowLevelDisconnection : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1143
    :cond_10
    invoke-virtual {v1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 1144
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1146
    if-eqz p1, :cond_16

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 1147
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    .line 1148
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1147
    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1151
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 1152
    if-nez v1, :cond_11

    .line 1153
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] checkLowLevelDisconnection : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1156
    :cond_11
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRSSIVFlag()Z

    move-result v3

    if-ne v7, v3, :cond_12

    .line 1157
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] RSSI callback is not avilable, restart auto connection : connectLEDeviceafterLLOrRUT.. "

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    invoke-virtual {v1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSIVFlag(Z)V

    .line 1162
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1165
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 1166
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1169
    :cond_12
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v2

    .line 1171
    .restart local v2    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1173
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->isSCSServiceConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v3

    if-ne v3, v7, :cond_13

    .line 1176
    invoke-virtual {v1, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRemoteFlag(Z)V

    .line 1177
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1180
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] checkLowLevelDisconnection : SCS state is in Connected state. Disconnect SCS "

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->disconnectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto/16 :goto_0

    .line 1184
    :cond_13
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v0

    .line 1185
    .local v0, "SCSstate":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1188
    invoke-virtual {v1, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRemoteFlag(Z)V

    .line 1189
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1191
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] checkLowLevelDisconnection : SCS state is  in Connecting/Uknown state. Disconnect SCS "

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->disconnectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto/16 :goto_0

    .line 1193
    :cond_14
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1195
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] checkLowLevelDisconnection : SCS state is  in disConnecting. set remote flag to  true"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    invoke-virtual {v1, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRemoteFlag(Z)V

    .line 1197
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto/16 :goto_0

    .line 1201
    :cond_15
    invoke-virtual {v1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRemoteFlag(Z)V

    .line 1202
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1205
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$1;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1219
    .end local v0    # "SCSstate":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    .end local v2    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_16
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] device address is not available"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1223
    :cond_17
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->LE_LINK_TYPE:I

    if-ne p3, v3, :cond_18

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->REASON_LINK_LOSS:I

    if-eq p2, v3, :cond_19

    :cond_18
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->LE_LINK_TYPE:I

    if-ne p3, v3, :cond_1c

    sget v3, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->REMOTE_USER_DISCONNECTION:I

    if-ne p2, v3, :cond_1c

    .line 1226
    :cond_19
    if-eqz p1, :cond_1b

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 1227
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    .line 1228
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1227
    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1229
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] LE link loss , start LE Autoconnection again"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 1232
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 1233
    if-nez v1, :cond_1a

    .line 1234
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] checkLowLevelDisconnection : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1237
    :cond_1a
    invoke-virtual {v1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 1238
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1240
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1243
    :cond_1b
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] device address is not available"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1247
    :cond_1c
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] Auto Connection is not working as suitable ACL_DISCONNECT reason"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private checkMonitorForRssi(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I

    .prologue
    const/4 v6, 0x0

    .line 342
    if-nez p1, :cond_0

    .line 343
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] BluetoothDevice instance is NULL"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :goto_0
    return-void

    .line 347
    :cond_0
    const-string v3, "LpSCSLEAutoConnectHandler"

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

    .line 350
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "macAddr":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 354
    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 355
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_1

    .line 356
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] checkMonitorForRssi : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_1
    const/16 v3, -0x55

    if-lt p2, v3, :cond_2

    .line 362
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnectionFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 363
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] rssi value is sufficient for AG connection establishment, disconnect BLE"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-direct {p0, p1, v6, v6, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->runBLEMonitorRssi(Landroid/bluetooth/BluetoothDevice;III)Z

    .line 367
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v3

    const-string v4, "LE request to disconnect"

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->disconnectBLEDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 378
    :cond_2
    :goto_1
    invoke-virtual {v0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSIVFlag(Z)V

    .line 379
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto :goto_0

    .line 369
    :catch_0
    move-exception v1

    .line 371
    .local v1, "e":Landroid/os/DeadObjectException;
    invoke-virtual {v1}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_1

    .line 372
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 381
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] checkMonitorForRssi : device address is not available"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized connectLEDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 18
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 432
    monitor-enter p0

    if-nez p1, :cond_0

    .line 433
    :try_start_0
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Device is NULL"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    :goto_0
    monitor-exit p0

    return-void

    .line 437
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v14

    const/16 v15, 0xc

    if-eq v14, v15, :cond_1

    .line 438
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : bonded state is not BONDED"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 432
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 443
    :cond_1
    :try_start_2
    sget-object v14, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v14

    if-nez v14, :cond_2

    sget-object v14, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 444
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 445
    :cond_2
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] BR/EDR is connecting..retrun LE Connection Reqeust"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->isBREDRConnectingState(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 451
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] BR/EDR rety is connecting..retrun LE Connection Reqeust"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v4

    .line 456
    .local v4, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v4, :cond_5

    .line 457
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : deviceSet is null"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_5
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 463
    .local v2, "btGatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v2, :cond_7

    .line 464
    const-string v14, "LpSCSLEAutoConnectHandler"

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

    .line 471
    :goto_1
    if-eqz v2, :cond_6

    .line 472
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice update mBluetoothGatt"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v14, :cond_6

    .line 475
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v15, 0x7

    invoke-virtual {v14, v15, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 476
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "connectLEDevice : call closeProfileProxy for Gatt instance"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 485
    :cond_6
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMSC] connectLEDevice : set device Type for android L (> KITKAT) "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v15}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setDeviceType(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v15

    if-ne v14, v15, :cond_8

    .line 488
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setDeviceSetDone(Z)V

    .line 495
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->setLEScanParameters(Landroid/bluetooth/BluetoothDevice;)V

    .line 497
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v7

    .line 498
    .local v7, "hostBluetoothVersion":I
    const/4 v11, 0x0

    .line 499
    .local v11, "isRadomLeConnectCalledFlag":Z
    const/4 v9, 0x0

    .line 500
    .local v9, "isGearSupportRandomLeFlag":Z
    const/4 v10, 0x0

    .line 502
    .local v10, "isHostSupportRandomLeFlag":Z
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : check LE address type"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v14

    const-string v15, "LE request to connect"

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getWearableProfileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 507
    .local v13, "profileVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isGearNotifiedRandomLeTrueFlag(Ljava/lang/String;)Z

    move-result v8

    .line 509
    .local v8, "isGearNotified":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isRandomLESupported()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 511
    const/4 v10, 0x1

    .line 513
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Random LE is Supported. connect LE"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v14, "2.0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 517
    const/4 v9, 0x1

    .line 519
    const/4 v14, 0x1

    if-ne v8, v14, :cond_9

    .line 521
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Gear device random LE is Supported and Gear is notified. use connectGatt"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 525
    const/4 v11, 0x1

    .line 582
    :goto_3
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v14

    if-nez v14, :cond_e

    .line 584
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeUpdated(Z)V

    .line 585
    invoke-virtual {v4, v11, v9, v10, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeValues(ZZZI)V

    .line 636
    :goto_4
    if-eqz v2, :cond_14

    .line 637
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] Gatt instance is created and Le Autoconnection is set to true"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-virtual {v4, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 642
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 644
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v5

    .line 645
    .local v5, "deviceSets":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v5, :cond_13

    .line 646
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : deviceSets is null"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 467
    .end local v5    # "deviceSets":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v7    # "hostBluetoothVersion":I
    .end local v8    # "isGearNotified":Z
    .end local v9    # "isGearSupportRandomLeFlag":Z
    .end local v10    # "isHostSupportRandomLeFlag":Z
    .end local v11    # "isRadomLeConnectCalledFlag":Z
    .end local v13    # "profileVersion":Ljava/lang/String;
    :cond_7
    const-string v14, "LpSCSLEAutoConnectHandler"

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

    .line 491
    :cond_8
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setDeviceSetDone(Z)V

    goto/16 :goto_2

    .line 529
    .restart local v7    # "hostBluetoothVersion":I
    .restart local v8    # "isGearNotified":Z
    .restart local v9    # "isGearSupportRandomLeFlag":Z
    .restart local v10    # "isHostSupportRandomLeFlag":Z
    .restart local v11    # "isRadomLeConnectCalledFlag":Z
    .restart local v13    # "profileVersion":Ljava/lang/String;
    :cond_9
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Gear device random LE is Supported and Gear is not notified. use connectGattUsePublicAddr"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 531
    :try_start_3
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v15, v1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 537
    :goto_5
    const/4 v11, 0x0

    goto :goto_3

    .line 532
    :catch_0
    move-exception v6

    .line 533
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_5

    .line 540
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

    .line 542
    :cond_b
    const/4 v9, 0x0

    .line 543
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Gear device random LE is NOT Supported. use connectGattUsePublicAddr"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 545
    :try_start_5
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v15, v1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    .line 548
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 550
    :catch_1
    move-exception v6

    .line 551
    .local v6, "e":Ljava/lang/NoSuchMethodError;
    :try_start_6
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Exception No Such method. use connectGatt "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 555
    const/4 v11, 0x1

    .line 562
    goto/16 :goto_3

    .line 556
    .end local v6    # "e":Ljava/lang/NoSuchMethodError;
    :catch_2
    move-exception v6

    .line 557
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Exception No Such method. use connectGatt "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 561
    const/4 v11, 0x1

    .line 562
    goto/16 :goto_3

    .line 564
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :cond_c
    const-string v14, "UNKNOWN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 566
    const-string v14, "LpSCSLEAutoConnectHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[CMAC] connectLEDevice: CM received error value..stop AC : Profile version "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice: LE Connection not requested, set Default Scan Parameters"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v15, 0x3eb

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 569
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    const v15, 0xffff

    const v16, 0xffff

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z

    .line 570
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    goto/16 :goto_0

    .line 575
    :cond_d
    const-string v14, "LpSCSLEAutoConnectHandler"

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

    .line 576
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice: LE Connection not requested, set Default Scan Parameters"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v15, 0x3eb

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 578
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    const v15, 0xffff

    const v16, 0xffff

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z

    .line 579
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    goto/16 :goto_0

    .line 588
    :cond_e
    const-string v14, "LpSCSLEAutoConnectHandler"

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

    .line 593
    :cond_f
    const/4 v12, 0x0

    .line 595
    .local v12, "isRandomLEFlag":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_11

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x16

    if-le v14, v15, :cond_11

    .line 596
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : M OS. use connectGattUsePublicAddr"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 598
    :try_start_7
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v15, v1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v2

    .line 599
    const/4 v12, 0x0

    .line 621
    :goto_6
    :try_start_8
    const-string v14, "2.0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 623
    const/4 v12, 0x1

    .line 626
    :cond_10
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v14

    if-nez v14, :cond_12

    .line 628
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeUpdated(Z)V

    .line 629
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v12, v15, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeValues(ZZZI)V

    goto/16 :goto_4

    .line 601
    :catch_3
    move-exception v6

    .line 602
    .local v6, "e":Ljava/lang/NoSuchMethodError;
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Exception No Such method. use connectGatt "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 606
    const/4 v12, 0x1

    .line 613
    goto :goto_6

    .line 607
    .end local v6    # "e":Ljava/lang/NoSuchMethodError;
    :catch_4
    move-exception v6

    .line 608
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Exception No Such method. use connectGatt "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 612
    const/4 v12, 0x1

    .line 613
    goto :goto_6

    .line 616
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :cond_11
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Random LE is not Supported. use connectGatt"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    goto :goto_6

    .line 632
    :cond_12
    const-string v14, "LpSCSLEAutoConnectHandler"

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

    .line 650
    .end local v12    # "isRandomLEFlag":Z
    .restart local v5    # "deviceSets":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_13
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 651
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setGattObjectTryCnt(I)V

    .line 652
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto/16 :goto_0

    .line 655
    .end local v5    # "deviceSets":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_14
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] btGatt is null, retry LE Connection"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice: LE Connection not requested, set Default Scan Parameters"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v15, 0x3eb

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 659
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    const v15, 0xffff

    const v16, 0xffff

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z

    .line 660
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    .line 662
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getGattObjectTryCnt()I

    move-result v3

    .line 663
    .local v3, "cnt":I
    const/4 v14, 0x5

    if-ge v3, v14, :cond_16

    .line 664
    const-string v14, "LpSCSLEAutoConnectHandler"

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

    .line 667
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v15, 0x3e9

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 668
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v15, 0x3e9

    const-wide/16 v16, 0x3e8

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 669
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "Sending 1 second Delayed timer for Gatt oject binding is ok "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 672
    :cond_15
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "Sending 1 second Delayed timer for Gatt oject binding is Failed"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 676
    :cond_16
    const-string v14, "LpSCSLEAutoConnectHandler"

    const-string v15, "LE connection retry count exceed, stop retry "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setGattObjectTryCnt(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;)V
    .locals 14
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v13, 0x1

    .line 692
    monitor-enter p0

    if-nez p1, :cond_0

    .line 693
    :try_start_0
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] Device is NULL"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    :goto_0
    monitor-exit p0

    return-void

    .line 698
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v10

    const/16 v11, 0xc

    if-eq v10, v11, :cond_1

    .line 699
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : bonded state is not BONDED"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 692
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 704
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->isAutoConnectionRunning(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    if-ne v13, v10, :cond_2

    .line 705
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : LE connect request is already called..return this routine.."

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :cond_2
    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v10

    if-nez v10, :cond_3

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 712
    invoke-direct {p0, p1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 713
    :cond_3
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] BR/EDR is connecting..retrun LE Connection Reqeust"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 718
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->isBREDRConnectingState(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 719
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] BR/EDR rety is connecting..retrun LE Connection Reqeust"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 724
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 725
    .local v1, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v1, :cond_6

    .line 726
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : deviceSet is null"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 730
    :cond_6
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 732
    .local v0, "btGatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v0, :cond_8

    .line 733
    const-string v10, "LpSCSLEAutoConnectHandler"

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

    .line 740
    :goto_1
    if-eqz v0, :cond_7

    .line 741
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT update mBluetoothGatt"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v10, :cond_7

    .line 744
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v11, 0x7

    invoke-virtual {v10, v11, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 745
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "connectLEDeviceafterLLOrRUT : call closeProfileProxy for Gatt instance"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 751
    :cond_7
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v3

    .line 752
    .local v3, "hostBluetoothVersion":I
    const/4 v7, 0x0

    .line 753
    .local v7, "isRadomLeConnectCalledFlag":Z
    const/4 v5, 0x0

    .line 754
    .local v5, "isGearSupportRandomLeFlag":Z
    const/4 v6, 0x0

    .line 755
    .local v6, "isHostSupportRandomLeFlag":Z
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : check LE address type"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v10

    const-string v11, "LE request to connect"

    invoke-virtual {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V

    .line 759
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v10

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getWearableProfileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 760
    .local v9, "profileVersion":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v10

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isGearNotifiedRandomLeTrueFlag(Ljava/lang/String;)Z

    move-result v4

    .line 766
    .local v4, "isGearNotified":Z
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMSC] connectLEDevice : set device Type for android L (> KITKAT) "

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setDeviceType(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    if-ne v13, v10, :cond_9

    .line 769
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setDeviceSetDone(Z)V

    .line 776
    :goto_2
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->setLEScanParameters(Landroid/bluetooth/BluetoothDevice;)V

    .line 780
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isRandomLESupported()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 782
    const/4 v6, 0x1

    .line 784
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Random LE is Supported. connect LE"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v10, "2.0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 788
    const/4 v5, 0x1

    .line 790
    if-ne v4, v13, :cond_a

    .line 792
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Gear device random LE is Supported and Gear is notified. use connectGatt"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 796
    const/4 v7, 0x1

    .line 854
    :goto_3
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v10

    if-nez v10, :cond_f

    .line 856
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeUpdated(Z)V

    .line 857
    invoke-virtual {v1, v7, v5, v6, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeValues(ZZZI)V

    .line 909
    :goto_4
    if-nez v0, :cond_14

    .line 910
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : connectGatt fail"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT: set Default Scan Parameters"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v11, 0x3eb

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 913
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v10

    const v11, 0xffff

    const v12, 0xffff

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z

    .line 914
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    goto/16 :goto_0

    .line 736
    .end local v3    # "hostBluetoothVersion":I
    .end local v4    # "isGearNotified":Z
    .end local v5    # "isGearSupportRandomLeFlag":Z
    .end local v6    # "isHostSupportRandomLeFlag":Z
    .end local v7    # "isRadomLeConnectCalledFlag":Z
    .end local v9    # "profileVersion":Ljava/lang/String;
    :cond_8
    const-string v10, "LpSCSLEAutoConnectHandler"

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

    .line 772
    .restart local v3    # "hostBluetoothVersion":I
    .restart local v4    # "isGearNotified":Z
    .restart local v5    # "isGearSupportRandomLeFlag":Z
    .restart local v6    # "isHostSupportRandomLeFlag":Z
    .restart local v7    # "isRadomLeConnectCalledFlag":Z
    .restart local v9    # "profileVersion":Ljava/lang/String;
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setDeviceSetDone(Z)V

    goto/16 :goto_2

    .line 800
    :cond_a
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Gear device random LE is Supported and Gear is not notified. use connectGattUsePublicAddr"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 802
    :try_start_3
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-interface {v10, p1, v11, v12}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 808
    :goto_5
    const/4 v7, 0x0

    goto :goto_3

    .line 803
    :catch_0
    move-exception v2

    .line 804
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_5

    .line 811
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

    .line 813
    :cond_c
    const/4 v5, 0x0

    .line 814
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Gear device random LE is NOT Supported. use connectGattUsePublicAddr"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 816
    :try_start_5
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-interface {v10, p1, v11, v12}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 819
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 821
    :catch_1
    move-exception v2

    .line 822
    .local v2, "e":Ljava/lang/NoSuchMethodError;
    :try_start_6
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Exception No Such method. use connectGatt "

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 826
    const/4 v7, 0x1

    .line 833
    goto/16 :goto_3

    .line 827
    .end local v2    # "e":Ljava/lang/NoSuchMethodError;
    :catch_2
    move-exception v2

    .line 828
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Exception No Such method. use connectGatt "

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 832
    const/4 v7, 0x1

    .line 833
    goto/16 :goto_3

    .line 835
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_d
    const-string v10, "UNKNOWN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 837
    const-string v10, "LpSCSLEAutoConnectHandler"

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

    .line 838
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT: set Default Scan Parameters"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v11, 0x3eb

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 840
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v10

    const v11, 0xffff

    const v12, 0xffff

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z

    .line 841
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    goto/16 :goto_0

    .line 846
    :cond_e
    const-string v10, "LpSCSLEAutoConnectHandler"

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

    .line 847
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT: set Default Scan Parameters"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v11, 0x3eb

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 849
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v10

    const v11, 0xffff

    const v12, 0xffff

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z

    .line 850
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    goto/16 :goto_0

    .line 860
    :cond_f
    const-string v10, "LpSCSLEAutoConnectHandler"

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

    .line 865
    :cond_10
    const/4 v8, 0x0

    .line 867
    .local v8, "isRandomLEFlag":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_12

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x16

    if-le v10, v11, :cond_12

    .line 868
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : M OS. use connectGattUsePublicAddr"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 870
    :try_start_7
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-interface {v10, p1, v11, v12}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    .line 871
    const/4 v8, 0x0

    .line 893
    :goto_6
    :try_start_8
    const-string v10, "2.0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 895
    const/4 v8, 0x1

    .line 898
    :cond_11
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v10

    if-nez v10, :cond_13

    .line 900
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeUpdated(Z)V

    .line 901
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v8, v11, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeValues(ZZZI)V

    goto/16 :goto_4

    .line 873
    :catch_3
    move-exception v2

    .line 874
    .local v2, "e":Ljava/lang/NoSuchMethodError;
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Exception No Such method. use connectGatt "

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 878
    const/4 v8, 0x1

    .line 885
    goto :goto_6

    .line 879
    .end local v2    # "e":Ljava/lang/NoSuchMethodError;
    :catch_4
    move-exception v2

    .line 880
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Exception No Such method. use connectGatt "

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 884
    const/4 v8, 0x1

    .line 885
    goto :goto_6

    .line 888
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_12
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Random LE is not Supported. use connectGatt"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    goto :goto_6

    .line 904
    :cond_13
    const-string v10, "LpSCSLEAutoConnectHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[CMAC] connectLEDevice : already updated. RandomLESupport:"

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

    .line 918
    .end local v8    # "isRandomLEFlag":Z
    :cond_14
    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 921
    if-eqz v0, :cond_15

    .line 922
    const-string v10, "LpSCSLEAutoConnectHandler"

    const-string v11, "[CMAC] Gatt instance is created"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 928
    :cond_15
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method private connectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 1519
    if-nez p1, :cond_0

    .line 1520
    const-string v2, "LpSCSLEAutoConnectHandler"

    const-string v3, "connect SCS device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    :goto_0
    return-void

    .line 1524
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1526
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 1527
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1528
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    const-string v2, "LpSCSLEAutoConnectHandler"

    const-string v3, "[CMAC] connection with SCS"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private disconnectLE(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1398
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 1399
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1400
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] stop Autoconnection process"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1404
    .local v2, "macAddr":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1405
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_1

    .line 1406
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] disconnectLE : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v2    # "macAddr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1410
    .restart local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .restart local v2    # "macAddr":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnectionFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1413
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    .line 1415
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->disconnectBLEDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 1417
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 1418
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1421
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "handleMessages: setConnectionScanParameter() defalut scan values"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v4, 0x3eb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1423
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    const v4, 0xffff

    const v5, 0xffff

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1425
    :catch_0
    move-exception v1

    .line 1427
    .local v1, "e":Landroid/os/DeadObjectException;
    invoke-virtual {v1}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_0

    .line 1428
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v1

    .line 1429
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1436
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "macAddr":Ljava/lang/String;
    :cond_2
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] device address is not available"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private disconnectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 1542
    if-nez p1, :cond_0

    .line 1543
    const-string v2, "LpSCSLEAutoConnectHandler"

    const-string v3, "disconnect SCS device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    :goto_0
    return-void

    .line 1547
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1549
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 1550
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1551
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    const-string v2, "LpSCSLEAutoConnectHandler"

    const-string v3, "[CMAC] disconnection with SCS"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v3, 0x24

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private doGattObjectTry(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 977
    if-nez p1, :cond_1

    .line 978
    const-string v2, "LpSCSLEAutoConnectHandler"

    const-string v3, "[CMAC] Device is NULL"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 982
    .local v1, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v1, :cond_2

    .line 983
    const-string v2, "LpSCSLEAutoConnectHandler"

    const-string v3, "[CMAC] doGattObjectTry - deviceSet is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 987
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getGattObjectTryCnt()I

    move-result v0

    .line 989
    .local v0, "cnt":I
    add-int/lit8 v0, v0, 0x1

    .line 990
    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setGattObjectTryCnt(I)V

    .line 991
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 993
    const-string v2, "LpSCSLEAutoConnectHandler"

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

    .line 994
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 995
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->connectLEDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method private getBLEGattInstance(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;
    .locals 4
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1599
    if-nez p1, :cond_0

    .line 1606
    :goto_0
    return-object v1

    .line 1601
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getACDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1602
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_1

    .line 1603
    const-string v2, "LpSCSLEAutoConnectHandler"

    const-string v3, "deviceSet is null!!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1606
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Landroid/bluetooth/BluetoothGattCallback;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;
    .locals 3
    .param p0, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .param p1, "gattCallbacks"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    const/4 v0, 0x0

    .line 100
    if-nez p0, :cond_0

    .line 101
    const-string v1, "LpSCSLEAutoConnectHandler"

    const-string v2, "[CMAC] LpSCSLEAutoConnectHandler - Sorry! ConnectionManager instance is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-object v0

    .line 106
    :cond_0
    if-nez p1, :cond_1

    .line 107
    const-string v1, "LpSCSLEAutoConnectHandler"

    const-string v2, "[CMAC] LpSCSLEAutoConnectHandler - Sorry! BluetoothGattCallback instance is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    if-nez v0, :cond_3

    .line 114
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    if-nez v0, :cond_2

    .line 116
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Landroid/bluetooth/BluetoothGattCallback;)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    .line 118
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_3
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    goto :goto_0

    .line 118
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
    .line 1808
    const-string v2, "LpSCSLEAutoConnectHandler"

    const-string v3, "[CMAC] initRetryCnt - INIT_RECOVERY_RETRY_CNT_SPP"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    if-eqz p1, :cond_1

    .line 1812
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isSppRetryRecoveried()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1813
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1814
    .local v0, "bundles":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 1815
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1816
    const-string v2, "RECONNECTION_STRING_STEP"

    const-string v3, "INIT_RECOVERY_RETRY_CNT_SPP"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v3, 0x18

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 1822
    .end local v0    # "bundles":Landroid/os/Bundle;
    .end local v1    # "itemBundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 1820
    :cond_1
    const-string v2, "LpSCSLEAutoConnectHandler"

    const-string v3, "[CMAC] initRetryCnt - device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isBREDRConnectingState(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1471
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isBREDRConnecting(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 1473
    .local v0, "ret":Z
    return v0
.end method

.method private isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "service"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .prologue
    .line 1448
    if-nez p1, :cond_0

    .line 1449
    const-string v2, "LpSCSLEAutoConnectHandler"

    const-string v3, "[CMAC] isConnectingServiceState - device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    :cond_0
    const/4 v0, 0x0

    .line 1452
    .local v0, "currentstate":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v1

    .line 1453
    .local v1, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v0

    .line 1455
    const-string v2, "LpSCSLEAutoConnectHandler"

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

    .line 1456
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1455
    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1458
    const/4 v2, 0x1

    .line 1460
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isEnableSCSServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 1565
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v0

    .line 1566
    .local v0, "state":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->LOGGED_OUT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1567
    :cond_0
    const-string v1, "LpSCSLEAutoConnectHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMAC] SCS Service State is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    const/4 v1, 0x1

    .line 1571
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSCSServiceConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 5
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    const/4 v1, 0x1

    .line 1581
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v0

    .line 1582
    .local v0, "state":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->LOGGED_OUT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1583
    :cond_0
    const-string v2, "LpSCSLEAutoConnectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] SCS Service State is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized onConnectedGattCallback(Landroid/bluetooth/BluetoothDevice;)V
    .locals 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getWearableProfileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "profileVersion":Ljava/lang/String;
    const-string v6, "2.0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v5

    .line 185
    .local v2, "isWearableRandomLe":Z
    :cond_0
    const-string v6, "LpSCSLEAutoConnectHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMAC] connectLE History : is wearable device supported for LE random address in HostDevice : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v6, "LpSCSLEAutoConnectHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMAC] connectLE History : is Host device supported for LE random address : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isRandomLESupported()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v6, "LpSCSLEAutoConnectHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMAC] connectLE History : HostDevice BT version is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " enum type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/16 v6, 0x3e

    iget v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mTempReason:I

    if-ne v6, v7, :cond_2

    .line 193
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mTempIsTargetReason:Z

    .line 199
    :goto_0
    iget-boolean v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mTempToastFlag:Z

    if-nez v6, :cond_3

    .line 200
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v6

    const-string v7, "LE Connected"

    invoke-virtual {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V

    .line 205
    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 206
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_4

    .line 207
    const-string v5, "LpSCSLEAutoConnectHandler"

    const-string v6, "[CMAC] processConnectionStateChangeResponse : deviceSet is null"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    .line 195
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_2
    const/4 v6, 0x0

    :try_start_1
    iput-boolean v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mTempIsTargetReason:Z

    .line 196
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mTempToastFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
    .end local v2    # "isWearableRandomLe":Z
    .end local v3    # "profileVersion":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 202
    .restart local v2    # "isWearableRandomLe":Z
    .restart local v3    # "profileVersion":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v6, "LpSCSLEAutoConnectHandler"

    const-string v7, "[CMAC] Reason is 62..return toast popup running"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 211
    .restart local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_4
    const-string v6, "LpSCSLEAutoConnectHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMAC] connectLE History : device Set is performed? ( 3 ): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isDeviceSetDone()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v6

    if-ne v6, v5, :cond_6

    .line 215
    const-string v6, "LpSCSLEAutoConnectHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMAC] connectLE History : The first LE Connect request is RandomLE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLe()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v6, "LpSCSLEAutoConnectHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMAC] connectLE History : First HostSupportRandomLE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isHostSupportRandomLE()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", First GearSupportRandomLE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 217
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isGearSupportRandomLE()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", First HostBTVersion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->gethostBluetoothVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " enum type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 216
    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :goto_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v4

    .line 243
    .local v4, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v6, v4, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v1

    .line 247
    .local v1, "isSCSConnected":Z
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getIsFirstAttempt()Z

    move-result v6

    if-ne v6, v5, :cond_9

    .line 248
    const-string v6, "LpSCSLEAutoConnectHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMAC] First Attempt is true and SCS Connected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 252
    if-nez v1, :cond_8

    .line 254
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 255
    const-string v5, "LpSCSLEAutoConnectHandler"

    const-string v6, "[CMAC] Sending 2 second Delayed timer for Le disconnection"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_4
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSICheckerState(I)V

    .line 260
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 281
    :cond_5
    :goto_5
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v6, 0x3ec

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v6, 0x3ec

    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 283
    const-string v5, "LpSCSLEAutoConnectHandler"

    const-string v6, "[CMAC] Sending 2 second Delayed timer for set default"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :goto_6
    iget-boolean v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mTempIsTargetReason:Z

    if-eqz v5, :cond_1

    .line 290
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mTempToastFlag:Z

    goto/16 :goto_2

    .line 221
    .end local v1    # "isSCSConnected":Z
    .end local v4    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_6
    const-string v6, "LpSCSLEAutoConnectHandler"

    const-string v7, "[CMAC] connectLE History : first isRandomLE isNotupdated"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 257
    .restart local v1    # "isSCSConnected":Z
    .restart local v4    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_7
    const-string v5, "LpSCSLEAutoConnectHandler"

    const-string v6, "[CMAC] Sending 2 second Delayed timer for Le disconnection Failed"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 262
    :cond_8
    if-ne v1, v5, :cond_5

    .line 263
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 264
    const-string v5, "LpSCSLEAutoConnectHandler"

    const-string v6, "[CMAC] request runBLEMonitorRssi"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mLeLowRssi:I

    iget v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mLeMidRssi:I

    iget v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mLeHighRssi:I

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->runBLEMonitorRssi(Landroid/bluetooth/BluetoothDevice;III)Z

    .line 266
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSICheckerState(I)V

    .line 267
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto :goto_5

    .line 272
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 273
    const-string v5, "LpSCSLEAutoConnectHandler"

    const-string v6, "[CMAC] request runBLEMonitorRssi"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mLeLowRssi:I

    iget v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mLeMidRssi:I

    iget v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mLeHighRssi:I

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->runBLEMonitorRssi(Landroid/bluetooth/BluetoothDevice;III)Z

    .line 275
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setIsFirstAttempt(Z)V

    .line 276
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSICheckerState(I)V

    .line 277
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto/16 :goto_5

    .line 285
    :cond_a
    const-string v5, "LpSCSLEAutoConnectHandler"

    const-string v6, "[CMAC] Sending 2 second Delayed timer for set default failed"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6
.end method

.method private declared-synchronized onDisconnectedGattCallback(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 297
    const-string v0, "LpSCSLEAutoConnectHandler"

    const-string v1, "[CMAC] Cancel LE disconnection alarm timer"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    const-string v0, "LpSCSLEAutoConnectHandler"

    const-string v1, "[CMAC] set LE defalut scan parameter alarm timer"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private processBluetoothStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/16 v4, 0xc

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1308
    const/16 v2, 0xa

    if-ne p2, v2, :cond_4

    .line 1309
    const-string v2, "LpSCSLEAutoConnectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] BlueTooth State is set OFF : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mTryAutoBTEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mTryAutoBTEnable:Z

    if-eqz v2, :cond_1

    .line 1313
    const-string v2, "LpSCSLEAutoConnectHandler"

    const-string v3, "[CMAC] Let replace Bluetooth STATE-OFF with STATE-ON (STATE-OFF -> STATE-ON)"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    iput-boolean v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mTryAutoBTEnable:Z

    .line 1316
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1372
    :cond_0
    :goto_0
    return-void

    .line 1318
    :cond_1
    const-string v2, "LpSCSLEAutoConnectHandler"

    const-string v3, "[CMAC] this BT STATE_OFF is not the Routine by BT recovery logic"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    if-eqz p1, :cond_0

    .line 1323
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v1

    .line 1326
    .local v1, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v1, :cond_0

    .line 1327
    const-string v2, "LpSCSLEAutoConnectHandler"

    const-string v3, "[CMAC] go to the SCS connection logic"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isScsPreference(Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_3

    .line 1329
    const-string v2, "LpSCSLEAutoConnectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] SCS preference is true. try to Connect SCS for device  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->isEnableSCSServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1332
    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->connectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto :goto_0

    .line 1335
    :cond_2
    const-string v2, "LpSCSLEAutoConnectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] SCS is in enabling state already.   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1339
    :cond_3
    const-string v2, "LpSCSLEAutoConnectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] SCS preference is false. Dont Connect SCS for device  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1345
    .end local v1    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_4
    if-ne p2, v4, :cond_0

    .line 1347
    const-string v2, "LpSCSLEAutoConnectHandler"

    const-string v3, "[CMAC] change BlueTooth State(STATE-ON)"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    if-eqz p1, :cond_0

    .line 1350
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1352
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->initRetryCnt(Landroid/bluetooth/BluetoothDevice;)V

    .line 1353
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1354
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-eqz v0, :cond_5

    .line 1355
    invoke-virtual {v0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setIsFirstAttempt(Z)V

    .line 1356
    invoke-virtual {v0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSICheckerState(I)V

    .line 1357
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1361
    :cond_5
    const-string v2, "LpSCSLEAutoConnectHandler"

    const-string v3, "[CMSC] unset BR/EDR Connecting Flag....."

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {v2, p1, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1366
    const-string v2, "LpSCSLEAutoConnectHandler"

    const-string v3, "[CMAC] BluetoothStateChange - call connectLEDevice"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->connectLEDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0
.end method

.method private declared-synchronized processConnectionStateChangeResponse(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 315
    monitor-enter p0

    if-nez p1, :cond_1

    .line 316
    :try_start_0
    const-string v0, "LpSCSLEAutoConnectHandler"

    const-string v1, "[CMAC] BluetoothDevice instance is NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 320
    :cond_1
    :try_start_1
    const-string v0, "LpSCSLEAutoConnectHandler"

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

    .line 322
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->GATT_SUCCESS:I

    if-ne p2, v0, :cond_2

    .line 323
    const-string v0, "LpSCSLEAutoConnectHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC] onConnectionStateChange - LE connection successful : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 324
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->onConnectedGattCallback(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 328
    :cond_2
    if-nez p3, :cond_0

    .line 329
    :try_start_2
    const-string v0, "LpSCSLEAutoConnectHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC] onConnectionStateChange - LE disconnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 330
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->onDisconnectedGattCallback(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized processRecovery(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1482
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1483
    :try_start_0
    const-string v1, "LpSCSLEAutoConnectHandler"

    const-string v2, "[CMAC] processRecovery - device is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1510
    :goto_0
    monitor-exit p0

    return-void

    .line 1487
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1488
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_1

    .line 1489
    const-string v1, "LpSCSLEAutoConnectHandler"

    const-string v2, "[CMAC] processRecovery : deviceSet is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1482
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1493
    .restart local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1494
    const-string v1, "LpSCSLEAutoConnectHandler"

    const-string v2, "[CMAC] processRecovery : this device is not connected previously"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1498
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRecoveryFlag(Z)V

    .line 1499
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1500
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->disconnectAllProfile(Landroid/bluetooth/BluetoothDevice;)V

    .line 1502
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1503
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1505
    const-string v1, "LpSCSLEAutoConnectHandler"

    const-string v2, "[CMAC] Sending 10 second Delayed timer for LE connection"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    :cond_3
    const-string v1, "LpSCSLEAutoConnectHandler"

    const-string v2, "[CMAC] wake start..."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

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
    .line 147
    if-nez p1, :cond_1

    .line 148
    const-string v0, "LpSCSLEAutoConnectHandler"

    const-string v1, "[CMAC] device is NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    if-nez v0, :cond_2

    .line 155
    const-string v0, "LpSCSLEAutoConnectHandler"

    const-string v1, "[CMAC] restartAutoConnection - WearableState is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_2
    const-string v0, "LpSCSLEAutoConnectHandler"

    const-string v1, "[CMAC] start AutoConnection for service restart"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isContainDeviceSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 164
    const-string v0, "LpSCSLEAutoConnectHandler"

    const-string v1, "[CMAC] restartAutoConnection : putDeviceMacForACDeviceSet.."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putDeviceMacForACDeviceSet(Ljava/lang/String;)V

    .line 170
    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 171
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->connectLEDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 168
    :cond_3
    const-string v0, "LpSCSLEAutoConnectHandler"

    const-string v1, "restartAutoConnection - DeviceSet is already exist"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_4
    const-string v0, "LpSCSLEAutoConnectHandler"

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

    .line 397
    monitor-enter p0

    if-nez p1, :cond_0

    .line 419
    :goto_0
    monitor-exit p0

    return v2

    .line 400
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 401
    .local v1, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v1, :cond_1

    .line 402
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] runBLEMonitorRssi : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 397
    .end local v1    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 406
    .restart local v1    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->getBLEGattInstance(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 407
    .local v0, "btGatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v0, :cond_2

    .line 408
    const-string v3, "LpSCSLEAutoConnectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] runBLEMonitorRssi : btGatt, addr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothGattFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothGattInterface;

    move-result-object v3

    invoke-interface {v3, v0, p2, p3, p4}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothGattInterface;->monitorRssi(Landroid/bluetooth/BluetoothGatt;III)Z

    move-result v2

    .line 414
    .local v2, "ret":Z
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSIVFlag(Z)V

    .line 415
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto :goto_0

    .line 418
    .end local v2    # "ret":Z
    :cond_2
    const-string v3, "LpSCSLEAutoConnectHandler"

    const-string v4, "[CMAC] runBLEMonitorRssi : btGatt is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private runBluetoothStateOffOn()V
    .locals 3

    .prologue
    .line 1257
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 1272
    :goto_0
    return-void

    .line 1259
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mTryAutoBTEnable:Z

    .line 1261
    :try_start_0
    const-string v1, "LpSCSLEAutoConnectHandler"

    const-string v2, "[CMAC] BT shutdown - BluetoothAdapter"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothAdapterFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothAdapterInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothAdapterInterface;->shutdown(Landroid/bluetooth/BluetoothAdapter;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1265
    :catch_0
    move-exception v0

    .line 1266
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-string v1, "LpSCSLEAutoConnectHandler"

    const-string v2, "[CMAC] BT disable - BluetoothAdapter"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0

    .line 1268
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 1269
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "LpSCSLEAutoConnectHandler"

    const-string v2, "[CMAC] BT disable - BluetoothAdapter"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method private setLEScanParameters(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const-wide/32 v4, 0xea60

    const/16 v3, 0x3eb

    .line 945
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 947
    const-string v0, "LpSCSLEAutoConnectHandler"

    const-string v1, "[CMAC] setLEScanParameters: setConnectionScanParameter() fast scan values"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    const/16 v1, 0x60

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z

    .line 950
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    const-string v0, "LpSCSLEAutoConnectHandler"

    const-string v1, "[CMAC] Sending 1 minuite Delayed timer for setting slow scan parameters"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    :goto_0
    const-string v0, "LpSCSLEAutoConnectHandler"

    const-string v1, "[CMAC] wake start for slow le scan..."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->acquireWakeLock(J)V

    .line 968
    return-void

    .line 953
    :cond_0
    const-string v0, "LpSCSLEAutoConnectHandler"

    const-string v1, "[CMAC] Fail to Send 1 minuite Delayed timer for setting slow scan parameters"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startAutoConnection(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1281
    if-nez p1, :cond_1

    .line 1282
    const-string v0, "LpSCSLEAutoConnectHandler"

    const-string v1, "[CMAC] device is NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    :cond_0
    :goto_0
    return-void

    .line 1286
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1287
    const-string v0, "LpSCSLEAutoConnectHandler"

    const-string v1, "[CMAC] startAutoConnection - WearableState is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1291
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 1292
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1293
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 1294
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 1297
    :cond_3
    const-string v0, "LpSCSLEAutoConnectHandler"

    const-string v1, "[CMAC] device address is not available"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1829
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1830
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1831
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1832
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1835
    :cond_0
    const-string v0, "LpSCSLEAutoConnectHandler"

    const-string v1, "[CMAC] close - release wake Lock"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    .line 1838
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    .line 1839
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
    .line 1382
    monitor-enter p0

    :try_start_0
    const-string v1, "LpSCSLEAutoConnectHandler"

    const-string v2, "[CMAC] disconnectBLEDevice to connect AG"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->getBLEGattInstance(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 1385
    .local v0, "btGatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v0, :cond_0

    .line 1386
    const-string v1, "LpSCSLEAutoConnectHandler"

    const-string v2, "[CMAC] call disconnect LE"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1389
    :cond_0
    monitor-exit p0

    return-void

    .line 1382
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

    .line 1696
    const-string v8, "LpSCSLEAutoConnectHandler"

    const-string v9, "[CMAC] enter sendCommandMessage working method"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    const-string v8, "AUTO_CONNECTION_STRING_STEP"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1701
    .local v7, "step":Ljava/lang/String;
    const-string v8, "ACTION_ACL_DISCONNECTED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1702
    const-string v8, "LpSCSLEAutoConnectHandler"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : ACTION_ACL_DISCONNECTED"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getExtraDisconnectionReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1706
    .local v3, "reason":I
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getExtraLinkType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1707
    .local v1, "linktype":I
    invoke-direct {p0, p1, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->checkLowLevelDisconnection(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1805
    .end local v1    # "linktype":I
    .end local v3    # "reason":I
    :cond_0
    :goto_0
    return-void

    .line 1710
    :cond_1
    const-string v8, "MSG_GATT_CONNECTION_STATE_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1711
    const-string v8, "LpSCSLEAutoConnectHandler"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : MSG_GATT_CONNECTION_STATE_CHANGE"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    const-string v8, "AUTO_CONNECTION_INT_GATT_STATE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1713
    .local v6, "status":I
    const-string v8, "AUTO_CONNECTION_INT_GATT_NEWSTATE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1714
    .local v2, "newState":I
    invoke-direct {p0, p1, v6, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->processConnectionStateChangeResponse(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 1717
    .end local v2    # "newState":I
    .end local v6    # "status":I
    :cond_2
    const-string v8, "MSG_MONITOR_RSSI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1718
    const-string v8, "LpSCSLEAutoConnectHandler"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : MSG_MONITOR_RSSI"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    const-string v8, "AUTO_CONNECTION_INT_MONITOR_RSSI"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1720
    .local v4, "rssi":I
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->checkMonitorForRssi(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 1723
    .end local v4    # "rssi":I
    :cond_3
    const-string v8, "ACTION_STATE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1724
    const-string v8, "LpSCSLEAutoConnectHandler"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : ACTION_STATE_CHANGED"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    const-string v8, "BUNDLE_CMKEY_INT_BLUETOOTHADAPTER_STATE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1726
    .local v5, "state":I
    invoke-direct {p0, p1, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->processBluetoothStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 1736
    .end local v5    # "state":I
    :cond_4
    const-string v8, "REQUEST_RECOVERY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1737
    const-string v8, "LpSCSLEAutoConnectHandler"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : REQUEST_RECOVERY"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    if-nez p1, :cond_5

    .line 1740
    const-string v8, "LpSCSLEAutoConnectHandler"

    const-string v9, "[CMAC] sendCommandMessage : Bluetooth device is null"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1744
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1745
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_6

    .line 1746
    const-string v8, "LpSCSLEAutoConnectHandler"

    const-string v9, "[CMAC] sendCommandMessage : deviceSet is null"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1751
    :cond_6
    const/4 v8, 0x3

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRSSICheckerState()I

    move-result v9

    if-ne v8, v9, :cond_7

    .line 1752
    const-string v8, "LpSCSLEAutoConnectHandler"

    const-string v9, "[CMAC] Recovery : request to recovery (BT OFF/ON)"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    invoke-virtual {v0, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSICheckerState(I)V

    .line 1754
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->runBluetoothStateOffOn()V

    .line 1755
    invoke-virtual {v0, v11}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setIsFirstAttempt(Z)V

    .line 1756
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto/16 :goto_0

    .line 1758
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRSSICheckerState()I

    move-result v8

    if-eq v11, v8, :cond_8

    const/4 v8, 0x2

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRSSICheckerState()I

    move-result v9

    if-ne v8, v9, :cond_9

    .line 1759
    :cond_8
    const-string v8, "LpSCSLEAutoConnectHandler"

    const-string v9, "[CMAC] Recovery : Skip Recovery(BT OFF/ON), Start Auto Connection "

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    invoke-virtual {v0, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setIsFirstAttempt(Z)V

    .line 1762
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1763
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->initRetryCnt(Landroid/bluetooth/BluetoothDevice;)V

    .line 1764
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->processRecovery(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1766
    :cond_9
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRSSICheckerState()I

    move-result v8

    if-nez v8, :cond_0

    .line 1767
    const-string v8, "LpSCSLEAutoConnectHandler"

    const-string v9, "[CMAC] Recovery : recovery for first connection requestion.."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->initRetryCnt(Landroid/bluetooth/BluetoothDevice;)V

    .line 1770
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->processRecovery(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1775
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_a
    const-string v8, "HFP_CONNECTION_FAIL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1776
    const-string v8, "LpSCSLEAutoConnectHandler"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : HFP_CONNECTION_FAIL"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    new-instance v8, Landroid/os/Handler;

    iget-object v9, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$3;

    invoke-direct {v9, p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$3;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1791
    :cond_b
    const-string v8, "RESTART_AUTO_CONNECT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1792
    const-string v8, "LpSCSLEAutoConnectHandler"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : RESTART_AUTO_CONNECT"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->restartAutoConnection(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1796
    :cond_c
    const-string v8, "STOP_AUTO_CONNECTION"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1797
    const-string v8, "LpSCSLEAutoConnectHandler"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : STOP_AUTO_CONNECTION"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->disconnectLE(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1801
    :cond_d
    const-string v8, "BLUETOOTH_STATE_OFF_ON"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1802
    const-string v8, "LpSCSLEAutoConnectHandler"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : BLUETOOTH_STATE_OFF_ON"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->runBluetoothStateOffOn()V

    goto/16 :goto_0
.end method
