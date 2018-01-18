.class public Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;
.super Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;
.source "StandardAutoConnectHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StandardAutoConnectHandler"

.field private static mLocker:Ljava/lang/Object;

.field private static pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;


# instance fields
.field private mTryAutoBTEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->mLocker:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 2
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;-><init>()V

    .line 45
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 46
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 48
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 50
    const-string v0, "StandardAutoConnectHandler"

    const-string v1, "[CMAC OTHER] Sorry! Bluetooth is not supported in this device"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

.method private checkLowLevelDisconnection(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reason"    # I
    .param p3, "linkType"    # I

    .prologue
    .line 85
    if-nez p1, :cond_1

    .line 86
    const-string v2, "StandardAutoConnectHandler"

    const-string v3, "[CMAC] Device is NULL"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string v2, "StandardAutoConnectHandler"

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

    .line 94
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->LE_LINK_TYPE:I

    if-ne v2, p3, :cond_2

    .line 95
    const-string v2, "StandardAutoConnectHandler"

    const-string v3, "[CMAC] nothing to do with LE"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 100
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_3

    .line 101
    const-string v2, "StandardAutoConnectHandler"

    const-string v3, "[CMAC] checkLowLevelDisconnection : deviceSet is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_3
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->BREDR_LINK_TYPE:I

    if-ne p3, v2, :cond_7

    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->REASON_LINK_LOSS:I

    if-ne p2, v2, :cond_7

    .line 110
    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 111
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    .line 112
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 114
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v1

    .line 116
    .local v1, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    const-string v2, "StandardAutoConnectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] BR/EDR link loss, start prev Autoconnection Handler with device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 120
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isScsPreference(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_5

    .line 121
    const-string v2, "StandardAutoConnectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] SCS preference is true. try to Connect SCS for device  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->isEnableSCSServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 125
    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->connectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto/16 :goto_0

    .line 128
    :cond_4
    const-string v2, "StandardAutoConnectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] SCS is in enabling state already.   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :cond_5
    const-string v2, "StandardAutoConnectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] SCS preference is false. Dont Connect SCS for device  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    .end local v1    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_6
    const-string v2, "StandardAutoConnectHandler"

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

    .line 140
    :cond_7
    const-string v2, "StandardAutoConnectHandler"

    const-string v3, "[CMAC] Auto Connection is not working as suitable ACL_DISCONNECT reason"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private connectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    const-string v2, "StandardAutoConnectHandler"

    const-string v3, "connect SCS device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 212
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 215
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 216
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v2, "StandardAutoConnectHandler"

    const-string v3, "[CMAC] connection with SCS"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static getInstance(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;
    .locals 2
    .param p0, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const-string v0, "StandardAutoConnectHandler"

    const-string v1, "[CMAC OTHER] StandardAutoConnectHandler - Sorry! ConnectionManager instance is null!!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 34
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;

    if-nez v0, :cond_2

    .line 35
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;

    .line 39
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_2
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isEnableSCSServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 231
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v0

    .line 232
    .local v0, "state":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    :cond_0
    const-string v1, "StandardAutoConnectHandler"

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

    .line 234
    const/4 v1, 0x1

    .line 237
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processBluetoothStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/16 v3, 0xc

    .line 153
    const/16 v1, 0xa

    if-ne p2, v1, :cond_4

    .line 154
    const-string v1, "StandardAutoConnectHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMAC OTHER] BlueTooth State is set OFF : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->mTryAutoBTEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->mTryAutoBTEnable:Z

    if-eqz v1, :cond_1

    .line 158
    const-string v1, "StandardAutoConnectHandler"

    const-string v2, "[CMAC-OTHER] Let replace Bluetooth STATE-OFF with STATE-ON (STATE-OFF -> STATE-ON)"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->mTryAutoBTEnable:Z

    .line 161
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const-string v1, "StandardAutoConnectHandler"

    const-string v2, "[CMAC] this BT STATE_OFF is not the Routine by BT recovery logic"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v0

    .line 169
    .local v0, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v0, :cond_0

    .line 170
    const-string v1, "StandardAutoConnectHandler"

    const-string v2, "[CMAC] go to the SCS connection logic"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isScsPreference(Ljava/lang/String;)Z

    move-result v2

    if-ne v1, v2, :cond_3

    .line 172
    const-string v1, "StandardAutoConnectHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMAC] SCS preference is true. try to Connect SCS for device  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->isEnableSCSServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->connectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto :goto_0

    .line 178
    :cond_2
    const-string v1, "StandardAutoConnectHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMAC] SCS is in enabling state already.   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_3
    const-string v1, "StandardAutoConnectHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMAC] SCS preference is false. Dont Connect SCS for device  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 187
    .end local v0    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_4
    if-ne p2, v3, :cond_0

    .line 188
    const-string v1, "StandardAutoConnectHandler"

    const-string v2, "[CMAC OTHER] change BlueTooth State(STATE-ON)"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 192
    const-string v1, "StandardAutoConnectHandler"

    const-string v2, "[CMAC OTHER] BluetoothStateChange - call connect fot Profile"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->connectAllProfile(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0
.end method

.method private startAutoConnection(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    const-string v0, "StandardAutoConnectHandler"

    const-string v1, "[CMAC OTHER] device is NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    if-nez v0, :cond_1

    .line 67
    const-string v0, "StandardAutoConnectHandler"

    const-string v1, "[CMAC OTHER] startAutoConnection - WearableState is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 72
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->connectAllProfile(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 75
    :cond_2
    const-string v0, "StandardAutoConnectHandler"

    const-string v1, "[CMAC OTHER] device address is not available"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->pInstance:Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;

    .line 294
    return-void
.end method

.method public sendCommandMessage(Landroid/bluetooth/BluetoothDevice;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 243
    const-string v4, "StandardAutoConnectHandler"

    const-string v5, "[CMAC OTHER] enter sendCommandMessage working method"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v4, "AUTO_CONNECTION_STRING_STEP"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "step":Ljava/lang/String;
    const-string v4, "ACTION_ACL_DISCONNECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 249
    const-string v4, "StandardAutoConnectHandler"

    const-string v5, "[CMAC] CMD_AUTO_CONNECT : ACTION_ACL_DISCONNECTED"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getExtraDisconnectionReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 253
    .local v1, "reason":I
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getExtraLinkType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 254
    .local v0, "linktype":I
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->checkLowLevelDisconnection(Landroid/bluetooth/BluetoothDevice;II)V

    .line 286
    .end local v0    # "linktype":I
    .end local v1    # "reason":I
    :cond_0
    :goto_0
    const-string v4, "StandardAutoConnectHandler"

    const-string v5, "[CMAC OTHER] AutoConnection is not working..this state is not Support"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void

    .line 257
    :cond_1
    const-string v4, "ACTION_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 258
    const-string v4, "StandardAutoConnectHandler"

    const-string v5, "[CMAC OTHER] CMD_AUTO_CONNECT : ACTION_STATE_CHANGED"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v4, "BUNDLE_CMKEY_INT_BLUETOOTHADAPTER_STATE"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 260
    .local v2, "state":I
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->processBluetoothStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 262
    .end local v2    # "state":I
    :cond_2
    const-string v4, "REQUEST_RECOVERY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 263
    const-string v4, "StandardAutoConnectHandler"

    const-string v5, "[CMAC] CMD_AUTO_CONNECT : REQUEST_RECOVERY"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v4, "StandardAutoConnectHandler"

    const-string v5, "[CMAC] recovery is finish"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_3
    const-string v4, "HFP_CONNECTION_FAIL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 270
    const-string v4, "StandardAutoConnectHandler"

    const-string v5, "[CMAC] CMD_AUTO_CONNECT : HFP connection fail (connecting -> disconnected"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v4, "StandardAutoConnectHandler"

    const-string v5, "[CMAC] recovery is finish"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_4
    const-string v4, "STOP_AUTO_CONNECTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 277
    const-string v4, "StandardAutoConnectHandler"

    const-string v5, "[CMAC OTHER] CMD_AUTO_CONNECT : STOP_AUTO_CONNECTION"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_5
    const-string v4, "RESTART_AUTO_CONNECT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    const-string v4, "StandardAutoConnectHandler"

    const-string v5, "[CMAC OTHER] CMD_AUTO_CONNECT : RESTART_AUTO_CONNECT"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/StandardAutoConnectHandler;->startAutoConnection(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method
