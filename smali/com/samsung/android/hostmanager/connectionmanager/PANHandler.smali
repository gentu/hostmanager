.class public Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;
.super Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
.source "PANHandler.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private isWearableRequest:Z

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mbluetoothPan:Landroid/bluetooth/BluetoothPan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "PANHandler"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->mbluetoothPan:Landroid/bluetooth/BluetoothPan;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->isWearableRequest:Z

    .line 46
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;)Landroid/bluetooth/BluetoothPan;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->mbluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->mbluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;Landroid/bluetooth/BluetoothPan;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->initWearableState(Landroid/bluetooth/BluetoothPan;)V

    return-void
.end method

.method private initWearableState(Landroid/bluetooth/BluetoothPan;)V
    .locals 7
    .param p1, "bluetoothPan"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 71
    .local v1, "devicelist":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v1, :cond_1

    .line 83
    :cond_0
    return-void

    .line 73
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 74
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v2

    .line 75
    .local v2, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v2, :cond_2

    .line 77
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WS] Set already PAN connected device to Wearable State : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 78
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v4, v2, v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    goto :goto_0
.end method


# virtual methods
.method public initialize()V
    .locals 4

    .prologue
    .line 36
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->TAG:Ljava/lang/String;

    const-string v2, "initialize"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 40
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    sget v3, Lcom/samsung/android/reflectwrapper/BluetoothProfileWrap;->PAN:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 44
    :cond_0
    return-void
.end method

.method public isWearableRequest()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->isWearableRequest:Z

    return v0
.end method

.method public onCancelRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->onDisconnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public onConnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 97
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->TAG:Ljava/lang/String;

    const-string v5, "[jdub] PANHandler, onConnectRequested"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v3, 0x0

    .line 100
    .local v3, "result":Z
    const-string v2, ""

    .line 102
    .local v2, "errorMessage":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->mbluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-nez v4, :cond_2

    .line 103
    const-string v2, "BluetoothPan istance is null."

    .line 104
    const/4 v3, 0x0

    .line 126
    :cond_0
    :goto_0
    const-string v4, "BUNDLE_CMKEY_STRING_CALLER"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "caller":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, "WEARABLE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v6, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->configurePanResponse(ZLjava/lang/String;)V

    .line 134
    :cond_1
    return v3

    .line 106
    .end local v1    # "caller":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 107
    .local v0, "bDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->mbluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-nez v4, :cond_0

    .line 108
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->mbluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v4

    if-nez v4, :cond_3

    .line 110
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->mbluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v4, v6}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 112
    iput-boolean v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->isWearableRequest:Z

    .line 114
    const/4 v3, 0x1

    goto :goto_0

    .line 118
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->isWearableRequest:Z

    .line 121
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onConnectionEventReceived(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public onDisconnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 149
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->TAG:Ljava/lang/String;

    const-string v2, "[jdub] onDisconnectRequested"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->mbluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-nez v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->mbluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v1, p1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 160
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->mbluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 162
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public terminate()V
    .locals 3

    .prologue
    .line 88
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->TAG:Ljava/lang/String;

    const-string v2, "terminate"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 90
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 91
    sget v1, Lcom/samsung/android/reflectwrapper/BluetoothProfileWrap;->PAN:I

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->mbluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 93
    :cond_0
    return-void
.end method
