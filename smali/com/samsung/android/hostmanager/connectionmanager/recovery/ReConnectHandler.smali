.class public Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;
.super Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;
.source "ReConnectHandler.java"


# static fields
.field private static final MSG_SCS_RETRY_CONNECT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ReConnectHandler"

.field private static pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;


# instance fields
.field private final mRetryHandler:Landroid/os/Handler;

.field private final mSCSRetryHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;-><init>()V

    .line 372
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mRetryHandler:Landroid/os/Handler;

    .line 408
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler$2;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mSCSRetryHandler:Landroid/os/Handler;

    .line 32
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->initSppRecoveryTryCnt()V

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->initScsRecoveryTryCnt()V

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->initSCSdelay()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->requestSppConnection(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->requestSCSConnection(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static getInstance(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;
    .locals 2
    .param p0, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 42
    const-string v0, "ReConnectHandler"

    const-string v1, "[RECOVERY] ReConnectHandler - Sorry! ConnectionManager instance is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 47
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;

    .line 51
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;

    goto :goto_0
.end method

.method private notifyAccessoryFrameworkIncompatibleEvent()V
    .locals 3

    .prologue
    .line 215
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "BUNDLE_CMKEY_STRING_ERRORCODE"

    const-string v2, "ACCESSORY_FRAMEWORK_INCOMPATIBLE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v2, 0x224

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->publishEvent(ILandroid/os/Bundle;)V

    .line 221
    :cond_0
    return-void
.end method

.method private processSAPDisconnect(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reason"    # I

    .prologue
    .line 224
    if-nez p1, :cond_1

    .line 225
    const-string v0, "ReConnectHandler"

    const-string v1, "[RECOVERY] processSAPError : device is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    const-string v0, "ReConnectHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC] CMD_AUprocessSAPDisconnect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/16 v0, 0x100

    if-ne p2, v0, :cond_2

    .line 232
    const-string v0, "ReConnectHandler"

    const-string v1, "[RECOVERY] processSAPDisconnect : SamAccessoryManager.ACCESSORY_DISCONNECTED_PACKET_CORRUPTION"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->requestSppConnection(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 238
    :cond_2
    const/16 v0, 0x102

    if-ne p2, v0, :cond_0

    .line 240
    const-string v0, "ReConnectHandler"

    const-string v1, "[RECOVERY] processSAPDisconnect : SamAccessoryManager.ACCESSORY_DISCONNECTED_NETWORK_FAILURE"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->requestSCSConnection(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method private processSAPError(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reason"    # I

    .prologue
    .line 55
    if-nez p1, :cond_1

    .line 56
    const-string v0, "ReConnectHandler"

    const-string v1, "[RECOVERY] processSAPError : device is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string v0, "ReConnectHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC] CMD_AUprocessSAPError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const v0, -0x5ffffff9

    if-ne p2, v0, :cond_2

    .line 64
    const-string v0, "ReConnectHandler"

    const-string v1, "[RECOVERY] processSAPError : ERROR_SOCKET_CONNECT_FAILED"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->requestRecovery(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)V

    goto :goto_0

    .line 68
    :cond_2
    const v0, -0x5ffffffb

    if-ne p2, v0, :cond_3

    .line 70
    const-string v0, "ReConnectHandler"

    const-string v1, "[RECOVERY] processSAPError : ERROR_SOCKET_CREATION_FAILED"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->requestRecovery(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)V

    goto :goto_0

    .line 74
    :cond_3
    const v0, -0x5ffffff4

    if-ne p2, v0, :cond_4

    .line 76
    const-string v0, "ReConnectHandler"

    const-string v1, "[RECOVERY] processSAPError : ERROR_SOCKET_READ_WRITE_FAILED"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->requestRecovery(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)V

    goto :goto_0

    .line 80
    :cond_4
    const v0, -0x5ffffff8

    if-ne p2, v0, :cond_5

    .line 82
    const-string v0, "ReConnectHandler"

    const-string v1, "[RECOVERY] processSAPError : ERROR_SOCKET_CLOSE_FAILED"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->requestRecovery(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)V

    goto :goto_0

    .line 86
    :cond_5
    const v0, -0x6fffffeb

    if-ne p2, v0, :cond_6

    .line 88
    const-string v0, "ReConnectHandler"

    const-string v1, "[RECOVERY] processSAPError : ERROR_ACCESSORY_NOT_PAIRED"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "ReConnectHandler"

    const-string v1, "[RECOVERY] processSAPError : Waiting bonded event..."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->removeAdapterBondedDevice(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :cond_6
    const v0, -0x5ffffff3

    if-ne p2, v0, :cond_7

    .line 98
    const-string v0, "ReConnectHandler"

    const-string v1, "[RECOVERY] processSAPError : ERROR_ACCESSORY_FRAMEWORK_INCOMPATIBLE, notify to app!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->notifyAccessoryFrameworkIncompatibleEvent()V

    goto/16 :goto_0

    .line 103
    :cond_7
    const v0, -0x6ffffff1

    if-ne p2, v0, :cond_8

    .line 106
    const-string v0, "ReConnectHandler"

    const-string v1, "[RECOVERY] processSAPError : ERROR_ACCESSORY_ALREADY_CONNECTED, ignore!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_8
    const v0, -0x6ffffff0

    if-ne p2, v0, :cond_9

    .line 112
    const-string v0, "ReConnectHandler"

    const-string v1, "[RECOVERY] processSAPError : ERROR_ACCESSORY_NOT_CONNECTED, ignore!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :cond_9
    const v0, -0x6fffffed

    if-ne p2, v0, :cond_a

    .line 118
    const-string v0, "ReConnectHandler"

    const-string v1, "[RECOVERY] processSAPError : ERROR_OPERATION_IN_PROGRESS, ignore!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_a
    const v0, -0x4fffffff

    if-ne p2, v0, :cond_b

    .line 125
    const-string v0, "ReConnectHandler"

    const-string v1, "[RECOVERY] processSAPError : ERROR_SCS_ACCOUNT_INITIALIZATION_FAILED, retry!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->requestRecovery(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)V

    goto/16 :goto_0

    .line 129
    :cond_b
    const v0, -0x4ffffffa

    if-ne p2, v0, :cond_c

    .line 131
    const-string v0, "ReConnectHandler"

    const-string v1, "[RECOVERY] processSAPError : ERROR_SCS_CONNECTION_SERVER_FAILED, retry!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->requestRecovery(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)V

    goto/16 :goto_0

    .line 136
    :cond_c
    const v0, -0x4ffffff9

    if-ne p2, v0, :cond_d

    .line 138
    const-string v0, "ReConnectHandler"

    const-string v1, "[RECOVERY] processSAPError : ERROR_SCS_CONNECTION_PEER_FAILED, retry!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->requestRecovery(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)V

    goto/16 :goto_0

    .line 140
    :cond_d
    const v0, -0x3fffffff    # -2.0000002f

    if-ne p2, v0, :cond_0

    .line 142
    const-string v0, "ReConnectHandler"

    const-string v1, "[RECOVERY] processSAPError : ERROR_ANOTHER_TRANSPORT_TYPE_STILL_ACTIVE, disconnect SCS is done already & retry SPP!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->requestRecovery(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)V

    goto/16 :goto_0
.end method

.method private requestBluetoothStateChange(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 254
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 255
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 257
    :cond_0
    const-string v4, "ReConnectHandler"

    const-string v5, "[CMAC][RETRY] BT OFF - Recovery will not be started"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_0
    return-void

    .line 261
    :cond_1
    new-instance v3, Lcom/sec/android/api/iface/CVMessage;

    invoke-direct {v3}, Lcom/sec/android/api/iface/CVMessage;-><init>()V

    .line 262
    .local v3, "mMessage":Lcom/sec/android/api/iface/CVMessage;
    const/16 v4, 0x17

    invoke-virtual {v3, v4}, Lcom/sec/android/api/iface/CVMessage;->setCmdID(I)V

    .line 263
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/android/api/iface/CVMessage;->setMsgType(I)V

    .line 265
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 267
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v2

    .line 268
    .local v2, "itemBundle":Landroid/os/Bundle;
    const-string v4, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 269
    const-string v4, "AUTO_CONNECTION_STRING_STEP"

    const-string v5, "REQUEST_RECOVERY"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v3, v1}, Lcom/sec/android/api/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 271
    const-string v4, "ReConnectHandler"

    const-string v5, "[RECOVERY] request to recovery"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->requestMessage(Lcom/sec/android/api/iface/CVMessage;)V

    goto :goto_0
.end method

.method private requestRecovery(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "service"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .prologue
    const/16 v5, 0x3e8

    .line 151
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 153
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnectionFlag()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {p2, v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {p2, v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const-string v2, "ReConnectHandler"

    const-string v3, "Already AutoConnection is in progress. Do not start new SPP connection request."

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->initSppRecoveryTryCnt()V

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->isMaxRecovertTryCnt(Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 166
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {p2, v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    const-string v2, "ReConnectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RECOVERY] retry fail..start recovery! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->getSppRecoveryTryCnt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 173
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->requestBluetoothStateChange(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 175
    :cond_3
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {p2, v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    const-string v2, "ReConnectHandler"

    const-string v3, "[RECOVERY] Max retries of SCS recovery reached."

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->initScsRecoveryTryCnt()V

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->initSCSdelay()V

    .line 182
    const-string v2, "ReConnectHandler"

    const-string v3, "[RECOVERY] Retry count and SCSdelay are reset."

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_4
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {p2, v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 190
    const-string v2, "ReConnectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RECOVERY] Retry to spp connection! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->getSppRecoveryTryCnt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 193
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 194
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mRetryHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 196
    .end local v1    # "msg":Landroid/os/Message;
    :cond_5
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {p2, v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    const-string v2, "ReConnectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RECOVERY] Retry to scs connection! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->getScsRecoveryTryCnt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->increaseSCSdelay()V

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->increaseScsRecoveryTryCnt()V

    .line 205
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mSCSRetryHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mSCSRetryHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 208
    .restart local v1    # "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 209
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mSCSRetryHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->getSCSdelay()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method private requestSCSConnection(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 279
    const-string v2, "ReConnectHandler"

    const-string v3, "connect SCS device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :goto_0
    return-void

    .line 283
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 285
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 286
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 287
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v2, "ReConnectHandler"

    const-string v3, "[CMAC] connection with SCS"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private requestSppConnection(Landroid/bluetooth/BluetoothDevice;)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 301
    const-string v5, "ReConnectHandler"

    const-string v6, "[RECOVERY][RETRY] request Spp Connection"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    if-nez p1, :cond_0

    .line 304
    const-string v5, "ReConnectHandler"

    const-string v6, "[RECOVERY][RETRY] device list is null"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getWaitingConnectionInfo()Ljava/util/HashMap;

    move-result-object v0

    .line 312
    .local v0, "WaitingConnectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "address":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 315
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 316
    const-string v5, "ReConnectHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestSppConnection: device is not in waiting connection map, do not connect spp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->initSppRecoveryTryCnt()V

    goto :goto_0

    .line 322
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v4

    .line 328
    .local v4, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isBonded(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 329
    const-string v5, "ReConnectHandler"

    const-string v6, "[RECOVERY][RETRY] No Error Retry for unbonded device"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 334
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v3

    .line 335
    .local v3, "itemBundle":Landroid/os/Bundle;
    const-string v5, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 336
    const-string v5, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v6, 0x15

    invoke-virtual {v5, v6, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public clearScsRetryMessages()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mSCSRetryHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 403
    const-string v0, "ReConnectHandler"

    const-string v1, "clearScsRetryMessages"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->mSCSRetryHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 441
    return-void
.end method

.method public sendCommandMessage(Landroid/bluetooth/BluetoothDevice;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 345
    const-string v2, "ReConnectHandler"

    const-string v3, "[RECOVERY] CMD_RECONNECT : sendCommandMessage : ReConnectHandler.java"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v2, "RECONNECTION_STRING_STEP"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "step":Ljava/lang/String;
    const-string v2, "MSG_SAACCESSORY_DISCONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    const-string v2, "BUNDLE_CMKEY_STRING_SAACCESSORY_DISCONNECT_REASON"

    .line 350
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 351
    .local v0, "reason":I
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->processSAPDisconnect(Landroid/bluetooth/BluetoothDevice;I)V

    .line 369
    .end local v0    # "reason":I
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    const-string v2, "MSG_SAACCESSORY_CONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    const-string v2, "MSG_SAACCESSORY_ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    const-string v2, "ReConnectHandler"

    const-string v3, "[RECOVERY] CMD_RECONNECT : MSG_SAACCESSORY_ERROR"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v2, "BUNDLE_CMKEY_STRING_SAACCESSORY_ERROR_REASON"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 358
    .restart local v0    # "reason":I
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->processSAPError(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 359
    .end local v0    # "reason":I
    :cond_2
    const-string v2, "INIT_RECOVERY_RETRY_CNT_SPP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 360
    const-string v2, "ReConnectHandler"

    const-string v3, "[RECOVERY] init Recovery Retry Count for SPP"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->initSppRecoveryTryCnt()V

    goto :goto_0

    .line 362
    :cond_3
    const-string v2, "INIT_RECOVERY_RETRY_CNT_SCS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    const-string v2, "ReConnectHandler"

    const-string v3, "[RECOVERY] init Recovery Retry Count for SCS"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->initScsRecoveryTryCnt()V

    .line 365
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->initSCSdelay()V

    .line 366
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->clearScsRetryMessages()V

    goto :goto_0
.end method
