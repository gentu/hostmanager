.class public Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
.super Landroid/content/BroadcastReceiver;
.source "EventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;,
        Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;
    }
.end annotation


# static fields
.field private static final CONN_FAILED_TO_BE_EASTABLISHED:I = 0x3e

.field private static final LE_TYPE:I = 0x2

.field private static final MSG_SET_MANUAL_AUTO_LOCK_RSSI:Ljava/lang/String; = "com.sec.android.service.connectionmanager.action.MSG_SET_MANUAL_AUTO_LOCK_RSSI"

.field private static final MSG_WAIT_FOR_CM_GATTSERVICE_BINDING:Ljava/lang/String; = "com.sec.android.service.connectionmanager.action.MSG_WAIT_FOR_CM_GATTSERVICE_BINDING"

.field private static final MSG_WAIT_FOR_LE_DISCONNECT:Ljava/lang/String; = "com.samsung.ble.BleAutoConnectService.intent.action.MSG_WAIT_FOR_LE_DISCONNECT"

.field private static final PLUGIN_CHANGE:Ljava/lang/String; = "com.samsung.android.plugin.ACTION_PLUGIN_CHANGE_NOTI"

.field private static final PROCESS_INTENT_TIMER:I = 0xc8

.field private static TAG:Ljava/lang/String;


# instance fields
.field private ControlCallbackListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final EventHandler:Landroid/os/Handler;

.field private IS_FIRST_CONN_FAILED:Z

.field mAccessoryEventCallbackListener:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

.field private mAutoUnlockBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mAutoUnlockHandler:Landroid/os/Handler;

.field private mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

.field private mLeEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "EventHandler"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Z)V
    .locals 3
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .param p2, "enableLeEvent"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 63
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->IS_FIRST_CONN_FAILED:Z

    .line 65
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 68
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mLeEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    .line 70
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->ControlCallbackListeners:Ljava/util/HashMap;

    .line 178
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mAutoUnlockBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$2;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mAutoUnlockHandler:Landroid/os/Handler;

    .line 261
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$3;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->EventHandler:Landroid/os/Handler;

    .line 680
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mAccessoryEventCallbackListener:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    .line 80
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->ControlCallbackListeners:Ljava/util/HashMap;

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->registerReceiver()V

    .line 86
    if-eqz p2, :cond_0

    .line 87
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mLeEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    .line 90
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mPowerManager:Landroid/os/PowerManager;

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mAutoUnlockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->bluetoothAdapterActionStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->msgWaitForGattserviceBinding(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->bluetoothHeadsetActionConnectionStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->bluetoothPanActionConnectionStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->selfKillConnectionManager(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->networkConnectivityActionChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->processSetAutoLockRSSIEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Lcom/samsung/android/sdk/accessorymanager/SamDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
    .param p1, "x1"    # Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->sppAlreadyConnected(Lcom/samsung/android/sdk/accessorymanager/SamDevice;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/Bundle;
    .param p4, "x4"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->notifyEvent(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->bluetoothDeviceActionFound(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->bluetoothDeviceActionAclConnected(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->bluetoothDeviceActionAclDisconnected(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->bluetoothDeviceActionBondStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->bluetoothDeviceActionUuid(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->bluetoothAdapterActionDiscoveryFinished(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->bluetoothAdapterActionConnectionStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private bluetoothAdapterActionConnectionStateChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 460
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v1, "action : BluetoothAdapter.ACTION_CONNECTION_STATE_CHANGED"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v0, "CONNECTIONCONTROLLER"

    const/16 v1, 0x220

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->notifyEvent(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 464
    return-void
.end method

.method private bluetoothAdapterActionDiscoveryFinished(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 473
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v1, "action : BluetoothAdapter.ACTION_DISCOVERY_FINISHED"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v0, "DISCOVERYCONTROLLER"

    const/16 v1, 0x212

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->notifyEvent(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 476
    return-void
.end method

.method private bluetoothAdapterActionStateChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 437
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v1, "action : BluetoothAdapter.ACTION_STATE_CHANGED"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v0, "CONNECTIONCONTROLLER"

    const/16 v1, 0x219

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->notifyEvent(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 440
    return-void
.end method

.method private bluetoothDeviceActionAclConnected(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 571
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v4, "action : BluetoothDevice.ACTION_ACL_CONNECTED"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 575
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 576
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_ACL_CONNECTED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v2

    .line 578
    .local v2, "itemBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 579
    const-string v3, "BUNDLE_CMKEY_STRING_LINKSTATE"

    const-string v4, "CONNECTED"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v3, "CONNECTIONCONTROLLER"

    const/16 v4, 0x213

    invoke-direct {p0, v3, v4, v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->notifyEvent(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 583
    return-void
.end method

.method private bluetoothDeviceActionAclDisconnected(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 533
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v6, "action : BluetoothDevice.ACTION_ACL_DISCONNECTED"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 537
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 538
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v2

    .line 539
    .local v2, "itemBundle":Landroid/os/Bundle;
    const-string v5, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 540
    const-string v5, "BUNDLE_CMKEY_STRING_LINKSTATE"

    const-string v6, "DISCONNECTED"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getExtraDisconnectionReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 543
    .local v4, "reason":I
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getExtraLinkType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 544
    .local v3, "linkType":I
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "intent received : BluetoothDevice.ACTION_ACL_DISCONNECTED reason : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", linktype"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const/16 v5, 0x3e

    if-ne v5, v4, :cond_1

    const/4 v5, 0x2

    if-ne v5, v3, :cond_1

    .line 548
    iget-boolean v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->IS_FIRST_CONN_FAILED:Z

    if-ne v5, v9, :cond_0

    .line 549
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v6, "[CMAC] not running ACTION_ACL_DISCONNECTED 62,2 filter"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->i_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iput-boolean v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->IS_FIRST_CONN_FAILED:Z

    .line 560
    :goto_0
    const-string v5, "CONNECTIONCONTROLLER"

    const/16 v6, 0x213

    invoke-direct {p0, v5, v6, v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->notifyEvent(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 562
    :goto_1
    return-void

    .line 553
    :cond_0
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v6, "[CMAC] running ACTION_ACL_DISCONNECTED 62,2 filter"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->i_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 557
    :cond_1
    iput-boolean v9, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->IS_FIRST_CONN_FAILED:Z

    goto :goto_0
.end method

.method private bluetoothDeviceActionBondStateChanged(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 484
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v5, "action : BluetoothDevice.ACTION_BOND_STATE_CHANGED"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 488
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v5, -0x80000000

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 489
    .local v0, "bondState":I
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 490
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v3

    .line 491
    .local v3, "deviceBundle":Landroid/os/Bundle;
    const-string v4, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 493
    packed-switch v0, :pswitch_data_0

    .line 511
    :goto_0
    const-string v4, "CONNECTIONCONTROLLER"

    const/16 v5, 0x216

    invoke-direct {p0, v4, v5, v1, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->notifyEvent(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 512
    return-void

    .line 495
    :pswitch_0
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v5, "BOND_STATE_CHANGED: BOND_NONE"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v4, "BUNDLE_CMKEY_STRING_BONDSTATE"

    const-string v5, "NONE"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :pswitch_1
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v5, "BOND_STATE_CHANGED: BOND_BONDING"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v4, "BUNDLE_CMKEY_STRING_BONDSTATE"

    const-string v5, "BONDING"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :pswitch_2
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v5, "BOND_STATE_CHANGED: BOND_BONDED"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v4, "BUNDLE_CMKEY_STRING_BONDSTATE"

    const-string v5, "BONDED"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private bluetoothDeviceActionFound(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 591
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v9, "action : BluetoothDevice.ACTION_FOUND"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 596
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, "addedDevice":Ljava/lang/String;
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->UNKOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->name()Ljava/lang/String;

    move-result-object v6

    .line 599
    .local v6, "linkfeature":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mLeEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    if-eqz v8, :cond_0

    .line 600
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mLeEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    invoke-static {v8, v3}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;->access$1700(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    .line 604
    :cond_0
    const-string v8, "android.bluetooth.device.extra.RSSI"

    const/16 v9, -0x8000

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v7

    .line 605
    .local v7, "rssi":I
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Added Device(BT): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "db"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v8, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothClass;

    .line 609
    .local v0, "ClassOfDevice":Landroid/bluetooth/BluetoothClass;
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isWearable(Landroid/bluetooth/BluetoothClass;)Z

    move-result v4

    .line 611
    .local v4, "isWearableDevice":Z
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 612
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v5

    .line 613
    .local v5, "itemBundle":Landroid/os/Bundle;
    const-string v8, "BUNDLE_INT_RSSI"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 614
    const-string v8, "BUNDLE_STRING_LINKFEATURE"

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v8, "BUNDLE_BOOLEAN_WEARABLECODE"

    invoke-virtual {v5, v8, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 616
    const-string v8, "BUNDLE_INT_COD"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->hashCode()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 617
    const-string v8, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 620
    const-string v8, "DISCOVERYCONTROLLER"

    const/16 v9, 0x211

    invoke-direct {p0, v8, v9, v2, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->notifyEvent(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 621
    return-void
.end method

.method private bluetoothDeviceActionUuid(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 515
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v4, "action : BluetoothDevice.ACTION_UUID"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 519
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 520
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v2

    .line 521
    .local v2, "deviceBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 523
    const-string v3, "CONNECTIONCONTROLLER"

    const/16 v4, 0x225

    invoke-direct {p0, v3, v4, v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->notifyEvent(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 524
    return-void
.end method

.method private bluetoothHeadsetActionConnectionStateChanged(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 370
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v5, "action : BluetoothHeadset.ACTION_CONNECTION_STATE_CHANGED"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 373
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 374
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 376
    .local v2, "prevState":I
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 379
    .local v3, "state":I
    const-string v4, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    .line 380
    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v5

    .line 379
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 381
    const-string v4, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v4, "BUNDLE_CMKEY_STRING_PREVIOUS_SERVICESTATE"

    .line 383
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->getConnectionState(I)Ljava/lang/String;

    move-result-object v5

    .line 382
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v4, "BUNDLE_CMKEY_STRING_SERVICESTATE"

    invoke-direct {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->getConnectionState(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MULTICONNECTION] HFP state changed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 387
    invoke-direct {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->getConnectionState(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/ device name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->getConnectedBTAliasName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 386
    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v4, "SERVICECONTROLLER"

    const/16 v5, 0x215

    invoke-direct {p0, v4, v5, v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->notifyEvent(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 390
    return-void
.end method

.method private bluetoothPanActionConnectionStateChanged(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 346
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v4, "[jdub] action : BluetoothPan.ACTION_CONNECTION_STATE_CHANGED"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 352
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 354
    .local v2, "state":I
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    .line 355
    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v4

    .line 354
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 356
    const-string v3, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v3, "BUNDLE_CMKEY_STRING_SERVICESTATE"

    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->getConnectionState(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[jdub] PAN state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v3, "SERVICECONTROLLER"

    const/16 v4, 0x215

    invoke-direct {p0, v3, v4, v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->notifyEvent(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 362
    return-void
.end method

.method private getConnectedBTAliasName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "BTAddress"    # Ljava/lang/String;

    .prologue
    .line 393
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 394
    .local v2, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v2, :cond_0

    .line 395
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 397
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getAliasName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 401
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConnectionState(I)Ljava/lang/String;
    .locals 1
    .param p1, "bluetoothState"    # I

    .prologue
    .line 624
    packed-switch p1, :pswitch_data_0

    .line 638
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 626
    :pswitch_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 629
    :pswitch_1
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 632
    :pswitch_2
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 635
    :pswitch_3
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static isEngBuild()Z
    .locals 3

    .prologue
    .line 1570
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build.Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private msgWaitForGattserviceBinding(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 410
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v1, "action : MSG_WAIT_FOR_CM_GATTSERVICE_BINDING"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v0, "CONNECTIONCONTROLLER"

    const/16 v1, 0x218

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->notifyEvent(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 414
    return-void
.end method

.method private networkConnectivityActionChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 449
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v1, "action : ConnectivityManager.CONNECTIVITY_ACTION"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v0, "CONNECTIONCONTROLLER"

    const/16 v1, 0x230

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->notifyEvent(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 452
    return-void
.end method

.method private notifyEvent(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V
    .locals 3
    .param p1, "controlType"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 234
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->ControlCallbackListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;

    .line 236
    .local v0, "listener":Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;
    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0, p2, p3, p4}, Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;->onReceivedEvent(ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 240
    :goto_0
    return-void

    .line 239
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v2, "ControlCallback listener is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processSetAutoLockRSSIEvent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 423
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->isEngBuild()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 425
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v1, "processSetAutoLockRSSIEvent , send notification to Service Controller"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v0, "SERVICECONTROLLER"

    const/16 v1, 0x244

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->notifyEvent(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 429
    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 6

    .prologue
    .line 136
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v2, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v2, "com.samsung.ble.BleAutoConnectService.intent.action.MSG_WAIT_FOR_LE_DISCONNECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v2, "com.sec.android.service.connectionmanager.action.MSG_WAIT_FOR_CM_GATTSERVICE_BINDING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v2, "com.samsung.android.plugin.ACTION_PLUGIN_CHANGE_NOTI"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v2, "com.sec.android.service.connectionmanager.action.MSG_SET_MANUAL_AUTO_LOCK_RSSI"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2, p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isAdminUser(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSmartLockSupport(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v3, " kitkat or less Version OR china model. Enable auto lock feature !"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    .local v0, "autoUnlockIntentFilter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getRssiOutOfRangeAlert()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getRssiInRangeAlert()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mAutoUnlockBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.sec.android.permission.SMART_UNLOCK"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 176
    .end local v0    # "autoUnlockIntentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 174
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v3, "lollipop or more Version. Disable auto lock feature !"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private selfKillConnectionManager(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 649
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v1, "action : com.samsung.android.plugin.ACTION_PLUGIN_CHANGE_NOTI"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v0, "CONNECTIONMANAGER"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->notifyEvent(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 652
    return-void
.end method

.method private sppAlreadyConnected(Lcom/samsung/android/sdk/accessorymanager/SamDevice;I)V
    .locals 6
    .param p1, "device"    # Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    .param p2, "reason"    # I

    .prologue
    .line 655
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 656
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 657
    .local v1, "itemBundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v2

    .line 659
    .local v2, "transportType":I
    const-string v3, "BUNDLE_STRING_ADDRESS"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v3, "BUNDLE_STRING_NAME"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v3, "BUNDLE_STRING_BONDSTATE"

    const-string v4, "BONDED"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 664
    const/4 v3, 0x2

    if-ne v3, v2, :cond_0

    .line 665
    const-string v3, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :goto_0
    const-string v3, "BUNDLE_CMKEY_STRING_SERVICESTATE"

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v3, "RECONNECTION_STRING_STEP"

    const-string v4, "MSG_SAACCESSORY_CONNECT"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v3, "SERVICECONTROLLER"

    const/16 v4, 0x215

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->notifyEvent(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 675
    return-void

    .line 667
    :cond_0
    const-string v3, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    return-void
.end method


# virtual methods
.method public declared-synchronized acquireWakeLock(J)V
    .locals 5
    .param p1, "timeout"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    .line 1576
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireWakeLock starts, wakeLock ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with timeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mSecs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1578
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 1579
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v2, "acquireWakeLock: mWakeLock.acquire() called"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1585
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v2, "acquireWakeLock ends"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1586
    monitor-exit p0

    return-void

    .line 1582
    :catch_0
    move-exception v0

    .line 1583
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while acquiring WakeLock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1576
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAccessoryEventCallback()Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mAccessoryEventCallbackListener:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    return-object v0
.end method

.method public getGattCallback()Landroid/bluetooth/BluetoothGattCallback;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mLeEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mLeEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;->mGattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    .line 109
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLeScanCallback()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mLeEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mLeEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$LeEventHandler;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 245
    if-eqz p2, :cond_0

    .line 246
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "action":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent msg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .end local v0    # "action":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v3, "EventHandler : onReceive().."

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->acquireWakeLock(J)V

    .line 256
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 257
    .local v1, "msg":Landroid/os/Message;
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 258
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->EventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    return-void

    .line 249
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v3, "intent is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerCallback(Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;
    .param p2, "controlType"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->ControlCallbackListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public declared-synchronized releaseWakeLock()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    .line 1590
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseWakeLock starts, wakeLock ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1592
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 1593
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1595
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v2, "releaseWakeLock: mWakeLock.release() called"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1602
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    const-string v2, "releaseWakeLock ends"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1603
    monitor-exit p0

    return-void

    .line 1599
    :catch_0
    move-exception v0

    .line 1600
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while releasing WakeLock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1590
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public terminate()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->unregisterReceiver()V

    .line 96
    return-void
.end method
