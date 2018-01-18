.class public Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;
.super Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;
.source "ConnectionController.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionReqeustTask;,
        Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;
    }
.end annotation


# static fields
.field private static final DEFAULT_LE_SCAN_INTERVAL:I = 0xffff

.field private static final DEFAULT_LE_SCAN_WINDOW:I = 0xffff

.field private static PACKAGE_NAME:Ljava/lang/String;

.field private static SAP_UUID:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field protected LE_LINK_TYPE:I

.field private RecoveryFlag:Z

.field private mAutoConnectionHandler:Landroid/os/Handler;

.field mAutoConnectionRunner:Ljava/lang/Runnable;

.field private mBtShutDownFlag:Z

.field private mConnectionRequestHandler:Landroid/os/Handler;

.field private mConnectionRequestTask:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionReqeustTask;

.field private mConntionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

.field private mCreateBondFlag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDataExchangeEventListener:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$IDataExchangeEventListener;

.field private mDelayedNotifyHandler:Landroid/os/Handler;

.field private mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

.field private mForcePairingFlagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPrevBleACServiceAvailable:Z

.field private mPolicyDecision:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

.field private mRecoveryHandler:Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "ConnectionController"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    .line 62
    const-string v0, "com.samsung.ble.BleAutoConnectService"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->PACKAGE_NAME:Ljava/lang/String;

    .line 76
    const-string v0, "a49eb41e-cb06-495c-9f4f-bb80a90cdf00"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->SAP_UUID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 3
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    .line 54
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .line 56
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->RecoveryFlag:Z

    .line 58
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mBtShutDownFlag:Z

    .line 64
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mRecoveryHandler:Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

    .line 66
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mPolicyDecision:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    .line 68
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConntionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mAutoConnectionHandler:Landroid/os/Handler;

    .line 74
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mIsPrevBleACServiceAvailable:Z

    .line 82
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConnectionRequestHandler:Landroid/os/Handler;

    .line 84
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mDelayedNotifyHandler:Landroid/os/Handler;

    .line 86
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConnectionRequestTask:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionReqeustTask;

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->LE_LINK_TYPE:I

    .line 146
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mAutoConnectionRunner:Ljava/lang/Runnable;

    .line 473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mCreateBondFlag:Ljava/util/HashMap;

    .line 533
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$2;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mDataExchangeEventListener:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$IDataExchangeEventListener;

    .line 2196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mForcePairingFlagMap:Ljava/util/HashMap;

    .line 92
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConntionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getEventHandler()Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    const-string v1, "CONNECTIONCONTROLLER"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->registerCallback(Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->getInstance()Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mPolicyDecision:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    .line 96
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConntionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->getInstance(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mRecoveryHandler:Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConnectionRequestHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionReqeustTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionReqeustTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConnectionRequestTask:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionReqeustTask;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mDelayedNotifyHandler:Landroid/os/Handler;

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->initialize()V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->postedAutoConnection()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->doFeatureExchange()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->doFindPeer()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->btShutdown()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->createBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->updateBondedDevices()V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isSetBtShutdownFlag()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->btEnable()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->setCreateBondFlag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->reqeustWaitingConnectionTask(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->checkAutoConnecter(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConntionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->createConnectionManagerAutoConnecter(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mRecoveryHandler:Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

    return-object v0
.end method

.method private btEnable()V
    .locals 3

    .prologue
    .line 2260
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->unsetBtShutdownFlag()V

    .line 2262
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2263
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 2269
    :goto_0
    return-void

    .line 2266
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v2, "[CMCC] BT enable - BluetoothAdapter"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0
.end method

.method private btShutdown()V
    .locals 4

    .prologue
    .line 2240
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2241
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 2256
    :goto_0
    return-void

    .line 2244
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->setBtShutdownFlag()V

    .line 2247
    :try_start_0
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "[CMCC] BT shutdown - BluetoothAdapter"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothAdapterFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothAdapterInterface;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothAdapterInterface;->shutdown(Landroid/bluetooth/BluetoothAdapter;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2249
    :catch_0
    move-exception v1

    .line 2250
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "[CMCC] BT disable - BluetoothAdapter"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0

    .line 2252
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v1

    .line 2253
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "[CMCC] BT disable - BluetoothAdapter"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method private checkAutoConnecter(Landroid/bluetooth/BluetoothDevice;)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v7, 0x12

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1858
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC] checkAutoConnecter start...android API level is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1862
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_1

    .line 1863
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "[CMAC] CMD_AUTO_CONNECT : deviceSet is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    :cond_0
    :goto_0
    return-void

    .line 1869
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v7, :cond_2

    .line 1871
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "[CMAC] checkAutoConnecter: CM auto-connecter will be created..flag is true"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    invoke-virtual {v0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectorEnabled(Z)V

    .line 1874
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1876
    iput-boolean v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mIsPrevBleACServiceAvailable:Z

    goto :goto_0

    .line 1879
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v7, :cond_0

    .line 1881
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCompanyName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1883
    .local v1, "isOurCompany":Z
    if-nez v1, :cond_3

    .line 1884
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "[CMAC] checkAutoConnecter: Android 4.3 or 4.2 / MANUFACTURER is other company..Standard AC will be created.."

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    invoke-virtual {v0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectorEnabled(Z)V

    .line 1888
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1890
    iput-boolean v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mIsPrevBleACServiceAvailable:Z

    goto :goto_0

    .line 1905
    :cond_3
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "[CMAC] checkAutoConnecter: Android 4.2 / LE module is supported..Prev AC will be worked.."

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    invoke-virtual {v0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectorEnabled(Z)V

    .line 1909
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1910
    iput-boolean v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mIsPrevBleACServiceAvailable:Z

    goto :goto_0
.end method

.method private connectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 2164
    if-nez p1, :cond_0

    .line 2165
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "connect SCS device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    :goto_0
    return-void

    .line 2169
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2171
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 2172
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2173
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "[CMAC] connection with SCS"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private createBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x0

    .line 550
    :try_start_0
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v5, "Create Bond..."

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "createBond"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 553
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 555
    .local v2, "returnValue":Ljava/lang/Boolean;
    if-nez v2, :cond_0

    .line 556
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v5, "[CMSC] createBond() returns null!!"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 566
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "returnValue":Ljava/lang/Boolean;
    :goto_0
    return v3

    .line 561
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    .restart local v2    # "returnValue":Ljava/lang/Boolean;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 563
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "returnValue":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 566
    goto :goto_0
.end method

.method private createConnectionManagerAutoConnecter(Landroid/bluetooth/BluetoothDevice;)V
    .locals 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1947
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    if-nez v6, :cond_1

    .line 2050
    :cond_0
    :goto_0
    return-void

    .line 1950
    :cond_1
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v7, "[CMAC] createConnectionManagerAutoConnecter : whether create AC module or not"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    .line 1954
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLocalBluetoothVersion()Ljava/lang/String;

    move-result-object v2

    .line 1955
    .local v2, "hDeviceBTType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    .line 1956
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 1955
    invoke-virtual {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getBluetoothVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1958
    .local v5, "wDeviceBTType":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMAC] createConnectionManagerAutoConnecter : wearable deviceBTType is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMAC] createConnectionManagerAutoConnecter : host deviceBTType is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    if-eqz v5, :cond_2

    if-nez v2, :cond_3

    .line 1964
    :cond_2
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMAC] createConnectionManagerAutoConnecter : BT version is null ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1969
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mPolicyDecision:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    if-nez v6, :cond_4

    .line 1970
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v7, "[CMAC] createConnectionManagerAutoConnecter : mPolicyDecision is null"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1974
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mPolicyDecision:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v8, "BLE"

    const-string v9, "MODULE_POLICY"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->getPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1976
    .local v4, "modPolicyResult":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mPolicyDecision:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    const-string v7, "AUTO_CONNECTION_POLICY"

    invoke-virtual {v6, v2, v5, v7}, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->getPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1978
    .local v0, "acPolicyResult":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMAC] createConnectionManagerAutoConnecter : mPolicyDecision - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    if-eqz v4, :cond_a

    const-string v6, "ENABLE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1983
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMAC] createConnectionManagerAutoConnecter : mPolicyDecision - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    if-eqz v0, :cond_9

    const-string v6, "LE_NON_STANDARD"

    .line 1986
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1987
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConntionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    if-eqz v6, :cond_0

    .line 1989
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMAC] createConnectionManagerAutoConnecter : is supported 3G mode? - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1990
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1989
    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isScsSupported(Ljava/lang/String;)Z

    move-result v3

    .line 1995
    .local v3, "isSupportedSCSType":Z
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 1996
    .local v1, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v1, :cond_5

    .line 1997
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v7, "[CMAC] CMD_AUTO_CONNECT : deviceSet is null"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2002
    :cond_5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-le v6, v7, :cond_7

    .line 2004
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v7, "[CMSC] android Build version is LOLLIPOP (> KITKAT) "

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    if-eqz v3, :cond_6

    .line 2007
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v7, "[CMAC] BLE Auto-Connecter that is ran base on SCS Mode is made"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConntionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .line 2009
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->getGattCallback()Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v7

    .line 2008
    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->getInstance(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Landroid/bluetooth/BluetoothGattCallback;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnector(Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;)V

    .line 2010
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto/16 :goto_0

    .line 2014
    :cond_6
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v7, "[CMAC] BLE Auto-Connecter that is ran base on non-standard Mode is made"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConntionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .line 2016
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->getGattCallback()Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v7

    .line 2015
    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;->getInstance(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Landroid/bluetooth/BluetoothGattCallback;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSmLEAutoConnectHandler;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnector(Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;)V

    .line 2017
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto/16 :goto_0

    .line 2023
    :cond_7
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v7, "[CMSC] android Build version is not lollipop "

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    if-eqz v3, :cond_8

    .line 2026
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v7, "[CMAC] BLE Auto-Connecter that is ran base on SCS Mode is made"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConntionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .line 2028
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->getGattCallback()Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v7

    .line 2027
    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->getInstance(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Landroid/bluetooth/BluetoothGattCallback;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnector(Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;)V

    .line 2029
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto/16 :goto_0

    .line 2033
    :cond_8
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v7, "[CMAC] BLE Auto-Connecter that is ran base on non-standard Mode is made"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConntionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .line 2035
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->getGattCallback()Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v7

    .line 2034
    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->getInstance(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Landroid/bluetooth/BluetoothGattCallback;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnector(Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;)V

    .line 2036
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto/16 :goto_0

    .line 2043
    .end local v1    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v3    # "isSupportedSCSType":Z
    :cond_9
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v7, "[CMAC] createConnectionManagerAutoConnecter : AC PolicyResult is not suitable"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2047
    :cond_a
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v7, "[CMAC] createConnectionManagerAutoConnecter : SmLEAutoConnectHandler is not created as Policy Result"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private doFeatureExchange()V
    .locals 2

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v0

    .line 525
    .local v0, "de":Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->doFeatureExchange()V

    .line 526
    return-void
.end method

.method private doFindPeer()V
    .locals 2

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v0

    .line 530
    .local v0, "de":Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->doFindPeer()V

    .line 531
    return-void
.end method

.method private getDefaultServices(Landroid/bluetooth/BluetoothDevice;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v2, "[CMCC_SDP] SAP supported"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v2, "[CMCC_SDP] Wifi P2p supported"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    return-object v0
.end method

.method private getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .locals 1
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 2112
    if-nez p1, :cond_0

    .line 2113
    const/4 v0, 0x0

    .line 2114
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getACDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    goto :goto_0
.end method

.method private initWearableState()V
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v1, "init ConnectionController... "

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->updateBondedDevices()V

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->updateSupportableServices()V

    .line 161
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->initWearableState()V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v0

    .line 110
    .local v0, "de":Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mDataExchangeEventListener:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$IDataExchangeEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->addEventListener(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$IDataExchangeEventListener;)V

    .line 112
    return-void
.end method

.method private isCreateBondFlag(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 504
    if-nez p1, :cond_0

    .line 519
    :goto_0
    return v1

    .line 507
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mCreateBondFlag:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 508
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mCreateBondFlag:Ljava/util/HashMap;

    .line 511
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mCreateBondFlag:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 513
    .local v0, "ret":Ljava/lang/Boolean;
    if-nez v0, :cond_2

    .line 514
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "[CMCC] CreateBond flag: false(null)"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_2
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMCC] CreateBond flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method private isEnableSCSServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v0

    .line 665
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

    .line 666
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

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

    .line 667
    const/4 v1, 0x1

    .line 670
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isServiceExisting(Ljava/lang/String;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1923
    const/4 v1, 0x0

    .line 1925
    .local v1, "result":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1928
    .local v0, "manager":Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 1930
    .local v2, "runSvc":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v2, :cond_1

    .line 1931
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1932
    .local v3, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1933
    const/4 v1, 0x1

    .line 1938
    .end local v3    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    return v1
.end method

.method private isSetBtShutdownFlag()Z
    .locals 1

    .prologue
    .line 2234
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mBtShutDownFlag:Z

    return v0
.end method

.method private notify2Subscriber(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->publishEvent(ILandroid/os/Bundle;)V

    .line 591
    return-void
.end method

.method private postedAutoConnection()V
    .locals 15

    .prologue
    .line 1618
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v12

    .line 1619
    invoke-virtual {v12}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr()Ljava/util/Set;

    move-result-object v2

    .line 1621
    .local v2, "addrSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1622
    :cond_0
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v13, "[CMAC] restartAutoConnection - addrSet is null or Empty"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    :cond_1
    return-void

    .line 1626
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1628
    .local v0, "AddrIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 1629
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1630
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1631
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v12}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    .line 1632
    .local v7, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v7, :cond_3

    .line 1633
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v12

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putDeviceMacForACDeviceSet(Ljava/lang/String;)V

    .line 1636
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_5

    .line 1638
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v12

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isScsSupported(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1641
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1643
    .local v5, "bundleSCS":Landroid/os/Bundle;
    invoke-static {v7}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v10

    .line 1644
    .local v10, "itemBundle":Landroid/os/Bundle;
    const-string v12, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v5, v12, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1645
    const-string v12, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v13, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v13}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v13, "[CMAC] Request SCS Connection"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v12

    const/16 v13, 0x15

    invoke-virtual {v12, v13, v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1651
    .end local v5    # "bundleSCS":Landroid/os/Bundle;
    .end local v10    # "itemBundle":Landroid/os/Bundle;
    :cond_4
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v13, "[CMAC] Do not Request SCS Connection as wearable not support wifi or cellular"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1656
    :cond_5
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[CMAC] --check whether device is already connected hfp or not "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1658
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1656
    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    invoke-static {v7}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v11

    .line 1662
    .local v11, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v11, :cond_3

    .line 1665
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v12, v11, v13}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v9

    .line 1667
    .local v9, "isSPPConnected":Z
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v12, v11, v13}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v8

    .line 1670
    .local v8, "isHFPConnected":Z
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v13, "[CMSC] unset BR/EDR Connecting Flag.."

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v12

    .line 1672
    invoke-static {v11}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v13

    const/4 v14, 0x0

    .line 1671
    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1674
    const/4 v12, 0x1

    if-ne v12, v8, :cond_7

    .line 1676
    if-nez v9, :cond_6

    .line 1678
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1681
    .local v4, "bundleOldAC":Landroid/os/Bundle;
    invoke-static {v7}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v10

    .line 1682
    .restart local v10    # "itemBundle":Landroid/os/Bundle;
    const-string v12, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v4, v12, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1684
    const-string v12, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v13, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 1685
    invoke-virtual {v13}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v13

    .line 1684
    invoke-virtual {v4, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v13, "[CMAC] Request SPP Connectoin for HFP is already connected state"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v12

    const/16 v13, 0x15

    invoke-virtual {v12, v13, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1692
    .end local v4    # "bundleOldAC":Landroid/os/Bundle;
    .end local v10    # "itemBundle":Landroid/os/Bundle;
    :cond_6
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v13, "[CMAC] SPP already connected for old AC"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1696
    :cond_7
    if-nez v9, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v12

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isScsSupported(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1699
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1701
    .restart local v5    # "bundleSCS":Landroid/os/Bundle;
    invoke-static {v7}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v10

    .line 1702
    .restart local v10    # "itemBundle":Landroid/os/Bundle;
    const-string v12, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v5, v12, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1703
    const-string v12, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v13, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v13}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v13, "[CMAC] Request SCS Connection"

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v12

    const/16 v13, 0x15

    invoke-virtual {v12, v13, v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 1710
    .end local v5    # "bundleSCS":Landroid/os/Bundle;
    .end local v10    # "itemBundle":Landroid/os/Bundle;
    :cond_8
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1712
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-static {v7}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v6

    .line 1713
    .local v6, "devBundle":Landroid/os/Bundle;
    const-string v12, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v3, v12, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1714
    const-string v12, "AUTO_CONNECTION_STRING_STEP"

    const-string v13, "RESTART_AUTO_CONNECT"

    invoke-virtual {v3, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    sget-object v12, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[CMAC] requestCommand re start"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v12

    const/16 v13, 0x17

    invoke-virtual {v12, v13, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x0

    .line 571
    :try_start_0
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v5, "Remove Bond..."

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "removeBond"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 573
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 575
    .local v2, "returnValue":Ljava/lang/Boolean;
    if-nez v2, :cond_0

    .line 576
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v5, "[CMSC] removeBond() returns null!!"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 585
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "returnValue":Ljava/lang/Boolean;
    :goto_0
    return v3

    .line 580
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    .restart local v2    # "returnValue":Ljava/lang/Boolean;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 582
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "returnValue":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 585
    goto :goto_0
.end method

.method private reqeustWaitingConnectionTask(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 640
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "reqeustWaitingConnectionTask()"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 643
    .local v0, "deviceBundle":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/os/Bundle;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v1

    .line 644
    .local v1, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-nez v1, :cond_0

    .line 646
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "wDevice is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :goto_0
    return-void

    .line 650
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isRequestedDeviceList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 651
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "No requested device by HM"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 656
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConnectionRequestHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConnectionRequestTask:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionReqeustTask;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 657
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConnectionRequestTask:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionReqeustTask;

    invoke-virtual {v2, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionReqeustTask;->setBundle(Landroid/os/Bundle;)V

    .line 658
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConnectionRequestHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConnectionRequestTask:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionReqeustTask;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setBtShutdownFlag()V
    .locals 2

    .prologue
    .line 2224
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v1, "[CMCC] set BT Shut down flag"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mBtShutDownFlag:Z

    .line 2226
    return-void
.end method

.method private setCreateBondFlag(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 476
    if-nez p1, :cond_0

    .line 486
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mCreateBondFlag:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 480
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mCreateBondFlag:Ljava/util/HashMap;

    .line 483
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v1, "[CMCC] set Create Bond Flag"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mCreateBondFlag:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setRecoveryFlag(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 1554
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC] setChangedBTStateFlag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->RecoveryFlag:Z

    .line 1556
    return-void
.end method

.method private udpateReversedState(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1797
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "[CMSC] update reversed state after bonding"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    if-nez p1, :cond_1

    .line 1812
    :cond_0
    :goto_0
    return-void

    .line 1802
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    .line 1803
    .local v1, "sppHandler":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    .line 1805
    .local v0, "hfpHandler":Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;
    if-eqz v0, :cond_2

    .line 1806
    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->updateConnectedState(Landroid/bluetooth/BluetoothDevice;)V

    .line 1808
    :cond_2
    if-eqz v1, :cond_0

    .line 1809
    invoke-virtual {v1, p1}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->updateConnectedState(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method private unsetBtShutdownFlag()V
    .locals 2

    .prologue
    .line 2229
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v1, "[CMCC] unset BT Shut down flag"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mBtShutDownFlag:Z

    .line 2231
    return-void
.end method

.method private unsetCreateBondFlag(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 490
    if-nez p1, :cond_0

    .line 500
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mCreateBondFlag:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 494
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mCreateBondFlag:Ljava/util/HashMap;

    .line 497
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v1, "[CMCC] unset Create Bond Flag"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mCreateBondFlag:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateBondedDevices()V
    .locals 7

    .prologue
    .line 178
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v4, "update Bonded Devices..."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 181
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 183
    .local v1, "bondedDeviceList":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_0

    .line 184
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 185
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adapter bonded device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v4

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->addAdapterBondedDevice(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-void
.end method

.method private updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V
    .locals 3
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "set"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    .prologue
    .line 2126
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC] updateDataSet : Address is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    if-nez p1, :cond_0

    .line 2131
    :goto_0
    return-void

    .line 2130
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->updateACdeviceSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto :goto_0
.end method

.method private updateSupportableServices()V
    .locals 6

    .prologue
    .line 164
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v5, "Update Supportable Services..."

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConntionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    .line 167
    .local v3, "wearableState":Lcom/samsung/android/hostmanager/connectionmanager/WearableState;
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getBondedDevices()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 169
    .local v1, "devicelist":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 170
    .local v2, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 171
    .local v0, "bDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->setServiceDiscovery(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 173
    .end local v0    # "bDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAutoConnectionRunner(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mAutoConnectionHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1427
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v1, "[CMAC] cancel AutoConnectionRunner call..."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mAutoConnectionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mAutoConnectionRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1430
    :cond_0
    return-void
.end method

.method public connectAllBTProfile(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2141
    if-nez p1, :cond_0

    .line 2142
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "connectAllBTProfile device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    :goto_0
    return-void

    .line 2146
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2148
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 2149
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2150
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "[CMAC] establish connection with BT Profile(SPP & HFP) after SCS is Disconnected"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected createWorker()Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V

    return-object v0
.end method

.method public isAutoConnectionRunning(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 1532
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 1533
    .local v1, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v1, :cond_0

    .line 1534
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v4, "[CMAC] CMD_AUTO_CONNECT : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    :goto_0
    return v2

    .line 1537
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnector()Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

    move-result-object v0

    .line 1538
    .local v0, "autoConnecter":Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;
    if-nez v0, :cond_1

    .line 1539
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v4, "[CMAC] isAutoConnectionRunning : mAutoConnecter is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1542
    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->isAutoConnectionRunning(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    goto :goto_0
.end method

.method public isForcePairing(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2210
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mForcePairingFlagMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 2217
    :cond_0
    :goto_0
    return v0

    .line 2213
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mForcePairingFlagMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2217
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mForcePairingFlagMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isRemoteflagEnable(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    const/4 v1, 0x0

    .line 1581
    if-nez p1, :cond_0

    .line 1582
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "[CMAC] IsRemoteflagEnable - device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    :goto_0
    return v1

    .line 1586
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getACDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1587
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_1

    .line 1588
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "[CMAC] IsRemoteflagEnable : deviceSet is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1592
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getRemoteFlag()Z

    move-result v1

    goto :goto_0
.end method

.method public isRunningBleAutoConnectService()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mIsPrevBleACServiceAvailable:Z

    return v0
.end method

.method public isScsRetryRecoveried()Z
    .locals 2

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mRecoveryHandler:Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

    if-nez v0, :cond_0

    .line 1568
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v1, "[CMAC] isAutoConnectionRunning : mRecoveryHandler is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    const/4 v0, 0x0

    .line 1571
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mRecoveryHandler:Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->isScsRetryRecoveried()Z

    move-result v0

    goto :goto_0
.end method

.method public isSetRecoveryFlag()Z
    .locals 3

    .prologue
    .line 1549
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC] getChangedBTStateFlag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->RecoveryFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->RecoveryFlag:Z

    return v0
.end method

.method public isSppRetryRecoveried()Z
    .locals 2

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mRecoveryHandler:Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

    if-nez v0, :cond_0

    .line 1560
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v1, "[CMAC] isAutoConnectionRunning : mRecoveryHandler is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    const/4 v0, 0x0

    .line 1563
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mRecoveryHandler:Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->isSppRetryRecoveried()Z

    move-result v0

    goto :goto_0
.end method

.method public onReceivedEvent(ILandroid/os/Bundle;Landroid/content/Intent;)V
    .locals 36
    .param p1, "event"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 676
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "onReceivedEvent()"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const/4 v9, 0x0

    .line 679
    .local v9, "bDevice":Landroid/bluetooth/BluetoothDevice;
    const/16 v18, 0x0

    .line 681
    .local v18, "deviceBundle":Landroid/os/Bundle;
    if-eqz p2, :cond_0

    .line 682
    const-string v32, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    .end local v18    # "deviceBundle":Landroid/os/Bundle;
    check-cast v18, Landroid/os/Bundle;

    .line 684
    .restart local v18    # "deviceBundle":Landroid/os/Bundle;
    :cond_0
    if-eqz v18, :cond_1

    .line 685
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Landroid/os/Bundle;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 687
    :cond_1
    if-eqz v9, :cond_2

    .line 689
    const/16 v32, 0x216

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 691
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "Bond state change event notified to subscriber"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->notify2Subscriber(ILandroid/os/Bundle;)V

    .line 712
    :cond_2
    :goto_0
    const/16 v32, 0x216

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    .line 714
    if-eqz p2, :cond_10

    .line 715
    const-string v32, "BUNDLE_CMKEY_STRING_BONDSTATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 718
    .local v30, "state":Ljava/lang/String;
    const-string v32, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v33, -0x80000000

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    const/16 v33, 0xa

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    .line 720
    const-string v32, "android.bluetooth.device.extra.DEVICE"

    .line 721
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/bluetooth/BluetoothDevice;

    .line 723
    .local v17, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v32, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    const/high16 v33, -0x80000000

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    const/16 v33, 0xc

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_8

    .line 725
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] ACTION_BOND_STATE_CHANGED : BOND_BONDED -> BOND_NONE"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->stopAutoConnection(Landroid/bluetooth/BluetoothDevice;)V

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    .line 731
    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    .line 730
    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->removeAdapterBondedDevice(Ljava/lang/String;)V

    .line 732
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] Remove Auto Conneciton List for Unpaired"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v32

    .line 735
    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    .line 734
    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->removeACAddress(Ljava/lang/String;)V

    .line 737
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v31

    .line 738
    .local v31, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v31, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isEnableSCSServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_7

    .line 740
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 742
    .local v10, "bundleSCS":Landroid/os/Bundle;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v23

    .line 743
    .local v23, "itemBundle":Landroid/os/Bundle;
    const-string v32, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 744
    const-string v32, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] disconnection with SCS by BT unbonded"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] SCS connection state is Connected/Connecting. cancel it"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    const/16 v33, 0x24

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 762
    .end local v10    # "bundleSCS":Landroid/os/Bundle;
    .end local v17    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v23    # "itemBundle":Landroid/os/Bundle;
    .end local v31    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_3
    :goto_1
    if-eqz v30, :cond_a

    const-string v32, "BONDED"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 764
    const-string v32, "android.bluetooth.device.extra.DEVICE"

    .line 765
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/bluetooth/BluetoothDevice;

    .line 767
    .restart local v17    # "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v17, :cond_9

    .line 768
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "disconnect SCS device is null"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    .end local v17    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v30    # "state":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    .line 695
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    .line 696
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    .line 695
    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isRequestedDeviceList(Ljava/lang/String;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_6

    .line 699
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->notify2Subscriber(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 702
    :cond_6
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "(Unknown device) Not notified to subscriber"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 753
    .restart local v17    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v30    # "state":Ljava/lang/String;
    .restart local v31    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_7
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] SCS connection state is not Connected/Connecting. ignore it"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 757
    .end local v31    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->stopAutoConnection(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    .line 772
    :cond_9
    const-string v32, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    const/high16 v33, -0x80000000

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    const/16 v33, 0xb

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_a

    .line 774
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 776
    .restart local v10    # "bundleSCS":Landroid/os/Bundle;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v23

    .line 777
    .restart local v23    # "itemBundle":Landroid/os/Bundle;
    const-string v32, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 778
    const-string v32, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] disconnection with SCS by BT bonded"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v31

    .line 783
    .restart local v31    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isEnableSCSServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_12

    .line 785
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] SCS connection state is Connected/Connecting. cancel it"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    const/16 v33, 0x24

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 796
    .end local v10    # "bundleSCS":Landroid/os/Bundle;
    .end local v17    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v23    # "itemBundle":Landroid/os/Bundle;
    .end local v31    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_a
    :goto_3
    if-eqz v30, :cond_c

    const-string v32, "BONDED"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 798
    const-string v32, "android.bluetooth.device.extra.DEVICE"

    .line 799
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/bluetooth/BluetoothDevice;

    .line 800
    .restart local v17    # "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v17, :cond_b

    .line 801
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    .line 802
    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    .line 801
    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->addAdapterBondedDevice(Ljava/lang/String;)V

    .line 805
    :cond_b
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[SDP] setServiceDiscovery after BONDING"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[SDP] intent action: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    .end local v17    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_c
    if-eqz v30, :cond_d

    const-string v32, "BONDED"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 815
    if-eqz v9, :cond_d

    .line 818
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[jdub] BONDED, removeFeatureExchangeItem()"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    .line 821
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    .line 820
    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->removeFeatureExchangeItem(Ljava/lang/String;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_d

    .line 822
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[jdub] FeatureExchangeItem removed!"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    :cond_d
    if-eqz v30, :cond_e

    const-string v32, "BONDED"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_e

    .line 831
    if-eqz v9, :cond_e

    .line 833
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMSC] Request Connection after Bonding"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[WS] Connection all event: BONDED -> Device state initialized to DISCONNECTED "

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/os/Bundle;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v31

    .line 841
    .restart local v31    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v34, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 846
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->udpateReversedState(Landroid/bluetooth/BluetoothDevice;)V

    .line 852
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isCreateBondFlag(Ljava/lang/String;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    .line 855
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->reqeustWaitingConnectionTask(Landroid/os/Bundle;)V

    .line 858
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->unsetCreateBondFlag(Ljava/lang/String;)V

    .line 864
    .end local v31    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_e
    if-eqz v30, :cond_f

    const-string v32, "NONE"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_f

    .line 866
    if-eqz v9, :cond_f

    .line 868
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isForcePairing(Ljava/lang/String;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_13

    .line 869
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMSC] Request Connection after Unbonding"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->reqeustWaitingConnectionTask(Landroid/os/Bundle;)V

    .line 875
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v32

    .line 876
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    .line 875
    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->unsetForcePairingFlag(Ljava/lang/String;)V

    .line 894
    :cond_f
    :goto_4
    if-eqz v30, :cond_10

    const-string v32, "NONE"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 896
    if-eqz v9, :cond_10

    .line 899
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[jdub] UNBONDED, removeFeatureExchangeItem()"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    .line 903
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    .line 902
    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->removeFeatureExchangeItem(Ljava/lang/String;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_14

    .line 904
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[jdub] FeatureExchangeItem removed!"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    .end local v30    # "state":Ljava/lang/String;
    :cond_10
    :goto_5
    const/16 v32, 0x218

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 918
    new-instance v29, Landroid/os/Bundle;

    invoke-direct/range {v29 .. v29}, Landroid/os/Bundle;-><init>()V

    .line 920
    .local v29, "request":Landroid/os/Bundle;
    const-string v32, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/bluetooth/BluetoothDevice;

    .line 922
    .restart local v17    # "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v17, :cond_15

    .line 923
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v23

    .line 924
    .restart local v23    # "itemBundle":Landroid/os/Bundle;
    const-string v32, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 925
    const-string v32, "AUTO_CONNECTION_STRING_STEP"

    const-string v33, "MSG_WAIT_FOR_CM_GATTSERVICE_BINDING"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    const/16 v33, 0x17

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 939
    .end local v17    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v23    # "itemBundle":Landroid/os/Bundle;
    .end local v29    # "request":Landroid/os/Bundle;
    :cond_11
    :goto_6
    const/16 v32, 0x219

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    .line 941
    const-string v32, "android.bluetooth.adapter.extra.STATE"

    const/high16 v33, -0x80000000

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 943
    .local v30, "state":I
    const/16 v32, 0xd

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    .line 946
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[WS] resetWearableState()..."

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    .line 948
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getBondedDevices()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v20

    .line 949
    .local v20, "devices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_7
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_16

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 950
    .local v17, "device":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[WS] Reset Wearable State(DISCONNECTED) - "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 951
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 950
    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v33

    sget-object v34, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v35, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    goto :goto_7

    .line 790
    .end local v20    # "devices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    .restart local v10    # "bundleSCS":Landroid/os/Bundle;
    .local v17, "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v23    # "itemBundle":Landroid/os/Bundle;
    .local v30, "state":Ljava/lang/String;
    .restart local v31    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_12
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] SCS connection state is not Connected/Connecting. ignore it"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 879
    .end local v10    # "bundleSCS":Landroid/os/Bundle;
    .end local v17    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v23    # "itemBundle":Landroid/os/Bundle;
    .end local v31    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_13
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMSC] Do nothing for Unpaired or pairing canceled"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    .line 883
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    .line 882
    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->removeAdapterBondedDevice(Ljava/lang/String;)V

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v32

    .line 887
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->removeWaitingConnectionInfo(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 906
    :cond_14
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[jdub] removeFeatureExchangeItem() - FAIL"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 930
    .end local v30    # "state":Ljava/lang/String;
    .restart local v17    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v29    # "request":Landroid/os/Bundle;
    :cond_15
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "onReceivedEvent() device is null"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 957
    .end local v17    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v29    # "request":Landroid/os/Bundle;
    .restart local v20    # "devices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    .local v30, "state":I
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->clearWaitingConnectionInfo()V

    .line 967
    .end local v20    # "devices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    .end local v30    # "state":I
    :cond_17
    const/16 v32, 0x219

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_18

    .line 969
    const-string v32, "android.bluetooth.adapter.extra.STATE"

    const/high16 v33, -0x80000000

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 973
    .restart local v30    # "state":I
    const/16 v32, 0xd

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_1b

    .line 974
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] recevie BluetoothAdapter.STATE_TURNING_OFF"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->resetRemoteFlagtoAll()V

    .line 980
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->stopAutoConnectionAll()V

    .line 1149
    .end local v30    # "state":I
    :cond_18
    :goto_8
    const/16 v32, 0x220

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_19

    .line 1151
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "profile state change, state is "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "android.bluetooth.profile.extra.STATE"

    const/16 v35, 0x0

    .line 1154
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1151
    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    :cond_19
    const/16 v32, 0x219

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_23

    .line 1166
    const-string v32, "android.bluetooth.adapter.extra.STATE"

    const/high16 v33, -0x80000000

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 1168
    .restart local v30    # "state":I
    const/16 v32, 0xc

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_23

    .line 1170
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    .line 1171
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getRequestedDeviceList()Ljava/util/Set;

    move-result-object v13

    .line 1172
    .local v13, "devAddrList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[WS] Connection all event: BT-ON -> Device state initialized to DISCONNECTED "

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_1a
    :goto_9
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_23

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1177
    .local v16, "devAddress":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v31

    .line 1178
    .restart local v31    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v31, :cond_1a

    .line 1180
    invoke-static/range {v31 .. v31}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v12

    .line 1181
    .local v12, "dBundle":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v33

    sget-object v34, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v35, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 1184
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v33

    .line 1185
    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getNotifyEventTask()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    move-result-object v27

    .line 1186
    .local v27, "notifyEventTask":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;
    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->setEventData(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mDelayedNotifyHandler:Landroid/os/Handler;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    .line 982
    .end local v12    # "dBundle":Landroid/os/Bundle;
    .end local v13    # "devAddrList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "devAddress":Ljava/lang/String;
    .end local v27    # "notifyEventTask":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;
    .end local v31    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_1b
    const/16 v32, 0xa

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_20

    .line 983
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] recevie BluetoothAdapter.STATE_OFF"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] wait for 500ms"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->stopAutoConnectionAll()V

    .line 991
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->setRecoveryFlag(Z)V

    .line 993
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCompanyName()Ljava/lang/String;

    move-result-object v32

    sget-object v33, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 996
    .local v21, "isOurCompany":Z
    if-nez v21, :cond_1d

    .line 997
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC OTHER] this device is made by other company"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC OTHER] put LastConnectedDeviceAddr for other company"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    .line 1002
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getRequestedDeviceList()Ljava/util/Set;

    move-result-object v19

    .line 1003
    .local v19, "devices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 1004
    .local v24, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1c
    :goto_a
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1f

    .line 1005
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1006
    .local v7, "addr":Ljava/lang/String;
    if-eqz v7, :cond_1c

    .line 1007
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    .line 1008
    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putLastConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_1c

    .line 1009
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC OTHER] it is not put Last Connected Device"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1015
    .end local v7    # "addr":Ljava/lang/String;
    .end local v19    # "devices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v24    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1d
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] this device is made by our company"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    .line 1018
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getRequestedDeviceList()Ljava/util/Set;

    move-result-object v19

    .line 1019
    .restart local v19    # "devices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 1020
    .restart local v24    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1e
    :goto_b
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1f

    .line 1021
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1022
    .restart local v7    # "addr":Ljava/lang/String;
    if-eqz v7, :cond_1e

    .line 1023
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] it is not put Last Connected Device - INIT_RECOVERY_RETRY_CNT_SPP"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v32

    .line 1029
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isSppRetryRecoveried()Z

    move-result v32

    if-eqz v32, :cond_1e

    .line 1030
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1032
    .local v11, "bundles":Landroid/os/Bundle;
    invoke-static {v7}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v23

    .line 1033
    .restart local v23    # "itemBundle":Landroid/os/Bundle;
    const-string v32, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1035
    const-string v32, "RECONNECTION_STRING_STEP"

    const-string v33, "INIT_RECOVERY_RETRY_CNT_SPP"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    const/16 v33, 0x18

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_b

    .line 1045
    .end local v7    # "addr":Ljava/lang/String;
    .end local v11    # "bundles":Landroid/os/Bundle;
    .end local v23    # "itemBundle":Landroid/os/Bundle;
    :cond_1f
    new-instance v26, Landroid/os/Handler;

    invoke-direct/range {v26 .. v26}, Landroid/os/Handler;-><init>()V

    .line 1047
    .local v26, "mHandler":Landroid/os/Handler;
    new-instance v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$3;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$3;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V

    const-wide/16 v34, 0x1f4

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_8

    .line 1097
    .end local v19    # "devices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "isOurCompany":Z
    .end local v24    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v26    # "mHandler":Landroid/os/Handler;
    :cond_20
    const/16 v32, 0xc

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_18

    .line 1098
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] recevie BluetoothAdapter.STATE_ON"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    .line 1102
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getBondedDevices()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v20

    .line 1103
    .restart local v20    # "devices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_21

    .line 1105
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->updateBondedDevices()V

    .line 1110
    :cond_21
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->setRecoveryFlag(Z)V

    .line 1112
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCompanyName()Ljava/lang/String;

    move-result-object v32

    sget-object v33, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 1116
    .restart local v21    # "isOurCompany":Z
    if-nez v21, :cond_22

    .line 1117
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC OTHER] this device is made by other company"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC OTHER] start Auto Connection"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->restartAutoConnection()V

    .line 1123
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    .line 1124
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr()Ljava/util/Set;

    move-result-object v8

    .line 1125
    .local v8, "addrSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1127
    .local v4, "AddrIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v4, :cond_18

    .line 1128
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_18

    .line 1129
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    .line 1130
    .local v6, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v17

    .line 1132
    .restart local v17    # "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1133
    .restart local v11    # "bundles":Landroid/os/Bundle;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v23

    .line 1134
    .restart local v23    # "itemBundle":Landroid/os/Bundle;
    const-string v32, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1135
    const-string v32, "AUTO_CONNECTION_STRING_STEP"

    const-string v33, "ACTION_STATE_CHANGED"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const-string v32, "BUNDLE_CMKEY_INT_BLUETOOTHADAPTER_STATE"

    const/16 v33, 0xc

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1139
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    const/16 v33, 0x17

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_c

    .line 1199
    .end local v4    # "AddrIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v8    # "addrSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "bundles":Landroid/os/Bundle;
    .end local v17    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v20    # "devices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    .end local v21    # "isOurCompany":Z
    .end local v23    # "itemBundle":Landroid/os/Bundle;
    .end local v30    # "state":I
    :cond_23
    const/16 v32, 0x230

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_28

    .line 1202
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] notification received for connectivity state changed "

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isWifiOr3GConnected()Z

    move-result v22

    .line 1205
    .local v22, "isWifi3GEnabled":Z
    const/16 v32, 0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-ne v0, v1, :cond_27

    .line 1208
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] connectivity state changed - Available"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    .line 1211
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getRequestedDeviceList()Ljava/util/Set;

    move-result-object v13

    .line 1213
    .restart local v13    # "devAddrList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_d
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_28

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1215
    .restart local v16    # "devAddress":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getSCSWaitingConnectionInfo()Ljava/util/HashMap;

    move-result-object v5

    .line 1218
    .local v5, "SCSWaitingConnectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_26

    .line 1220
    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[CMAC] SCS connection is waiting for device address "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v31

    .line 1225
    .restart local v31    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->removeSCSWaitingConnectionInfo(Ljava/lang/String;)V

    .line 1227
    const/16 v33, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isScsPreference(Ljava/lang/String;)Z

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_25

    .line 1228
    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[CMAC] SCS preference is true. try to Connect SCS for device  "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isEnableSCSServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v33

    if-nez v33, :cond_24

    .line 1230
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->connectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto/16 :goto_d

    .line 1233
    :cond_24
    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[CMAC] SCS is in enabling state already.   "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1237
    :cond_25
    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[CMAC] SCS preference is false. Dont Connect SCS for device  "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1242
    .end local v31    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_26
    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[CMAC] SCS connection is not waiting for device address "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1248
    .end local v5    # "SCSWaitingConnectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "devAddrList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "devAddress":Ljava/lang/String;
    :cond_27
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] connectivity state changed - wait for SAP event"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    .end local v22    # "isWifi3GEnabled":Z
    :cond_28
    const/16 v32, 0x213

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_2a

    .line 1287
    if-eqz p2, :cond_2a

    if-eqz v18, :cond_2a

    .line 1289
    const-string v32, "BUNDLE_CMKEY_STRING_LINKSTATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v33, "DISCONNECTED"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2a

    .line 1291
    new-instance v29, Landroid/os/Bundle;

    invoke-direct/range {v29 .. v29}, Landroid/os/Bundle;-><init>()V

    .line 1293
    .restart local v29    # "request":Landroid/os/Bundle;
    const-string v32, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1294
    const-string v32, "AUTO_CONNECTION_STRING_STEP"

    const-string v33, "ACTION_ACL_DISCONNECTED"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getExtraDisconnectionReason()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 1297
    .local v28, "reason":I
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getExtraLinkType()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 1298
    .local v25, "linkType":I
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getExtraDisconnectionReason()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1299
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getExtraLinkType()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1301
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[CMAC] received link state changed event, reason is "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " linktype is "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const-wide/16 v14, 0x0

    .line 1305
    .local v14, "delayTime":J
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->getRemoteDisconnectReasonCode()I

    move-result v32

    move/from16 v0, v28

    move/from16 v1, v32

    if-ne v0, v1, :cond_29

    .line 1306
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] delayTime is 500ms"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    const-wide/16 v14, 0x1f4

    .line 1312
    :cond_29
    new-instance v26, Landroid/os/Handler;

    invoke-direct/range {v26 .. v26}, Landroid/os/Handler;-><init>()V

    .line 1313
    .restart local v26    # "mHandler":Landroid/os/Handler;
    new-instance v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$4;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$4;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Landroid/os/Bundle;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1329
    .end local v14    # "delayTime":J
    .end local v25    # "linkType":I
    .end local v26    # "mHandler":Landroid/os/Handler;
    .end local v28    # "reason":I
    .end local v29    # "request":Landroid/os/Bundle;
    :cond_2a
    const/16 v32, 0x213

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_2b

    .line 1331
    if-eqz p2, :cond_2b

    if-eqz v18, :cond_2b

    .line 1333
    const-string v32, "BUNDLE_CMKEY_STRING_LINKSTATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v33, "DISCONNECTED"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2b

    .line 1335
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[WS] Connection all event: ACL_DISCONNECTED -> Device state initialized to DISCONNECTED "

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getExtraDisconnectionReason()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 1339
    .restart local v28    # "reason":I
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getExtraLinkType()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 1341
    .restart local v25    # "linkType":I
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "intent received : BluetoothDevice.ACTION_ACL_DISCONNECTED reason : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", linktype"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/os/Bundle;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v31

    .line 1346
    .restart local v31    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v34, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 1349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->LE_LINK_TYPE:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v25

    if-ne v0, v1, :cond_2d

    .line 1350
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] LINK State changed, le link type. Ignore"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->i_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    .end local v25    # "linkType":I
    .end local v28    # "reason":I
    .end local v31    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_2b
    :goto_e
    const/16 v32, 0x221

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_2c

    .line 1371
    if-eqz p2, :cond_2c

    .line 1373
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    const/16 v33, 0x17

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 1382
    :cond_2c
    const/16 v32, 0x222

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    .line 1384
    if-eqz p2, :cond_4

    .line 1386
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    const/16 v33, 0x17

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 1354
    .restart local v25    # "linkType":I
    .restart local v28    # "reason":I
    .restart local v31    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v32

    .line 1355
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getNotifyEventTask()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    move-result-object v27

    .line 1356
    .restart local v27    # "notifyEventTask":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->setEventData(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mDelayedNotifyHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e
.end method

.method public removeACAddress(Ljava/lang/String;)V
    .locals 4
    .param p1, "Addr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2062
    if-nez p1, :cond_0

    .line 2063
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v1, "[CMAC] removeACAddress - Addr is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2101
    :goto_0
    return-void

    .line 2067
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v1, "[CMAC] removeACAddress : removeACDeviceSet and removeLastConnectedDeviceAddr & removeLastConnectedDeviceAddr_SCS & removeWearableProfileVersion"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConntionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->removeLastConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2072
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC] FAIL: removeLastConnectedDeviceAddr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConntionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->removeLastConnectedDeviceAddr_SCS(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2077
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC] FAIL: removeLastConnectedDeviceAddr_SCS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConntionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isContainDeviceSet(Ljava/lang/String;)Z

    move-result v0

    if-ne v3, v0, :cond_3

    .line 2082
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConntionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->removeACDeviceSet(Ljava/lang/String;)V

    .line 2086
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConntionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->removeWearableProfileVersion(Ljava/lang/String;)Z

    move-result v0

    if-ne v3, v0, :cond_4

    .line 2087
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v1, "[CMAC] SUCCESS: removeWearableProfileVersion"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConntionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->removeIsGearNotifiedRandomLeTrueFlag(Ljava/lang/String;)Z

    move-result v0

    if-ne v3, v0, :cond_5

    .line 2095
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v1, "[CMAC] SUCCESS: removeIsGearNotifiedRandomLeTrueFlag"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2084
    :cond_3
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC] FAIL: removeACDeviceSet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2091
    :cond_4
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v1, "[CMAC] FAIL: removeWearableProfileVersion"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2099
    :cond_5
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v1, "[CMAC] FAIL: removeIsGearNotifiedRandomLeTrueFlag"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public removeAutoConnecter(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const v4, 0xffff

    .line 1827
    if-nez p1, :cond_1

    .line 1828
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "[CMAC] removeAutoConnecter : device is empty"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    :cond_0
    :goto_0
    return-void

    .line 1832
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 1833
    .local v1, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v1, :cond_2

    .line 1834
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "[CMAC] removeAutoConnecter : deviceSet is empty"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1839
    :cond_2
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "[CMAC] removeAutoConnecter : set connection scan parameter values to default!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectionScanParameter(II)Z

    .line 1842
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnector()Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

    move-result-object v0

    .line 1844
    .local v0, "autoconnecter":Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;
    if-eqz v0, :cond_0

    .line 1845
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;->close()V

    .line 1846
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnector(Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;)V

    .line 1847
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->updateDataSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1848
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v3, "[CMAC] mAutoConnecter is successfully finished!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetRemoteFlagtoAll()V
    .locals 7

    .prologue
    .line 1467
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v4

    .line 1468
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr()Ljava/util/Set;

    move-result-object v2

    .line 1469
    .local v2, "addrSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1471
    .local v0, "AddrIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1472
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v5, "[CMAC] resetRemoteFlagtoAll - addrSet is Empty"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    :cond_0
    return-void

    .line 1476
    :cond_1
    if-eqz v0, :cond_0

    .line 1477
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1478
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1479
    .local v3, "address":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1481
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CMAC] resetRemoteFlagtoAll. Set flag false for device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v1

    .line 1485
    .local v1, "WDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v1, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isRemoteflagEnable(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v5

    if-ne v4, v5, :cond_2

    .line 1487
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[jdub]  remote flag is true, set to false for a device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->setRemoteflag(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Z)V

    goto :goto_0
.end method

.method public restartAutoConnection()V
    .locals 4

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mAutoConnectionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mAutoConnectionRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1819
    return-void
.end method

.method public setForcePairingFlag(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2199
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMCC] set Force paring flag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mForcePairingFlagMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2201
    return-void
.end method

.method public setRemoteflag(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Z)V
    .locals 3
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "flag"    # Z

    .prologue
    .line 1601
    if-nez p1, :cond_0

    .line 1602
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v2, "[CMAC] setRemoteflag - device is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    :goto_0
    return-void

    .line 1606
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getACDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1607
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_1

    .line 1608
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v2, "[CMAC] setRemoteflag : deviceSet is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1612
    :cond_1
    invoke-virtual {v0, p2}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRemoteFlag(Z)V

    .line 1613
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->updateACdeviceSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto :goto_0
.end method

.method public setServiceDiscovery(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 609
    if-nez p1, :cond_0

    .line 610
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v4, "[CMCC_SDP] setServiceDiscovery - device is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :goto_0
    return-void

    .line 614
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getDefaultServices(Landroid/bluetooth/BluetoothDevice;)Ljava/util/ArrayList;

    move-result-object v1

    .line 615
    .local v1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 618
    .local v2, "uuids":[Landroid/os/ParcelUuid;
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SDP] Device address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 621
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMCC_SDP] Number of Uuids: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 623
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v4, "[CMCC_SDP] HFP supported"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 629
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->addSupportableServices(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 632
    .end local v0    # "address":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v4, "[SDP] HFP & SAP not supported"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2272
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2273
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mConntionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$5;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2279
    :cond_0
    return-void
.end method

.method public stopAutoConnection(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1396
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mAutoConnectionHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mAutoConnectionRunner:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1398
    if-nez p1, :cond_1

    .line 1399
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v4, "[CMAC] stopAutoConnection : device is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    :cond_0
    :goto_0
    return-void

    .line 1403
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 1404
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_2

    .line 1405
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v4, "[CMAC] stopAutoConnection : deviceSet is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1409
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnector()Lcom/samsung/android/hostmanager/connectionmanager/recovery/RecoveryHandler;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1410
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v4, "[CMAC] stopAutoConnection - mAutoConnecter is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1414
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isAutoConnectionRunning(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1415
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1417
    .local v2, "request":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 1418
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1419
    const-string v3, "AUTO_CONNECTION_STRING_STEP"

    const-string v4, "STOP_AUTO_CONNECTION"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    const/16 v4, 0x17

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public stopAutoConnectionAll()V
    .locals 6

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v4

    .line 1439
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr()Ljava/util/Set;

    move-result-object v2

    .line 1440
    .local v2, "addrSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1442
    .local v0, "AddrIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1443
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v5, "[CMAC] stopAutoConnectionAll - addrSet is Empty"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    :cond_0
    return-void

    .line 1447
    :cond_1
    if-eqz v0, :cond_0

    .line 1448
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1449
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1450
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 1451
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v3, :cond_2

    .line 1453
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v5, "[CMAC] stopAutoConnectionAll - send message for stop auto connect (bt off)"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    invoke-virtual {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->stopAutoConnection(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method public stopAutoConnectionForOtherDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "ourDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1501
    if-nez p1, :cond_1

    .line 1502
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v5, "[CMAC] stopAutoConnectionForOtherDevice - ourDevice is null"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    :cond_0
    :goto_0
    return-void

    .line 1505
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v4

    .line 1506
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr()Ljava/util/Set;

    move-result-object v2

    .line 1507
    .local v2, "addrSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1509
    .local v0, "AddrIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1510
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    const-string v5, "[CMAC] stopAutoConnectionForOtherDevice - AutoConneciton White list is Empty"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1514
    :cond_2
    if-eqz v0, :cond_0

    .line 1515
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1516
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1517
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 1518
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v3, :cond_3

    .line 1519
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1520
    invoke-virtual {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->stopAutoConnection(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1
.end method

.method public terminate()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public unsetForcePairingFlag(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2204
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMCC] unset Force paring flag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->mForcePairingFlagMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2206
    return-void
.end method
