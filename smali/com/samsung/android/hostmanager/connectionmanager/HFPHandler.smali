.class public Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;
.super Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
.source "HFPHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;,
        Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$HFPConnectionRetryTask;,
        Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$StartRecoveryTask;
    }
.end annotation


# static fields
.field private static final CONNECT_DELAY_TIME:I = 0x1f4

.field private static final DISABLE_INBANDRING:I = 0x0

.field private static final HFP_INTERNAL_RETRY_COUNT:I = 0x2

.field private static final HFP_RETRY_COUNT:I = 0x1

.field private static final HFP_RETRY_DELAY_TIME:I = 0x3e8

.field private static final START_RECOVERY_DELAY_TIME:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mConnectionRetryTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mStartRecoverHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HFP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 2
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    const/4 v1, 0x0

    .line 53
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)V

    .line 40
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 42
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    .line 48
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionTaskMap:Ljava/util/HashMap;

    .line 75
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 733
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mStartRecoverHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionTaskMap:Ljava/util/HashMap;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method private Disconnect(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 9
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    const/4 v4, 0x0

    .line 537
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v7, "Disconnect"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    if-nez p1, :cond_1

    .line 579
    :cond_0
    :goto_0
    return v4

    .line 542
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v6, :cond_0

    .line 545
    const/4 v4, 0x0

    .line 546
    .local v4, "ret":Z
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 553
    .local v0, "bDevice":Landroid/bluetooth/BluetoothDevice;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v6, p1, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v1

    .line 556
    .local v1, "curState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current Connection State(HFP): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    if-ne v1, v6, :cond_2

    .line 560
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Aleady disconnected(HFP): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 571
    .end local v1    # "curState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    :catch_0
    move-exception v2

    .line 572
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v7, "Exception"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/4 v4, 0x0

    .line 577
    goto :goto_0

    .line 564
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "curState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    :cond_2
    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v5

    .line 565
    .local v5, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v6, v5, v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 566
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v7, "Connection HFP state changed to DISCONNECTING"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothHeadsetFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothHeadsetInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-interface {v6, v7, v0}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothHeadsetInterface;->disconnect(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto/16 :goto_0

    .line 574
    .end local v1    # "curState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    .end local v5    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :catch_1
    move-exception v3

    .line 575
    .local v3, "er":Ljava/lang/Error;
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v7, "Error"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;Landroid/bluetooth/BluetoothHeadset;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->initWearableState(Landroid/bluetooth/BluetoothHeadset;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;
    .param p1, "x1"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->connect(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mStartRecoverHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->hfpConnect(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method private connect(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 10
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v4, 0x0

    .line 305
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v6, "Connect"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    if-nez p1, :cond_0

    .line 308
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v6, "[HFPCONNECTION] Devcice is null"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_0
    return v4

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isBonded(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v1

    .line 314
    .local v1, "isBonded":Z
    if-nez v1, :cond_1

    .line 315
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v6, "[HFPCONNECTION] Devcice is unbonded"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v5, :cond_2

    .line 320
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v6, "[HFPCONNECTION] BluetoothHeadset is null"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->stopAutoConnection(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    .line 328
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->disconnectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    .line 330
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "address":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionTaskMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 333
    new-instance v3, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;Landroid/bluetooth/BluetoothDevice;)V

    .line 334
    .local v3, "temp":Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionTaskMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .end local v3    # "temp":Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionTaskMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;

    .line 339
    .local v2, "task":Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;->initRetryCount()V

    .line 342
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v5, "[HFPCONNECTION]500ms delay.."

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 344
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->acquireWakeLock(J)V

    .line 347
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private disconnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 501
    if-nez p1, :cond_0

    .line 502
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v3, "device is null!!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const/4 v2, 0x0

    .line 533
    :goto_0
    return v2

    .line 509
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;

    .line 512
    .local v1, "task":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;
    if-eqz v1, :cond_1

    .line 513
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 517
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;

    .line 525
    .local v0, "cTask":Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;
    if-eqz v0, :cond_2

    .line 526
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 527
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    .line 531
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->Disconnect(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v2

    goto :goto_0
.end method

.method private disconnectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 6
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 689
    if-nez p1, :cond_1

    .line 690
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v4, "disconnect SCS device is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v2

    .line 695
    .local v2, "state":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->LOGGED_OUT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 696
    :cond_2
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WS] SCS Service State is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 700
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 701
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 702
    const-string v3, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v4, "[CMAC] disconnection with SCS"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    const/16 v4, 0x24

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private hfpConnect(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 22
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "retrycount"    # I

    .prologue
    .line 351
    if-nez p1, :cond_1

    .line 352
    const/4 v15, 0x0

    .line 481
    :cond_0
    :goto_0
    return v15

    .line 355
    :cond_1
    const/4 v15, 0x0

    .line 357
    .local v15, "ret":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getWaitingConnectionInfo()Ljava/util/HashMap;

    move-result-object v5

    .line 360
    .local v5, "WaitingConnectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 363
    sget-object v18, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "hfpConnect: device is not in waiting connection map, do not connect hfp "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->removeWaitingConnectionInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v17

    .line 375
    .local v17, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    .line 377
    .local v6, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 378
    sget-object v18, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "BT Adapter enabled, retrycount "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v9

    .line 384
    .local v9, "curState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v18, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Current Connection State(HFP): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Device:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    sget-object v18, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v18

    if-ne v9, v0, :cond_5

    .line 388
    sget-object v18, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Aleady connected(HFP): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 469
    .end local v6    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v9    # "curState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    :cond_4
    :goto_1
    if-nez v15, :cond_0

    if-nez p2, :cond_0

    .line 470
    sget-object v18, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v19, "[CMSC] Bluetooth Headset connect request : FALSE"

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    sget-object v18, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v19, "[CMSC]Connection HFP state changed to DISCONNECTED"

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v20, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    goto/16 :goto_0

    .line 391
    .restart local v6    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v9    # "curState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    :cond_5
    const/4 v13, 0x0

    .line 392
    .local v13, "isDeviceConnected":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 393
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 396
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v10

    .line 397
    .local v10, "devicelist":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v10, :cond_7

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 398
    :cond_7
    sget-object v18, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v19, "[CMWS] No HFP connected device, proceed with connecting"

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_8
    if-nez v13, :cond_b

    .line 414
    sget-object v18, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v19, "Connection HFP state changed to CONNECTING"

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v20, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 417
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothHeadsetFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothHeadsetInterface;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothHeadsetInterface;->connect(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v15

    goto/16 :goto_1

    .line 400
    :cond_9
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_a
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 401
    .local v4, "Connecteddevice":Landroid/bluetooth/BluetoothDevice;
    sget-object v19, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[CMWS] HFP Connected device :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 405
    sget-object v19, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[CMWS] HFP Connected already for the same device :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v13, 0x1

    goto :goto_2

    .line 421
    .end local v4    # "Connecteddevice":Landroid/bluetooth/BluetoothDevice;
    :cond_b
    const/4 v15, 0x1

    .line 422
    sget-object v18, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v19, "[CMWS] HFP Connected already for this device. Set wearable state to Connected"

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v20, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 425
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x12

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isDisconnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 429
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 432
    .local v8, "bundle":Landroid/os/Bundle;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v14

    .line 433
    .local v14, "itemBundle":Landroid/os/Bundle;
    const-string v18, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 435
    const-string v18, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v19, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 436
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v19

    .line 435
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    sget-object v18, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v19, "[CMAC] Request SPP Connectoin as HFP Connected already..."

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v18

    const/16 v19, 0x15

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 460
    .end local v6    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v9    # "curState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    .end local v10    # "devicelist":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v13    # "isDeviceConnected":Z
    .end local v14    # "itemBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v11

    .line 461
    .local v11, "e":Ljava/lang/Exception;
    sget-object v18, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception: HFP connect "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const/4 v15, 0x0

    .line 467
    goto/16 :goto_1

    .line 446
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v6    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_c
    :try_start_2
    sget-object v18, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "BT Adapter disabled, scheduling retry "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 449
    .local v7, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionTaskMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;

    .line 450
    .local v16, "task":Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;
    if-eqz v16, :cond_d

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const-wide/16 v20, 0xc8

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 464
    .end local v6    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v7    # "address":Ljava/lang/String;
    .end local v16    # "task":Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;
    :catch_1
    move-exception v12

    .line 465
    .local v12, "er":Ljava/lang/Error;
    sget-object v18, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error: HFP connect "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 456
    .end local v12    # "er":Ljava/lang/Error;
    .restart local v6    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v7    # "address":Ljava/lang/String;
    .restart local v16    # "task":Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;
    :cond_d
    :try_start_3
    sget-object v18, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v19, "task is null. No more retry.."

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method private initWearableState(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 11
    .param p1, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    const/4 v10, 0x1

    .line 98
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v7, "[CMWS] init Wearable State (HFP)"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    .line 101
    .local v3, "devicelist":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 102
    :cond_0
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v7, "[CMWS] No HFP connected device"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v7, "[CMWS] get AC device list for HFP"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr()Ljava/util/Set;

    move-result-object v0

    .line 109
    .local v0, "AcDevices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 111
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 113
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CMWS] Adapter connected device address: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v5

    .line 116
    .local v5, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v5, :cond_3

    .line 118
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v10, :cond_3

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putRequestedDeviceList(Ljava/lang/String;)Z

    .line 122
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CMWS] Set already HFP connected device to Wearable State : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 124
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 122
    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v7, v5, v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7, v5, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v4

    .line 129
    .local v4, "isConnected":Z
    if-ne v10, v4, :cond_3

    .line 131
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v8, "[CMWS] All profiles are connected, update state map to CONNECTED"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getNotifyEventTask()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->setState2Map(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 141
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "isConnected":Z
    .end local v5    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    .line 142
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr_bleAcs()Ljava/util/Set;

    move-result-object v1

    .line 144
    .local v1, "AcDevices_bleACS":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-ne v6, v10, :cond_8

    .line 146
    :cond_5
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v7, "[CMWS] No AC device for HFP (or Data Cleared) or First time CM is up"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->clearAlreadyHFPConnectedDeviceList()Z

    .line 149
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 151
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CMWS] Adapter connected device address: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v5

    .line 154
    .restart local v5    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v5, :cond_6

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isRequestedDeviceList(Ljava/lang/String;)Z

    move-result v7

    if-ne v10, v7, :cond_7

    .line 159
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CMWS] Set already HFP connected device to Wearable State : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 161
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 159
    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v7, v5, v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7, v5, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v4

    .line 166
    .restart local v4    # "isConnected":Z
    if-ne v10, v4, :cond_6

    .line 168
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v8, "[CMWS] All profiles are connected, update state map to CONNECTED"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getNotifyEventTask()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->setState2Map(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 176
    .end local v4    # "isConnected":Z
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putAlreadyHFPConnectedDeviceList(Ljava/lang/String;)Z

    .line 178
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CMWS] add device to putAlreadyHFPConnectedDeviceList list : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 180
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 178
    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 186
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_8
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v7, "[CMWS] There are some ble ACS device. This can not be Data Cleared)"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private isAutoConnectionRunning(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 712
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 713
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v3, "[CMAC][HFP][RETRY] address is null!!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :goto_0
    return v1

    .line 717
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    .line 718
    invoke-virtual {v2, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getACDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 720
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_2

    .line 721
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v3, "[CMAC][HFP][RETRY] deviceSet is null!!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 725
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnectionFlag()Z

    move-result v1

    .line 727
    .local v1, "flag":Z
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMAC][HFP][RETRY] isAutoConnectionRunning : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopAutoConnection(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 669
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v3, "[Accessory] stopAutoConnection requst"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    if-nez p1, :cond_1

    .line 672
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v3, "[Accessory] stopAutoConnection : device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->isAutoConnectionRunning(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 677
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 679
    .local v1, "request":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v0

    .line 680
    .local v0, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 681
    const-string v2, "AUTO_CONNECTION_STRING_STEP"

    const-string v3, "STOP_AUTO_CONNECTION"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    const/16 v3, 0x17

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public initialize()V
    .locals 4

    .prologue
    .line 65
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v2, "initialize"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 69
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 73
    :cond_0
    return-void
.end method

.method public isHfpConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 2
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 297
    const/4 v0, 0x1

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancelRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 487
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v1, "onCancelRequested"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->disconnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public onConnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 270
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v3, "onConnectRequested"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    if-nez p1, :cond_0

    .line 273
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v3, "device is null!!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v2, 0x0

    .line 292
    :goto_0
    return v2

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->removeSCSWaitingConnectionInfo(Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 281
    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$HFPConnectionRetryTask;

    invoke-direct {v1, p0, p1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$HFPConnectionRetryTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;I)V

    .line 283
    .local v1, "temp":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .end local v1    # "temp":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;

    .line 289
    .local v0, "task":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->reset()V

    .line 290
    invoke-virtual {v0, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->setMode(I)V

    .line 292
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->connect(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v2

    goto :goto_0
.end method

.method public onConnectionEventReceived(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 584
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v9, "onConnectionEventReceived"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    if-nez p1, :cond_1

    .line 587
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v8, "device is null!!"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_0
    :goto_0
    return v6

    .line 591
    :cond_1
    if-nez p2, :cond_2

    .line 592
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v8, "data is null!!"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v8, :cond_3

    .line 597
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v8, "mBluetoothHeadset is null!!"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :cond_3
    const-string v8, "BUNDLE_CMKEY_STRING_PREVIOUS_SERVICESTATE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, "prevState":Ljava/lang/String;
    const-string v8, "BUNDLE_CMKEY_STRING_SERVICESTATE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 604
    .local v4, "state":Ljava/lang/String;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_4

    .line 605
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 606
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v9, "After checking the connected state, call the setHeadsetSetting method"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 609
    .local v1, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothHeadsetFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothHeadsetInterface;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-interface {v8, v9, v1, v6}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothHeadsetInterface;->setHeadsetSettings(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    .line 613
    .end local v1    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    move v6, v7

    .line 614
    goto :goto_0

    .line 617
    :cond_5
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;

    .line 619
    .local v5, "task":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;
    if-eqz v5, :cond_0

    .line 624
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->isAutoConnectionRunning(Ljava/lang/String;)Z

    move-result v2

    .line 626
    .local v2, "isRunning":Z
    if-eqz v2, :cond_6

    .line 629
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v8, "retry stop!! auto connection is running!!"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 637
    :cond_6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 638
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_7

    .line 641
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v8, "retry stop!! auto connection is running!!"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 651
    :cond_7
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 652
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 654
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 655
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_1
    move v6, v7

    .line 664
    goto/16 :goto_0

    .line 657
    :cond_9
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 660
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retry stop : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public onDisconnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 495
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v1, "onDisconnectRequested"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->disconnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public terminate()V
    .locals 3

    .prologue
    .line 218
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v2, "terminate"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 222
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mConnectionTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 224
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 226
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 227
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 229
    :cond_0
    return-void
.end method

.method public updateConnectedState(Landroid/bluetooth/BluetoothDevice;)V
    .locals 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 233
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v6, "[CMWS] update Connected State (HFP)"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    if-nez p1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v5, :cond_2

    .line 239
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v6, "[CMWS] BluetoothHeadset is null"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 244
    .local v2, "devicelist":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 245
    :cond_3
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    const-string v6, "[CMWS] No HFP connected device"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 250
    .local v1, "bDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "targetAddr":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 255
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 257
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMWS] Set HFP connected device to Wearable State : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v4

    .line 260
    .local v4, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v6, v4, v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    goto :goto_1
.end method
