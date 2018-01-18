.class public Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;
.super Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;
.source "SCSLEAutoConnectHandler.java"


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

.field private static final RECOVERY_CHECK_RSSI_FIRST:I = 0x2

.field private static final RECOVERY_CHECK_RSSI_SECOND:I = 0x3

.field private static final RECOVERY_FIRST_CONNECTION_RETRY:I = 0x0

.field private static final RECOVERY_NO_CHECK_RSSI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SCSLEAutoConnectHandler"

.field private static final WAITTING_TINE_FOR_DISCONNECT_CALL:I = 0x2710

.field private static mLocker:Ljava/lang/Object;

.field private static pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;


# instance fields
.field private mLeHighRssi:I

.field private mLeLowRssi:I

.field private mLeMidRssi:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mTempIsTargetReason:Z

.field private mTempReason:I

.field private mTempToastFlag:Z

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

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mLocker:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Landroid/bluetooth/BluetoothGattCallback;)V
    .locals 3
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .param p2, "gattCallbacks"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;-><init>()V

    .line 50
    const/16 v0, -0x56

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mLeLowRssi:I

    .line 52
    const/16 v0, -0x55

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mLeMidRssi:I

    .line 54
    const/16 v0, 0x7f

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mLeHighRssi:I

    .line 57
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mTempToastFlag:Z

    .line 59
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mTempIsTargetReason:Z

    .line 61
    iput v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mTempReason:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    .line 1487
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler$2;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler$2;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    .line 121
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 122
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 123
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    .line 124
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    .line 125
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 126
    const-string v0, "SCSLEAutoConnectHandler"

    const-string v1, "[CMAC] Sorry! Bluetooth is not supported in this device"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mTryAutoBTEnable:Z

    .line 132
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 133
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "SCSLEAutoConnectHandler"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->doGattObjectTry(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->startAutoConnection(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;
    .param p1, "x1"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->isEnableSCSServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;
    .param p1, "x1"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->connectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

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

    .line 895
    if-nez p1, :cond_1

    .line 896
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] Device is NULL"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    const-string v3, "SCSLEAutoConnectHandler"

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

    .line 904
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->LE_LINK_TYPE:I

    if-ne v3, p3, :cond_2

    .line 905
    iput p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mTempReason:I

    .line 908
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 909
    .local v1, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v1, :cond_3

    .line 910
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] checkLowLevelDisconnection : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 917
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRecoveryFlag()Z

    move-result v3

    if-ne v3, v7, :cond_4

    .line 918
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->BREDR_LINK_TYPE:I

    if-ne p3, v3, :cond_4

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->LOCAL_USER_DISCONNECTION:I

    if-ne p2, v3, :cond_4

    .line 919
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v4, 0x3ea

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 920
    invoke-virtual {v1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRecoveryFlag(Z)V

    .line 921
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 922
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->startAutoConnection(Landroid/bluetooth/BluetoothDevice;)V

    .line 926
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v2

    .line 927
    .local v2, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isScsPreference(Ljava/lang/String;)Z

    move-result v3

    if-ne v7, v3, :cond_8

    .line 928
    const-string v3, "SCSLEAutoConnectHandler"

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

    .line 930
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->isEnableSCSServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 931
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->connectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    .line 945
    .end local v2    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_4
    :goto_1
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->BREDR_LINK_TYPE:I

    if-ne p3, v3, :cond_c

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->LOCAL_USER_DISCONNECTION:I

    if-ne v3, p2, :cond_5

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 946
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_5
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->USER_REMOVED_BOND:I

    if-eq p2, v3, :cond_c

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->AUTH_FAIL:I

    if-eq p2, v3, :cond_c

    .line 950
    if-eqz p1, :cond_b

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 951
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    .line 952
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 951
    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 954
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v2

    .line 955
    .restart local v2    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    const-string v3, "SCSLEAutoConnectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 958
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 959
    invoke-virtual {v5, v2, v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 955
    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string v3, "SCSLEAutoConnectHandler"

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

    .line 967
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->CHIP_SET_ERROR:I

    if-ne v3, p2, :cond_6

    .line 969
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] ACL_DISCONNECT reason 34, set BREDR flag to flase"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {v3, p1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 973
    :cond_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 974
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;)V

    .line 976
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isScsPreference(Ljava/lang/String;)Z

    move-result v3

    if-ne v7, v3, :cond_a

    .line 977
    const-string v3, "SCSLEAutoConnectHandler"

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

    .line 979
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->isEnableSCSServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 981
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->connectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto/16 :goto_0

    .line 934
    :cond_7
    const-string v3, "SCSLEAutoConnectHandler"

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

    .line 938
    :cond_8
    const-string v3, "SCSLEAutoConnectHandler"

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

    .line 984
    :cond_9
    const-string v3, "SCSLEAutoConnectHandler"

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

    .line 988
    :cond_a
    const-string v3, "SCSLEAutoConnectHandler"

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

    .line 992
    .end local v2    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_b
    const-string v3, "SCSLEAutoConnectHandler"

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

    .line 995
    :cond_c
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->BREDR_LINK_TYPE:I

    if-ne p3, v3, :cond_d

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->USER_REMOVED_BOND:I

    if-eq p2, v3, :cond_0

    .line 1004
    :cond_d
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->LE_LINK_TYPE:I

    if-ne p3, v3, :cond_f

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->CONNECTION_ACCEPT_TIME_OUT_EXCEEDED:I

    if-ne p2, v3, :cond_f

    .line 1005
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v3, :cond_e

    .line 1006
    const-string v3, "SCSLEAutoConnectHandler"

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

    .line 1010
    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->runBluetoothStateOffOn()V

    goto/16 :goto_0

    .line 1013
    :cond_f
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->LE_LINK_TYPE:I

    if-ne p3, v3, :cond_17

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->REASON_LINK_LOSS:I

    if-eq p2, v3, :cond_17

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->CONN_FAILED_TO_BE_EASTABLISHED:I

    if-eq p2, v3, :cond_17

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->USER_REMOVED_BOND:I

    if-eq p2, v3, :cond_17

    sget v3, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->REMOTE_USER_DISCONNECTION:I

    if-eq p2, v3, :cond_17

    .line 1017
    const-string v3, "SCSLEAutoConnectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] ACTION_ACL_DISCONNECT - LE Disconnected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1018
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1017
    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] LE AutoConnection is finish..request SPP & HFP Connection"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v3

    const-string v4, "LE Disconnected"

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 1024
    if-nez v1, :cond_10

    .line 1025
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] checkLowLevelDisconnection : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1029
    :cond_10
    invoke-virtual {v1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 1030
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1032
    if-eqz p1, :cond_16

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 1033
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    .line 1034
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1033
    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1037
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 1038
    if-nez v1, :cond_11

    .line 1039
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] checkLowLevelDisconnection : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1042
    :cond_11
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRSSIVFlag()Z

    move-result v3

    if-ne v7, v3, :cond_12

    .line 1043
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] RSSI callback is not avilable, restart auto connection : connectLEDeviceafterLLOrRUT.. "

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    invoke-virtual {v1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSIVFlag(Z)V

    .line 1048
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1051
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 1052
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1055
    :cond_12
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v2

    .line 1057
    .restart local v2    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1059
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->isSCSServiceConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v3

    if-ne v3, v7, :cond_13

    .line 1062
    invoke-virtual {v1, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRemoteFlag(Z)V

    .line 1063
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1066
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] checkLowLevelDisconnection : SCS state is in Connected state. Disconnect SCS "

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->disconnectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto/16 :goto_0

    .line 1070
    :cond_13
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v0

    .line 1071
    .local v0, "SCSstate":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1074
    invoke-virtual {v1, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRemoteFlag(Z)V

    .line 1075
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1077
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] checkLowLevelDisconnection : SCS state is  in Connecting/Uknown state. Disconnect SCS "

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->disconnectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto/16 :goto_0

    .line 1079
    :cond_14
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1081
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] checkLowLevelDisconnection : SCS state is  in disConnecting. set remote flag to  true"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v1, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRemoteFlag(Z)V

    .line 1083
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto/16 :goto_0

    .line 1087
    :cond_15
    invoke-virtual {v1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRemoteFlag(Z)V

    .line 1088
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1091
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler$1;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1105
    .end local v0    # "SCSstate":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    .end local v2    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_16
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] device address is not available"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1109
    :cond_17
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->LE_LINK_TYPE:I

    if-ne p3, v3, :cond_18

    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->REASON_LINK_LOSS:I

    if-eq p2, v3, :cond_19

    :cond_18
    iget v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->LE_LINK_TYPE:I

    if-ne p3, v3, :cond_1c

    sget v3, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->REMOTE_USER_DISCONNECTION:I

    if-ne p2, v3, :cond_1c

    .line 1112
    :cond_19
    if-eqz p1, :cond_1b

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 1113
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    .line 1114
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1113
    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1115
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] LE link loss , start LE Autoconnection again"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 1118
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 1119
    if-nez v1, :cond_1a

    .line 1120
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] checkLowLevelDisconnection : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1123
    :cond_1a
    invoke-virtual {v1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 1124
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1126
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1129
    :cond_1b
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] device address is not available"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1133
    :cond_1c
    const-string v3, "SCSLEAutoConnectHandler"

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

    .line 325
    if-nez p1, :cond_0

    .line 326
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] BluetoothDevice instance is NULL"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :goto_0
    return-void

    .line 330
    :cond_0
    const-string v3, "SCSLEAutoConnectHandler"

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

    .line 333
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "macAddr":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 337
    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 338
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_1

    .line 339
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] checkMonitorForRssi : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_1
    const/16 v3, -0x55

    if-lt p2, v3, :cond_2

    .line 345
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnectionFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 346
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] rssi value is sufficient for AG connection establishment, disconnect BLE"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-direct {p0, p1, v6, v6, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->runBLEMonitorRssi(Landroid/bluetooth/BluetoothDevice;III)Z

    .line 350
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v3

    const-string v4, "LE request to disconnect"

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->disconnectBLEDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 361
    :cond_2
    :goto_1
    invoke-virtual {v0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSIVFlag(Z)V

    .line 362
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto :goto_0

    .line 352
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Landroid/os/DeadObjectException;
    invoke-virtual {v1}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_1

    .line 355
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v1

    .line 356
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 364
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] checkMonitorForRssi : device address is not available"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized connectLEDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 18
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 415
    monitor-enter p0

    if-nez p1, :cond_0

    .line 416
    :try_start_0
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Device is NULL"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    :goto_0
    monitor-exit p0

    return-void

    .line 420
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v14

    const/16 v15, 0xc

    if-eq v14, v15, :cond_1

    .line 421
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : bonded state is not BONDED"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 426
    :cond_1
    :try_start_2
    sget-object v14, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v14

    if-nez v14, :cond_2

    sget-object v14, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 427
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 428
    :cond_2
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] BR/EDR is connecting..retrun LE Connection Reqeust"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->isBREDRConnectingState(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 434
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] BR/EDR rety is connecting..retrun LE Connection Reqeust"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v4

    .line 439
    .local v4, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v4, :cond_5

    .line 440
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : deviceSet is null"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_5
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 446
    .local v2, "btGatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v2, :cond_7

    .line 447
    const-string v14, "SCSLEAutoConnectHandler"

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

    .line 454
    :goto_1
    if-eqz v2, :cond_6

    .line 455
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice update mBluetoothGatt"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v14, :cond_6

    .line 458
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v15, 0x7

    invoke-virtual {v14, v15, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 459
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "connectLEDevice : call closeProfileProxy for Gatt instance"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 464
    :cond_6
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v7

    .line 465
    .local v7, "hostBluetoothVersion":I
    const/4 v11, 0x0

    .line 466
    .local v11, "isRadomLeConnectCalledFlag":Z
    const/4 v9, 0x0

    .line 467
    .local v9, "isGearSupportRandomLeFlag":Z
    const/4 v10, 0x0

    .line 469
    .local v10, "isHostSupportRandomLeFlag":Z
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : check LE address type"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v14

    const-string v15, "LE request to connect"

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getWearableProfileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 475
    .local v13, "profileVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isGearNotifiedRandomLeTrueFlag(Ljava/lang/String;)Z

    move-result v8

    .line 477
    .local v8, "isGearNotified":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isRandomLESupported()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 479
    const/4 v10, 0x1

    .line 481
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Random LE is Supported. connect LE"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v14, "2.0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 485
    const/4 v9, 0x1

    .line 487
    const/4 v14, 0x1

    if-ne v8, v14, :cond_8

    .line 489
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Gear device random LE is Supported and Gear is notified. use connectGatt"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 493
    const/4 v11, 0x1

    .line 543
    :goto_2
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v14

    if-nez v14, :cond_d

    .line 545
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeUpdated(Z)V

    .line 546
    invoke-virtual {v4, v11, v9, v10, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeValues(ZZZI)V

    .line 597
    :goto_3
    if-eqz v2, :cond_13

    .line 598
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] Gatt instance is created and Le Autoconnection is set to true"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-virtual {v4, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 605
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v5

    .line 606
    .local v5, "deviceSets":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v5, :cond_12

    .line 607
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : deviceSets is null"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    .end local v5    # "deviceSets":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v7    # "hostBluetoothVersion":I
    .end local v8    # "isGearNotified":Z
    .end local v9    # "isGearSupportRandomLeFlag":Z
    .end local v10    # "isHostSupportRandomLeFlag":Z
    .end local v11    # "isRadomLeConnectCalledFlag":Z
    .end local v13    # "profileVersion":Ljava/lang/String;
    :cond_7
    const-string v14, "SCSLEAutoConnectHandler"

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

    .line 497
    .restart local v7    # "hostBluetoothVersion":I
    .restart local v8    # "isGearNotified":Z
    .restart local v9    # "isGearSupportRandomLeFlag":Z
    .restart local v10    # "isHostSupportRandomLeFlag":Z
    .restart local v11    # "isRadomLeConnectCalledFlag":Z
    .restart local v13    # "profileVersion":Ljava/lang/String;
    :cond_8
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Gear device random LE is Supported and Gear is not notified. use connectGattUsePublicAddr"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 499
    :try_start_3
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v15, v1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 505
    :goto_4
    const/4 v11, 0x0

    goto :goto_2

    .line 500
    :catch_0
    move-exception v6

    .line 501
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_4

    .line 508
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

    .line 510
    :cond_a
    const/4 v9, 0x0

    .line 511
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Gear device random LE is NOT Supported. use connectGattUsePublicAddr"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 513
    :try_start_5
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v15, v1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    .line 516
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 518
    :catch_1
    move-exception v6

    .line 519
    .local v6, "e":Ljava/lang/NoSuchMethodError;
    :try_start_6
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Exception No Such method. use connectGatt "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 523
    const/4 v11, 0x1

    .line 530
    goto/16 :goto_2

    .line 524
    .end local v6    # "e":Ljava/lang/NoSuchMethodError;
    :catch_2
    move-exception v6

    .line 525
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Exception No Such method. use connectGatt "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 529
    const/4 v11, 0x1

    .line 530
    goto/16 :goto_2

    .line 532
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :cond_b
    const-string v14, "UNKNOWN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 534
    const-string v14, "SCSLEAutoConnectHandler"

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

    .line 539
    :cond_c
    const-string v14, "SCSLEAutoConnectHandler"

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

    .line 549
    :cond_d
    const-string v14, "SCSLEAutoConnectHandler"

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

    .line 554
    :cond_e
    const/4 v12, 0x0

    .line 556
    .local v12, "isRandomLEFlag":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_10

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x16

    if-le v14, v15, :cond_10

    .line 557
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : M OS. use connectGattUsePublicAddr"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 559
    :try_start_7
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v15, v1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v2

    .line 560
    const/4 v12, 0x0

    .line 582
    :goto_5
    :try_start_8
    const-string v14, "2.0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 584
    const/4 v12, 0x1

    .line 587
    :cond_f
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v14

    if-nez v14, :cond_11

    .line 589
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeUpdated(Z)V

    .line 590
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v12, v15, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeValues(ZZZI)V

    goto/16 :goto_3

    .line 562
    :catch_3
    move-exception v6

    .line 563
    .local v6, "e":Ljava/lang/NoSuchMethodError;
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Exception No Such method. use connectGatt "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 567
    const/4 v12, 0x1

    .line 574
    goto :goto_5

    .line 568
    .end local v6    # "e":Ljava/lang/NoSuchMethodError;
    :catch_4
    move-exception v6

    .line 569
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Exception No Such method. use connectGatt "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 573
    const/4 v12, 0x1

    .line 574
    goto :goto_5

    .line 577
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :cond_10
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] connectLEDevice : Random LE is not Supported. use connectGatt"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    goto :goto_5

    .line 593
    :cond_11
    const-string v14, "SCSLEAutoConnectHandler"

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

    .line 611
    .end local v12    # "isRandomLEFlag":Z
    .restart local v5    # "deviceSets":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_12
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 612
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setGattObjectTryCnt(I)V

    .line 613
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto/16 :goto_0

    .line 616
    .end local v5    # "deviceSets":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_13
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "[CMAC] btGatt is null, retry LE Connection"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getGattObjectTryCnt()I

    move-result v3

    .line 619
    .local v3, "cnt":I
    const/4 v14, 0x5

    if-ge v3, v14, :cond_15

    .line 620
    const-string v14, "SCSLEAutoConnectHandler"

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

    .line 623
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v15, 0x3e9

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 624
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v15, 0x3e9

    const-wide/16 v16, 0x3e8

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 625
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "Sending 1 second Delayed timer for Gatt oject binding is ok "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 628
    :cond_14
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "Sending 1 second Delayed timer for Gatt oject binding is Failed"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 632
    :cond_15
    const-string v14, "SCSLEAutoConnectHandler"

    const-string v15, "LE connection retry count exceed, stop retry "

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
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

    .line 648
    monitor-enter p0

    if-nez p1, :cond_0

    .line 649
    :try_start_0
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] Device is NULL"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    :goto_0
    monitor-exit p0

    return-void

    .line 654
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v10

    const/16 v11, 0xc

    if-eq v10, v11, :cond_1

    .line 655
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : bonded state is not BONDED"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 648
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 660
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->isAutoConnectionRunning(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    if-ne v13, v10, :cond_2

    .line 661
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : LE connect request is already called..return this routine.."

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 667
    :cond_2
    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v10

    if-nez v10, :cond_3

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 668
    invoke-direct {p0, p1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 669
    :cond_3
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] BR/EDR is connecting..retrun LE Connection Reqeust"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->isBREDRConnectingState(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 675
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] BR/EDR rety is connecting..retrun LE Connection Reqeust"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 680
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 681
    .local v1, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v1, :cond_6

    .line 682
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : deviceSet is null"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 686
    :cond_6
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 688
    .local v0, "btGatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v0, :cond_8

    .line 689
    const-string v10, "SCSLEAutoConnectHandler"

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

    .line 696
    :goto_1
    if-eqz v0, :cond_7

    .line 697
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT update mBluetoothGatt"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v10, :cond_7

    .line 700
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v11, 0x7

    invoke-virtual {v10, v11, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 701
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "connectLEDeviceafterLLOrRUT : call closeProfileProxy for Gatt instance"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 707
    :cond_7
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v3

    .line 708
    .local v3, "hostBluetoothVersion":I
    const/4 v7, 0x0

    .line 709
    .local v7, "isRadomLeConnectCalledFlag":Z
    const/4 v5, 0x0

    .line 710
    .local v5, "isGearSupportRandomLeFlag":Z
    const/4 v6, 0x0

    .line 712
    .local v6, "isHostSupportRandomLeFlag":Z
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : check LE address type"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v10

    const-string v11, "LE request to connect"

    invoke-virtual {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V

    .line 717
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v10

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getWearableProfileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 718
    .local v9, "profileVersion":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v10

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isGearNotifiedRandomLeTrueFlag(Ljava/lang/String;)Z

    move-result v4

    .line 720
    .local v4, "isGearNotified":Z
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isRandomLESupported()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 722
    const/4 v6, 0x1

    .line 724
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Random LE is Supported. connect LE"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v10, "2.0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 728
    const/4 v5, 0x1

    .line 730
    if-ne v4, v13, :cond_9

    .line 732
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Gear device random LE is Supported and Gear is notified. use connectGatt"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 736
    const/4 v7, 0x1

    .line 786
    :goto_2
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v10

    if-nez v10, :cond_e

    .line 788
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeUpdated(Z)V

    .line 789
    invoke-virtual {v1, v7, v5, v6, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeValues(ZZZI)V

    .line 842
    :goto_3
    if-nez v0, :cond_13

    .line 843
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : connectGatt fail"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 692
    .end local v3    # "hostBluetoothVersion":I
    .end local v4    # "isGearNotified":Z
    .end local v5    # "isGearSupportRandomLeFlag":Z
    .end local v6    # "isHostSupportRandomLeFlag":Z
    .end local v7    # "isRadomLeConnectCalledFlag":Z
    .end local v9    # "profileVersion":Ljava/lang/String;
    :cond_8
    const-string v10, "SCSLEAutoConnectHandler"

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

    .line 740
    .restart local v3    # "hostBluetoothVersion":I
    .restart local v4    # "isGearNotified":Z
    .restart local v5    # "isGearSupportRandomLeFlag":Z
    .restart local v6    # "isHostSupportRandomLeFlag":Z
    .restart local v7    # "isRadomLeConnectCalledFlag":Z
    .restart local v9    # "profileVersion":Ljava/lang/String;
    :cond_9
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Gear device random LE is Supported and Gear is not notified. use connectGattUsePublicAddr"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 742
    :try_start_3
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-interface {v10, p1, v11, v12}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 748
    :goto_4
    const/4 v7, 0x0

    goto :goto_2

    .line 743
    :catch_0
    move-exception v2

    .line 744
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_4

    .line 751
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

    .line 753
    :cond_b
    const/4 v5, 0x0

    .line 754
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Gear device random LE is NOT Supported. use connectGattUsePublicAddr"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 756
    :try_start_5
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-interface {v10, p1, v11, v12}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 759
    const/4 v7, 0x0

    goto :goto_2

    .line 761
    :catch_1
    move-exception v2

    .line 762
    .local v2, "e":Ljava/lang/NoSuchMethodError;
    :try_start_6
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Exception No Such method. use connectGatt "

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 766
    const/4 v7, 0x1

    .line 773
    goto/16 :goto_2

    .line 767
    .end local v2    # "e":Ljava/lang/NoSuchMethodError;
    :catch_2
    move-exception v2

    .line 768
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Exception No Such method. use connectGatt "

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 772
    const/4 v7, 0x1

    .line 773
    goto/16 :goto_2

    .line 775
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_c
    const-string v10, "UNKNOWN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 777
    const-string v10, "SCSLEAutoConnectHandler"

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

    .line 782
    :cond_d
    const-string v10, "SCSLEAutoConnectHandler"

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

    .line 792
    :cond_e
    const-string v10, "SCSLEAutoConnectHandler"

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

    .line 798
    :cond_f
    const/4 v8, 0x0

    .line 800
    .local v8, "isRandomLEFlag":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_11

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x16

    if-le v10, v11, :cond_11

    .line 801
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : M OS. use connectGattUsePublicAddr"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 803
    :try_start_7
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-interface {v10, p1, v11, v12}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    .line 804
    const/4 v8, 0x0

    .line 826
    :goto_5
    :try_start_8
    const-string v10, "2.0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 828
    const/4 v8, 0x1

    .line 831
    :cond_10
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v10

    if-nez v10, :cond_12

    .line 833
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeUpdated(Z)V

    .line 834
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v8, v11, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRandomLeValues(ZZZI)V

    goto/16 :goto_3

    .line 806
    :catch_3
    move-exception v2

    .line 807
    .local v2, "e":Ljava/lang/NoSuchMethodError;
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Exception No Such method. use connectGatt "

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 811
    const/4 v8, 0x1

    .line 818
    goto :goto_5

    .line 812
    .end local v2    # "e":Ljava/lang/NoSuchMethodError;
    :catch_4
    move-exception v2

    .line 813
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Exception No Such method. use connectGatt "

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 817
    const/4 v8, 0x1

    .line 818
    goto :goto_5

    .line 821
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_11
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] connectLEDeviceafterLLOrRUT : Random LE is not Supported. use connectGatt"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mgattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    goto :goto_5

    .line 837
    :cond_12
    const-string v10, "SCSLEAutoConnectHandler"

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

    goto/16 :goto_3

    .line 847
    .end local v8    # "isRandomLEFlag":Z
    :cond_13
    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 850
    if-eqz v0, :cond_14

    .line 851
    const-string v10, "SCSLEAutoConnectHandler"

    const-string v11, "[CMAC] Gatt instance is created"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 856
    :cond_14
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method private connectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 1397
    if-nez p1, :cond_0

    .line 1398
    const-string v2, "SCSLEAutoConnectHandler"

    const-string v3, "connect SCS device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    :goto_0
    return-void

    .line 1402
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1404
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 1405
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1406
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const-string v2, "SCSLEAutoConnectHandler"

    const-string v3, "[CMAC] connection with SCS"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private disconnectLE(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1284
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 1285
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1286
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] stop Autoconnection process"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1290
    .local v2, "macAddr":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1291
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_0

    .line 1292
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] disconnectLE : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v2    # "macAddr":Ljava/lang/String;
    :goto_0
    return-void

    .line 1296
    .restart local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .restart local v2    # "macAddr":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnectionFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1299
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->disconnectBLEDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1307
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 1309
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto :goto_0

    .line 1300
    :catch_0
    move-exception v1

    .line 1302
    .local v1, "e":Landroid/os/DeadObjectException;
    invoke-virtual {v1}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_1

    .line 1303
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v1

    .line 1304
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1311
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "macAddr":Ljava/lang/String;
    :cond_2
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] device address is not available"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private disconnectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 1420
    if-nez p1, :cond_0

    .line 1421
    const-string v2, "SCSLEAutoConnectHandler"

    const-string v3, "disconnect SCS device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    :goto_0
    return-void

    .line 1425
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1427
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 1428
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1429
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    const-string v2, "SCSLEAutoConnectHandler"

    const-string v3, "[CMAC] disconnection with SCS"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v3, 0x24

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private doGattObjectTry(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 865
    if-nez p1, :cond_1

    .line 866
    const-string v2, "SCSLEAutoConnectHandler"

    const-string v3, "[CMAC] Device is NULL"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 870
    .local v1, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v1, :cond_2

    .line 871
    const-string v2, "SCSLEAutoConnectHandler"

    const-string v3, "[CMAC] doGattObjectTry - deviceSet is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 875
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getGattObjectTryCnt()I

    move-result v0

    .line 877
    .local v0, "cnt":I
    add-int/lit8 v0, v0, 0x1

    .line 878
    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setGattObjectTryCnt(I)V

    .line 879
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 881
    const-string v2, "SCSLEAutoConnectHandler"

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

    .line 882
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 883
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->connectLEDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method private getBLEGattInstance(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;
    .locals 4
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1477
    if-nez p1, :cond_0

    .line 1484
    :goto_0
    return-object v1

    .line 1479
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getACDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1480
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_1

    .line 1481
    const-string v2, "SCSLEAutoConnectHandler"

    const-string v3, "deviceSet is null!!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1484
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Landroid/bluetooth/BluetoothGattCallback;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;
    .locals 3
    .param p0, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .param p1, "gattCallbacks"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    const/4 v0, 0x0

    .line 95
    if-nez p0, :cond_0

    .line 96
    const-string v1, "SCSLEAutoConnectHandler"

    const-string v2, "[CMAC] SmLEAutoConnectHandler - Sorry! ConnectionManager instance is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_0
    return-object v0

    .line 101
    :cond_0
    if-nez p1, :cond_1

    .line 102
    const-string v1, "SCSLEAutoConnectHandler"

    const-string v2, "[CMAC] SmLEAutoConnectHandler - Sorry! BluetoothGattCallback instance is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;

    if-nez v0, :cond_3

    .line 109
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;

    if-nez v0, :cond_2

    .line 111
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Landroid/bluetooth/BluetoothGattCallback;)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;

    .line 113
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_3
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;

    goto :goto_0

    .line 113
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
    .line 1672
    const-string v2, "SCSLEAutoConnectHandler"

    const-string v3, "[CMAC] initRetryCnt - INIT_RECOVERY_RETRY_CNT_SPP"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    if-eqz p1, :cond_1

    .line 1676
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isSppRetryRecoveried()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1677
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1678
    .local v0, "bundles":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 1679
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1680
    const-string v2, "RECONNECTION_STRING_STEP"

    const-string v3, "INIT_RECOVERY_RETRY_CNT_SPP"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v3, 0x18

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 1686
    .end local v0    # "bundles":Landroid/os/Bundle;
    .end local v1    # "itemBundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 1684
    :cond_1
    const-string v2, "SCSLEAutoConnectHandler"

    const-string v3, "[CMAC] initRetryCnt - device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isBREDRConnectingState(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1346
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isBREDRConnecting(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 1348
    .local v0, "ret":Z
    return v0
.end method

.method private isConnectingServiceState(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "service"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .prologue
    .line 1323
    if-nez p1, :cond_0

    .line 1324
    const-string v2, "SCSLEAutoConnectHandler"

    const-string v3, "[CMAC] isConnectingServiceState - device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    :cond_0
    const/4 v0, 0x0

    .line 1327
    .local v0, "currentstate":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v1

    .line 1328
    .local v1, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v0

    .line 1330
    const-string v2, "SCSLEAutoConnectHandler"

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

    .line 1331
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1330
    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1333
    const/4 v2, 0x1

    .line 1335
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
    .line 1443
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v0

    .line 1444
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

    .line 1445
    :cond_0
    const-string v1, "SCSLEAutoConnectHandler"

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

    .line 1446
    const/4 v1, 0x1

    .line 1449
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

    .line 1459
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v0

    .line 1460
    .local v0, "state":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->LOGGED_OUT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1461
    :cond_0
    const-string v2, "SCSLEAutoConnectHandler"

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

    .line 1465
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

    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getWearableProfileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "profileVersion":Ljava/lang/String;
    const-string v6, "2.0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v5

    .line 182
    .local v2, "isWearableRandomLe":Z
    :cond_0
    const-string v6, "SCSLEAutoConnectHandler"

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

    .line 184
    const-string v6, "SCSLEAutoConnectHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMAC] connectLE History : is Host device supported for LE random address : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isRandomLESupported()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v6, "SCSLEAutoConnectHandler"

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

    .line 188
    const/16 v6, 0x3e

    iget v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mTempReason:I

    if-ne v6, v7, :cond_2

    .line 190
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mTempIsTargetReason:Z

    .line 196
    :goto_0
    iget-boolean v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mTempToastFlag:Z

    if-nez v6, :cond_3

    .line 197
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v6

    const-string v7, "LE Connected"

    invoke-virtual {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V

    .line 202
    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 203
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_4

    .line 204
    const-string v5, "SCSLEAutoConnectHandler"

    const-string v6, "[CMAC] processConnectionStateChangeResponse : deviceSet is null"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    .line 192
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_2
    const/4 v6, 0x0

    :try_start_1
    iput-boolean v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mTempIsTargetReason:Z

    .line 193
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mTempToastFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    .end local v2    # "isWearableRandomLe":Z
    .end local v3    # "profileVersion":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 199
    .restart local v2    # "isWearableRandomLe":Z
    .restart local v3    # "profileVersion":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v6, "SCSLEAutoConnectHandler"

    const-string v7, "[CMAC] Reason is 62..return toast popup running"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 208
    .restart local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->isRandomLeUpdated()Z

    move-result v6

    if-ne v6, v5, :cond_6

    .line 210
    const-string v6, "SCSLEAutoConnectHandler"

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

    .line 211
    const-string v6, "SCSLEAutoConnectHandler"

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

    .line 212
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

    .line 211
    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v4

    .line 238
    .local v4, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v6, v4, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v1

    .line 242
    .local v1, "isSCSConnected":Z
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getIsFirstAttempt()Z

    move-result v6

    if-ne v6, v5, :cond_9

    .line 243
    const-string v6, "SCSLEAutoConnectHandler"

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

    .line 245
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    if-nez v1, :cond_8

    .line 249
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 250
    const-string v5, "SCSLEAutoConnectHandler"

    const-string v6, "[CMAC] Sending 2 second Delayed timer for Le disconnection"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_4
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSICheckerState(I)V

    .line 255
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 278
    :cond_5
    :goto_5
    iget-boolean v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mTempIsTargetReason:Z

    if-eqz v5, :cond_1

    .line 279
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mTempToastFlag:Z

    goto/16 :goto_2

    .line 216
    .end local v1    # "isSCSConnected":Z
    .end local v4    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_6
    const-string v6, "SCSLEAutoConnectHandler"

    const-string v7, "[CMAC] connectLE History : first isRandomLE isNotupdated"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 252
    .restart local v1    # "isSCSConnected":Z
    .restart local v4    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_7
    const-string v5, "SCSLEAutoConnectHandler"

    const-string v6, "[CMAC] Sending 2 second Delayed timer for Le disconnection Failed"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 257
    :cond_8
    if-ne v1, v5, :cond_5

    .line 258
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 259
    const-string v5, "SCSLEAutoConnectHandler"

    const-string v6, "[CMAC] request runBLEMonitorRssi"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mLeLowRssi:I

    iget v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mLeMidRssi:I

    iget v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mLeHighRssi:I

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->runBLEMonitorRssi(Landroid/bluetooth/BluetoothDevice;III)Z

    .line 261
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSICheckerState(I)V

    .line 262
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto :goto_5

    .line 267
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 268
    const-string v5, "SCSLEAutoConnectHandler"

    const-string v6, "[CMAC] request runBLEMonitorRssi"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mLeLowRssi:I

    iget v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mLeMidRssi:I

    iget v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mLeHighRssi:I

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->runBLEMonitorRssi(Landroid/bluetooth/BluetoothDevice;III)Z

    .line 270
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setIsFirstAttempt(Z)V

    .line 271
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSICheckerState(I)V

    .line 272
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method private declared-synchronized onDisconnectedGattCallback(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    const-string v0, "SCSLEAutoConnectHandler"

    const-string v1, "[CMAC] Cancel LE disconnection alarm timer"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 285
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

    .line 1194
    const/16 v2, 0xa

    if-ne p2, v2, :cond_4

    .line 1195
    const-string v2, "SCSLEAutoConnectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] BlueTooth State is set OFF : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mTryAutoBTEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mTryAutoBTEnable:Z

    if-eqz v2, :cond_1

    .line 1199
    const-string v2, "SCSLEAutoConnectHandler"

    const-string v3, "[CMAC] Let replace Bluetooth STATE-OFF with STATE-ON (STATE-OFF -> STATE-ON)"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    iput-boolean v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mTryAutoBTEnable:Z

    .line 1202
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 1204
    :cond_1
    const-string v2, "SCSLEAutoConnectHandler"

    const-string v3, "[CMAC] this BT STATE_OFF is not the Routine by BT recovery logic"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    if-eqz p1, :cond_0

    .line 1209
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v1

    .line 1212
    .local v1, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v1, :cond_0

    .line 1213
    const-string v2, "SCSLEAutoConnectHandler"

    const-string v3, "[CMAC] go to the SCS connection logic"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isScsPreference(Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_3

    .line 1215
    const-string v2, "SCSLEAutoConnectHandler"

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

    .line 1217
    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->isEnableSCSServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1218
    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->connectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto :goto_0

    .line 1221
    :cond_2
    const-string v2, "SCSLEAutoConnectHandler"

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

    .line 1225
    :cond_3
    const-string v2, "SCSLEAutoConnectHandler"

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

    .line 1231
    .end local v1    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_4
    if-ne p2, v4, :cond_0

    .line 1233
    const-string v2, "SCSLEAutoConnectHandler"

    const-string v3, "[CMAC] change BlueTooth State(STATE-ON)"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    if-eqz p1, :cond_0

    .line 1236
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1238
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->initRetryCnt(Landroid/bluetooth/BluetoothDevice;)V

    .line 1239
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1240
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-eqz v0, :cond_5

    .line 1241
    invoke-virtual {v0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setIsFirstAttempt(Z)V

    .line 1242
    invoke-virtual {v0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSICheckerState(I)V

    .line 1243
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1247
    :cond_5
    const-string v2, "SCSLEAutoConnectHandler"

    const-string v3, "[CMSC] unset BR/EDR Connecting Flag....."

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {v2, p1, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1252
    const-string v2, "SCSLEAutoConnectHandler"

    const-string v3, "[CMAC] BluetoothStateChange - call connectLEDevice"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->connectLEDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0
.end method

.method private declared-synchronized processConnectionStateChangeResponse(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 298
    monitor-enter p0

    if-nez p1, :cond_1

    .line 299
    :try_start_0
    const-string v0, "SCSLEAutoConnectHandler"

    const-string v1, "[CMAC] BluetoothDevice instance is NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 303
    :cond_1
    :try_start_1
    const-string v0, "SCSLEAutoConnectHandler"

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

    .line 305
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->GATT_SUCCESS:I

    if-ne p2, v0, :cond_2

    .line 306
    const-string v0, "SCSLEAutoConnectHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC] onConnectionStateChange - LE connection successful : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 307
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->onConnectedGattCallback(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 311
    :cond_2
    if-nez p3, :cond_0

    .line 312
    :try_start_2
    const-string v0, "SCSLEAutoConnectHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC] onConnectionStateChange - LE disconnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->onDisconnectedGattCallback(Landroid/bluetooth/BluetoothDevice;)V
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
    .line 1358
    monitor-enter p0

    if-nez p1, :cond_1

    .line 1359
    :try_start_0
    const-string v1, "SCSLEAutoConnectHandler"

    const-string v2, "[CMAC] processRecovery - device is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1388
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1363
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1364
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_2

    .line 1365
    const-string v1, "SCSLEAutoConnectHandler"

    const-string v2, "[CMAC] processRecovery : deviceSet is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1358
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1369
    .restart local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1370
    const-string v1, "SCSLEAutoConnectHandler"

    const-string v2, "[CMAC] processRecovery : this device is not connected previously"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1374
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRecoveryFlag(Z)V

    .line 1375
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1376
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->disconnectAllProfile(Landroid/bluetooth/BluetoothDevice;)V

    .line 1378
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1379
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1381
    const-string v1, "SCSLEAutoConnectHandler"

    const-string v2, "[CMAC] Sending 6 second Delayed timer for LE connection"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 1385
    const-string v1, "SCSLEAutoConnectHandler"

    const-string v2, "[CMAC] wake start..."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

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
    .line 144
    if-nez p1, :cond_1

    .line 145
    const-string v0, "SCSLEAutoConnectHandler"

    const-string v1, "[CMAC] device is NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    if-nez v0, :cond_2

    .line 152
    const-string v0, "SCSLEAutoConnectHandler"

    const-string v1, "[CMAC] restartAutoConnection - WearableState is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    const-string v0, "SCSLEAutoConnectHandler"

    const-string v1, "[CMAC] start AutoConnection for service restart"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 160
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isContainDeviceSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 161
    const-string v0, "SCSLEAutoConnectHandler"

    const-string v1, "[CMAC] restartAutoConnection : putDeviceMacForACDeviceSet.."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putDeviceMacForACDeviceSet(Ljava/lang/String;)V

    .line 167
    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 168
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->connectLEDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 165
    :cond_3
    const-string v0, "SCSLEAutoConnectHandler"

    const-string v1, "restartAutoConnection - DeviceSet is already exist"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 171
    :cond_4
    const-string v0, "SCSLEAutoConnectHandler"

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

    .line 380
    monitor-enter p0

    if-nez p1, :cond_0

    .line 402
    :goto_0
    monitor-exit p0

    return v2

    .line 383
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 384
    .local v1, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v1, :cond_1

    .line 385
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] runBLEMonitorRssi : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 380
    .end local v1    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 389
    .restart local v1    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->getBLEGattInstance(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 390
    .local v0, "btGatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v0, :cond_2

    .line 391
    const-string v3, "SCSLEAutoConnectHandler"

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

    .line 392
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothGattFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothGattInterface;

    move-result-object v3

    invoke-interface {v3, v0, p2, p3, p4}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothGattInterface;->monitorRssi(Landroid/bluetooth/BluetoothGatt;III)Z

    move-result v2

    .line 397
    .local v2, "ret":Z
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSIVFlag(Z)V

    .line 398
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto :goto_0

    .line 401
    .end local v2    # "ret":Z
    :cond_2
    const-string v3, "SCSLEAutoConnectHandler"

    const-string v4, "[CMAC] runBLEMonitorRssi : btGatt is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private runBluetoothStateOffOn()V
    .locals 3

    .prologue
    .line 1143
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 1158
    :goto_0
    return-void

    .line 1145
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mTryAutoBTEnable:Z

    .line 1147
    :try_start_0
    const-string v1, "SCSLEAutoConnectHandler"

    const-string v2, "[CMAC] BT shutdown - BluetoothAdapter"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothAdapterFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothAdapterInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothAdapterInterface;->shutdown(Landroid/bluetooth/BluetoothAdapter;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-string v1, "SCSLEAutoConnectHandler"

    const-string v2, "[CMAC] BT disable - BluetoothAdapter"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0

    .line 1154
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 1155
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "SCSLEAutoConnectHandler"

    const-string v2, "[CMAC] BT disable - BluetoothAdapter"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method private startAutoConnection(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1167
    if-nez p1, :cond_1

    .line 1168
    const-string v0, "SCSLEAutoConnectHandler"

    const-string v1, "[CMAC] device is NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1173
    const-string v0, "SCSLEAutoConnectHandler"

    const-string v1, "[CMAC] startAutoConnection - WearableState is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1177
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 1178
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1179
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 1180
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 1183
    :cond_3
    const-string v0, "SCSLEAutoConnectHandler"

    const-string v1, "[CMAC] device address is not available"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1692
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1693
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1694
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1697
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;

    .line 1698
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
    .line 1268
    monitor-enter p0

    :try_start_0
    const-string v1, "SCSLEAutoConnectHandler"

    const-string v2, "[CMAC] disconnectBLEDevice to connect AG"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->getBLEGattInstance(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 1271
    .local v0, "btGatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v0, :cond_0

    .line 1272
    const-string v1, "SCSLEAutoConnectHandler"

    const-string v2, "[CMAC] call disconnect LE"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1275
    :cond_0
    monitor-exit p0

    return-void

    .line 1268
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

    .line 1560
    const-string v8, "SCSLEAutoConnectHandler"

    const-string v9, "[CMAC] enter sendCommandMessage working method"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    const-string v8, "AUTO_CONNECTION_STRING_STEP"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1565
    .local v7, "step":Ljava/lang/String;
    const-string v8, "ACTION_ACL_DISCONNECTED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1566
    const-string v8, "SCSLEAutoConnectHandler"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : ACTION_ACL_DISCONNECTED"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getExtraDisconnectionReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1570
    .local v3, "reason":I
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getExtraLinkType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1571
    .local v1, "linktype":I
    invoke-direct {p0, p1, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->checkLowLevelDisconnection(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1669
    .end local v1    # "linktype":I
    .end local v3    # "reason":I
    :cond_0
    :goto_0
    return-void

    .line 1574
    :cond_1
    const-string v8, "MSG_GATT_CONNECTION_STATE_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1575
    const-string v8, "SCSLEAutoConnectHandler"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : MSG_GATT_CONNECTION_STATE_CHANGE"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    const-string v8, "AUTO_CONNECTION_INT_GATT_STATE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1577
    .local v6, "status":I
    const-string v8, "AUTO_CONNECTION_INT_GATT_NEWSTATE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1578
    .local v2, "newState":I
    invoke-direct {p0, p1, v6, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->processConnectionStateChangeResponse(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 1581
    .end local v2    # "newState":I
    .end local v6    # "status":I
    :cond_2
    const-string v8, "MSG_MONITOR_RSSI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1582
    const-string v8, "SCSLEAutoConnectHandler"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : MSG_MONITOR_RSSI"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    const-string v8, "AUTO_CONNECTION_INT_MONITOR_RSSI"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1584
    .local v4, "rssi":I
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->checkMonitorForRssi(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 1587
    .end local v4    # "rssi":I
    :cond_3
    const-string v8, "ACTION_STATE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1588
    const-string v8, "SCSLEAutoConnectHandler"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : ACTION_STATE_CHANGED"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    const-string v8, "BUNDLE_CMKEY_INT_BLUETOOTHADAPTER_STATE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1590
    .local v5, "state":I
    invoke-direct {p0, p1, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->processBluetoothStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 1600
    .end local v5    # "state":I
    :cond_4
    const-string v8, "REQUEST_RECOVERY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1601
    const-string v8, "SCSLEAutoConnectHandler"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : REQUEST_RECOVERY"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    if-nez p1, :cond_5

    .line 1604
    const-string v8, "SCSLEAutoConnectHandler"

    const-string v9, "[CMAC] sendCommandMessage : Bluetooth device is null"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1608
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1609
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_6

    .line 1610
    const-string v8, "SCSLEAutoConnectHandler"

    const-string v9, "[CMAC] sendCommandMessage : deviceSet is null"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1615
    :cond_6
    const/4 v8, 0x3

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRSSICheckerState()I

    move-result v9

    if-ne v8, v9, :cond_7

    .line 1616
    const-string v8, "SCSLEAutoConnectHandler"

    const-string v9, "[CMAC] Recovery : request to recovery (BT OFF/ON)"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    invoke-virtual {v0, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRSSICheckerState(I)V

    .line 1618
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->runBluetoothStateOffOn()V

    .line 1619
    invoke-virtual {v0, v11}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setIsFirstAttempt(Z)V

    .line 1620
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto/16 :goto_0

    .line 1622
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRSSICheckerState()I

    move-result v8

    if-eq v11, v8, :cond_8

    const/4 v8, 0x2

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRSSICheckerState()I

    move-result v9

    if-ne v8, v9, :cond_9

    .line 1623
    :cond_8
    const-string v8, "SCSLEAutoConnectHandler"

    const-string v9, "[CMAC] Recovery : Skip Recovery(BT OFF/ON), Start Auto Connection "

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    invoke-virtual {v0, v10}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setIsFirstAttempt(Z)V

    .line 1626
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1627
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->initRetryCnt(Landroid/bluetooth/BluetoothDevice;)V

    .line 1628
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->processRecovery(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1630
    :cond_9
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRSSICheckerState()I

    move-result v8

    if-nez v8, :cond_0

    .line 1631
    const-string v8, "SCSLEAutoConnectHandler"

    const-string v9, "[CMAC] Recovery : recovery for first connection requestion.."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->initRetryCnt(Landroid/bluetooth/BluetoothDevice;)V

    .line 1634
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->processRecovery(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1639
    .end local v0    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_a
    const-string v8, "HFP_CONNECTION_FAIL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1640
    const-string v8, "SCSLEAutoConnectHandler"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : HFP_CONNECTION_FAIL"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    new-instance v8, Landroid/os/Handler;

    iget-object v9, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler$3;

    invoke-direct {v9, p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler$3;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1655
    :cond_b
    const-string v8, "RESTART_AUTO_CONNECT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1656
    const-string v8, "SCSLEAutoConnectHandler"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : RESTART_AUTO_CONNECT"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->restartAutoConnection(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1660
    :cond_c
    const-string v8, "STOP_AUTO_CONNECTION"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1661
    const-string v8, "SCSLEAutoConnectHandler"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : STOP_AUTO_CONNECTION"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->disconnectLE(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1665
    :cond_d
    const-string v8, "BLUETOOTH_STATE_OFF_ON"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1666
    const-string v8, "SCSLEAutoConnectHandler"

    const-string v9, "[CMAC] CMD_AUTO_CONNECT : BLUETOOTH_STATE_OFF_ON"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->runBluetoothStateOffOn()V

    goto/16 :goto_0
.end method
