.class public Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
.super Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
.source "SPPHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SAPConnectedDeviceListTask;,
        Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;,
        Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionTask;,
        Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SPPConnectionRetryTask;,
        Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$StartRecoveryTask;,
        Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SppInitTask;
    }
.end annotation


# static fields
.field private static final CONNECT_DELAY_TIME:I = 0x1f4

.field private static final SPP_RETRY_COUNT:I = 0x2

.field private static final SPP_RETRY_DELAY_TIME:I = 0x3e8

.field private static final SPP_STATECHECK_TIME:I = 0x11170

.field private static final START_RECOVERY_DELAY_TIME:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private StartRecoverHandler:Landroid/os/Handler;

.field private isdefaultInstanceProgress:Z

.field private mAccessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

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

.field private mConnectionStateCheckMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;",
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
            "Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionTask;",
            ">;"
        }
    .end annotation
.end field

.field private mEsapEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

.field private mHandler:Landroid/os/Handler;

.field private mInitHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 3
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)V

    .line 40
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mEsapEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    .line 42
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mAccessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    .line 44
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mHandler:Landroid/os/Handler;

    .line 46
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->isdefaultInstanceProgress:Z

    .line 48
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mInitHandler:Landroid/os/Handler;

    .line 51
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    .line 53
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionStateCheckMap:Ljava/util/HashMap;

    .line 56
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionTaskMap:Ljava/util/HashMap;

    .line 801
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->StartRecoverHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionTaskMap:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionStateCheckMap:Ljava/util/HashMap;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mHandler:Landroid/os/Handler;

    .line 69
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->isdefaultInstanceProgress:Z

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mInitHandler:Landroid/os/Handler;

    .line 71
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->isdefaultInstanceProgress:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->sapConnect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mEsapEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
    .param p1, "x1"    # Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mEsapEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mAccessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
    .param p1, "x1"    # Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mAccessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->handlePendingSPPConnection()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
    .param p1, "x1"    # Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->initWearableState(Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
    .param p1, "x1"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->retryGetDefaultInstance(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
    .param p1, "x1"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->connect(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->StartRecoverHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private connect(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 12
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    const-wide/16 v10, 0x1f4

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 244
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v9, "[Accessory] SPPHandler.Connect called"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    if-nez p1, :cond_0

    .line 247
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v8, "[Accessory] devcice is null!!"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_0
    return v6

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isBonded(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v2

    .line 253
    .local v2, "isBonded":Z
    if-nez v2, :cond_1

    .line 254
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v8, "[Accessory] devcice is unbonded"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isSetRecoveryFlag()Z

    move-result v3

    .line 261
    .local v3, "recoveryFlag":Z
    if-ne v7, v3, :cond_2

    .line 262
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v8, "[CMAC] RecoveryFlag is set(true). Cancel BR/EDR Connection"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->stopAutoConnection(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    .line 270
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->disconnectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v8

    if-ne v7, v8, :cond_4

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getACDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v1

    .line 274
    .local v1, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v1, :cond_3

    .line 275
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v8, "[CMAC] connect : deviceSet is null"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_3
    invoke-virtual {v1, v7}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRemoteFlag(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->updateACdeviceSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    move v6, v7

    .line 281
    goto :goto_0

    .line 284
    .end local v1    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "address":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionTaskMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 287
    new-instance v5, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionTask;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Ljava/lang/String;)V

    .line 288
    .local v5, "temp":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionTask;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionTaskMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .end local v5    # "temp":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionTask;
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionTaskMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionTask;

    .line 294
    .local v4, "task":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionTask;
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v8, "[Accessory]500ms delay.."

    invoke-static {v6, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 297
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->acquireWakeLock(J)V

    move v6, v7

    .line 300
    goto/16 :goto_0
.end method

.method private disconnect(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 10
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    const/4 v5, 0x0

    .line 562
    if-nez p1, :cond_0

    .line 563
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v7, "[Accessory] device is null!!"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :goto_0
    return v5

    .line 567
    :cond_0
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Accessory] accessoryManager disconnect: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v6, p1, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v2

    .line 574
    .local v2, "curState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current Connection State(SAP): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    if-ne v2, v6, :cond_2

    .line 579
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Aleady disconnected(SAP): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_1
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 583
    :cond_2
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v7, "Connection state changed to DISCONNECTING"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v6, p1, v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 587
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, "address":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionStateCheckMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 590
    new-instance v4, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Ljava/lang/String;)V

    .line 591
    .local v4, "temp":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionStateCheckMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    .end local v4    # "temp":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionStateCheckMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;

    .line 595
    .local v1, "checkTask":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;
    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;->resetInitialState(Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 597
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 598
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mHandler:Landroid/os/Handler;

    const-wide/32 v8, 0x11170

    invoke-virtual {v6, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 600
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mAccessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    if-eqz v6, :cond_1

    .line 602
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SamAccessoryManager.disconnect(SPP) : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mAccessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->disconnect(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 609
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "checkTask":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;
    .end local v2    # "curState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    :catch_0
    move-exception v3

    .line 610
    .local v3, "e":Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 611
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Accessory] SecurityException: connect request failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 612
    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 611
    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 615
    .end local v3    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 616
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 617
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Accessory] Exception: connect request failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private disconnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;Z)Z
    .locals 6
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "isCancel"    # Z

    .prologue
    const/4 v2, 0x0

    .line 198
    if-nez p1, :cond_0

    .line 199
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v4, "[Accessory]device is null!!"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :goto_0
    return v2

    .line 206
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;

    .line 209
    .local v1, "task":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;
    if-eqz v1, :cond_1

    .line 210
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionTask;

    .line 222
    .local v0, "cTask":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionTask;
    if-eqz v0, :cond_2

    .line 223
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Accessory] unset BREDR flag & remove pending SPP Connection task for address: !!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    .line 230
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    if-nez p3, :cond_3

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 235
    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isDisconnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 236
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v4, "[Accessory] Already Disconnected!!"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 240
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->disconnect(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method private disconnectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 7
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 749
    if-nez p1, :cond_1

    .line 750
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v5, "disconnect SCS device is null"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :cond_0
    :goto_0
    return v3

    .line 754
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v5, p1, v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v2

    .line 755
    .local v2, "state":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v2, v5}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v2, v5}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->LOGGED_OUT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v2, v5}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 756
    :cond_2
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WS] SCS Service State is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 760
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 761
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 762
    const-string v3, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v5, "[CMAC] disconnection with SCS"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    const/16 v5, 0x24

    invoke-virtual {v3, v5, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    move v3, v4

    .line 767
    goto :goto_0

    .line 771
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "itemBundle":Landroid/os/Bundle;
    :cond_3
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v2, v5}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 772
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v5, "[CMAC] SCS still disconnecting. Wait for SCS disconnection"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 773
    goto :goto_0
.end method

.method private handlePendingSPPConnection()V
    .locals 11

    .prologue
    .line 514
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v8, "[CMAC] handlePendingSPPConnection entry"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 519
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 520
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v8, "[CMAC] handlePendingSPPConnection: BluetoothAdapter not enabled..."

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_0
    return-void

    .line 524
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    .line 525
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getRequestedDeviceList()Ljava/util/Set;

    move-result-object v3

    .line 527
    .local v3, "devAddrList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 529
    .local v4, "devAddress":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getSPPWaitingConnectionInfo()Ljava/util/HashMap;

    move-result-object v0

    .line 532
    .local v0, "SPPWaitingConnectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 534
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CMAC] SPP connection is waiting for device address "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-static {v4}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v6

    .line 539
    .local v6, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->removeSPPWaitingConnectionInfo(Ljava/lang/String;)V

    .line 541
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 543
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-static {v6}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v5

    .line 544
    .local v5, "itemBundle":Landroid/os/Bundle;
    const-string v8, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 545
    const-string v8, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v9, "[CMAC] connection with SPP"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    const/16 v9, 0x15

    invoke-virtual {v8, v9, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 553
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "itemBundle":Landroid/os/Bundle;
    .end local v6    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_2
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CMAC] SPP connection is not waiting for device address "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private initWearableState(Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;)V
    .locals 2
    .param p1, "accessoryManager"    # Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    .prologue
    .line 123
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v1, "[CMWS] init Wearable State (SAP)"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->updateSPPConnectedDevices(Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;)V

    .line 131
    return-void
.end method

.method private isAutoConnectionRunning(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 781
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 782
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v3, "[Accessory][RETRY] address is null!!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :goto_0
    return v1

    .line 786
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    .line 787
    invoke-virtual {v2, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getACDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v0

    .line 789
    .local v0, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v0, :cond_2

    .line 790
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v3, "[Accessory][RETRY] deviceSet is null!!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 794
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnectionFlag()Z

    move-result v1

    .line 796
    .local v1, "flag":Z
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Accessory][RETRY] isAutoConnectionRunning : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private retryGetDefaultInstance(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 6
    .param p1, "wDevice"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 469
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->isdefaultInstanceProgress:Z

    if-nez v2, :cond_1

    .line 471
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v3, "[CMSCS] initialize once again for getDefaultInstance after 2 sec as mAccessoryManager is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 474
    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v0

    .line 475
    .local v0, "curState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current Connection State(SPP): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    if-ne v0, v2, :cond_0

    .line 478
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v3, "[CM_SPP] change state Connecting => Disconnected"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 480
    invoke-virtual {v2, p1, v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 483
    :cond_0
    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SppInitTask;

    invoke-direct {v1, p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SppInitTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;)V

    .line 484
    .local v1, "task":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SppInitTask;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mInitHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 490
    .end local v0    # "curState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    .end local v1    # "task":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SppInitTask;
    :goto_0
    return-void

    .line 488
    :cond_1
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v3, "[CMSCS] getDefaultInstance is in progress, connect SPP after success"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sapConnect(Ljava/lang/String;)Z
    .locals 10
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 305
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 464
    :cond_0
    :goto_0
    return v6

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getWaitingConnectionInfo()Ljava/util/HashMap;

    move-result-object v0

    .line 311
    .local v0, "WaitingConnectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 312
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sapConnect: device is not in waiting connection map, do not connect spp "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->removeWaitingConnectionInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getACDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v3

    .line 322
    .local v3, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-eqz v3, :cond_3

    .line 323
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnectionFlag()Z

    move-result v7

    if-nez v7, :cond_0

    .line 328
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    .line 329
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 328
    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v2

    .line 331
    .local v2, "curState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current Connection State(SPP): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    if-ne v2, v6, :cond_4

    .line 335
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Aleady connected(SPP): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :goto_1
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 339
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    .line 340
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 339
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 343
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v7, "Connection state changed to CONNECTING"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionStateCheckMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 346
    new-instance v4, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Ljava/lang/String;)V

    .line 347
    .local v4, "temp":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionStateCheckMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .end local v4    # "temp":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionStateCheckMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;

    .line 351
    .local v1, "checkTask":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;
    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;->resetInitialState(Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 353
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 354
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mHandler:Landroid/os/Handler;

    const-wide/32 v8, 0x11170

    invoke-virtual {v6, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 460
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;

    invoke-direct {v6, p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1ConnectTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 461
    .local v5, "thread":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method private stopAutoConnection(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 726
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v3, "[Accessory] stopAutoConnection requst"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    if-nez p1, :cond_1

    .line 729
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v3, "[Accessory] stopAutoConnection : device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v2

    .line 735
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 734
    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->cancelAutoConnectionRunner(Landroid/bluetooth/BluetoothDevice;)V

    .line 736
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->isAutoConnectionRunning(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 737
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 739
    .local v1, "request":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v0

    .line 740
    .local v0, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 741
    const-string v2, "AUTO_CONNECTION_STRING_STEP"

    const-string v3, "STOP_AUTO_CONNECTION"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    const/16 v3, 0x17

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 109
    return-void
.end method

.method public onCancelRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 183
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v1, "[Accessory] onCancelRequested"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->disconnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public onConnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 150
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v4, "[Accessory] onConnectRequested"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-nez p1, :cond_0

    .line 153
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v4, "[Accessory]device is null!!"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    return v2

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->removeSCSWaitingConnectionInfo(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 161
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v4, "[Accessory] Already Connected!!"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 166
    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SPPConnectionRetryTask;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SPPConnectionRetryTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;I)V

    .line 168
    .local v1, "temp":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .end local v1    # "temp":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;

    .line 174
    .local v0, "task":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->reset()V

    .line 175
    invoke-virtual {v0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;->setMode(I)V

    .line 177
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->connect(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

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

    .line 646
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v9, "[Accessory] onConnectionEventReceived"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    if-nez p1, :cond_1

    .line 649
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v8, "[Accessory]device is null!!"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_0
    :goto_0
    return v6

    .line 653
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionStateCheckMap:Ljava/util/HashMap;

    .line 654
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    move v6, v7

    .line 655
    goto :goto_0

    .line 658
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionStateCheckMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;

    .line 660
    .local v4, "stateCheck":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;
    if-eqz v4, :cond_3

    .line 661
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v9, "Stop connecting/disconnecting state check"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionStateCheckMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 667
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;

    .line 669
    .local v5, "task":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;
    if-eqz v5, :cond_0

    .line 674
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->isAutoConnectionRunning(Ljava/lang/String;)Z

    move-result v1

    .line 676
    .local v1, "isRunning":Z
    if-eqz v1, :cond_4

    .line 679
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v8, "[Accessory] retry stop!! auto connection is running!!"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 687
    :cond_4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 688
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_5

    .line 691
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v8, "[Accessory] retry stop!! auto connection is running!!"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 697
    :cond_5
    const-string v8, "BUNDLE_CMKEY_STRING_SERVICESTATE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 701
    .local v3, "state":Ljava/lang/String;
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 703
    const-string v8, "BUNDLE_CMKEY_STRING_SAACCESSORY_DISCONNECT_REASON"

    invoke-virtual {p2, v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 705
    .local v2, "reason":I
    const/16 v6, 0x100

    if-ne v2, v6, :cond_7

    .end local v2    # "reason":I
    :cond_6
    :goto_1
    move v6, v7

    .line 721
    goto/16 :goto_0

    .line 710
    .restart local v2    # "reason":I
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 711
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 714
    .end local v2    # "reason":I
    :cond_8
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 717
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Accessory] retry stop : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

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
    .line 191
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v1, "[Accessory] onDisconnectRequested"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->disconnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public removeSPPStateCheckTaskOnUnknwonError(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 3
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 625
    if-nez p1, :cond_1

    .line 627
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v2, "[Accessory]device is null!!"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v2, "[Accessory] removeSPPStateCheckTeskOnUnknwonError"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionStateCheckMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;

    .line 635
    .local v0, "stateCheck":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionStateCheck;
    if-eqz v0, :cond_0

    .line 636
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v2, "Stop connecting/disconnecting state check"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionStateCheckMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public terminate()V
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v1, "terminate"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mConnectionTaskMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 119
    return-void
.end method

.method public updateConnectedState(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 135
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v3, "[CMWS] update Connected State (SAP)"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mAccessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    if-nez v2, :cond_0

    .line 138
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->TAG:Ljava/lang/String;

    const-string v3, "[CMWS] AccessoryManager is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SAPConnectedDeviceListTask;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->mAccessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    invoke-direct {v1, p0, v2, p1}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SAPConnectedDeviceListTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 143
    .local v1, "uTask":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SAPConnectedDeviceListTask;
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 144
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
