.class public Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;
.super Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
.source "SCSHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$ScsInitTask;
    }
.end annotation


# static fields
.field private static final SCS_MAX_INIT_RETRY_COUNT:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private isdefaultInstanceProgress:Z

.field private mAccessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

.field private mEsapEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

.field private mInitHandler:Landroid/os/Handler;

.field private retryInitCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "SCSHandler"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 3
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)V

    .line 25
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->mEsapEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    .line 27
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->mAccessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    .line 29
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->isdefaultInstanceProgress:Z

    .line 31
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->mInitHandler:Landroid/os/Handler;

    .line 32
    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->retryInitCount:I

    .line 37
    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->retryInitCount:I

    .line 38
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->isdefaultInstanceProgress:Z

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->mInitHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->isdefaultInstanceProgress:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->mEsapEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;
    .param p1, "x1"    # Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->mEsapEventCallback:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->mAccessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;
    .param p1, "x1"    # Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->mAccessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->handlePendingSCSConnections()V

    return-void
.end method

.method private connect(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "address":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 166
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v4, "[CMSCS]Device is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_0
    return v2

    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 172
    if-nez v0, :cond_1

    .line 173
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v4, "[CMSCS]Device address is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_1
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CMSCS]SCS connect("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v4, p1, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v4

    if-ne v4, v3, :cond_2

    .line 180
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v4, "[CMSCS] Already Connected!!"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->mAccessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    if-eqz v4, :cond_3

    .line 186
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SamAccessoryManager.connect(SCS) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v2, p1, v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 189
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v4, "[CMSCS]SCS Connection state changed to CONNECTING"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v2

    const-string v4, "SCS Connection Requested(CM)"

    invoke-virtual {v2, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->mAccessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    const/16 v4, 0x10

    invoke-virtual {v2, v0, v4}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->connect(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, v3

    .line 210
    goto/16 :goto_0

    .line 198
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v4, "[CMSCS] SamAccessoryManager.connect(SCS) exception"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 204
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v4, "[CMSCS] mAccessoryManager is null, handle it before request SCS"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->setSCSWaitingConnectionInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->retryGetDefaultInstance()V

    goto/16 :goto_0
.end method

.method private disconnect(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 303
    const/4 v0, 0x0

    .line 305
    .local v0, "address":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 306
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v7, "[CMSCS]Device is null"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_0
    :goto_0
    return v5

    .line 310
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 312
    if-nez v0, :cond_2

    .line 313
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v7, "[CMSCS]Device address is null"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->removeSCSWaitingConnectionInfo(Ljava/lang/String;)V

    .line 320
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CMSCS]SCS disconnect("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7, p1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v4

    .line 323
    .local v4, "state":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v4, v7}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v6, :cond_3

    .line 324
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v7, "[CMSCS] Already Disconnecting !. ignore request"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7, p1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isDisconnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v7

    if-ne v7, v6, :cond_4

    .line 329
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v8, "[CMSCS] Already Disconnected!!"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isRemoteflagEnable(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v7

    if-ne v6, v7, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->setRemoteflag(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Z)V

    .line 338
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 340
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v3

    .line 341
    .local v3, "itemBundle":Landroid/os/Bundle;
    const-string v6, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 342
    const-string v6, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v7, "[CMSCS] establish connection with BT Profile(SPP & HFP) after SCS disconnected"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    const/16 v7, 0x15

    invoke-virtual {v6, v7, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 353
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "itemBundle":Landroid/os/Bundle;
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->mAccessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    if-eqz v5, :cond_5

    .line 355
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v5

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v5, p1, v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 357
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v7, "[CMSCS]SCS Connection state changed to DISCONNECTING"

    invoke-static {v5, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SamAccessoryManager.disconnect(SCS) : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v5

    const-string v7, "SCS Disconnection Requested(CM)"

    invoke-virtual {v5, v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V

    .line 365
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->mAccessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    const/16 v7, 0x10

    invoke-virtual {v5, v0, v7}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->disconnect(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    move v5, v6

    .line 373
    goto/16 :goto_0

    .line 367
    :catch_0
    move-exception v2

    .line 369
    .local v2, "e":Ljava/io/IOException;
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v7, "[CMSCS] SamAccessoryManager.disconnect(SCS) exception"

    invoke-static {v5, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handlePendingSCSConnections()V
    .locals 11

    .prologue
    .line 258
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v8, "[CMAC] handlePendingSCSConnections entry"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isWifiOr3GConnected()Z

    move-result v4

    .line 261
    .local v4, "isWifi3GEnabled":Z
    if-nez v4, :cond_1

    .line 263
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v8, "[CMAC] handlePendingSCSConnections : isWifi3GEnabled false"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    return-void

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    .line 268
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getRequestedDeviceList()Ljava/util/Set;

    move-result-object v2

    .line 270
    .local v2, "devAddrList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 272
    .local v3, "devAddress":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getSCSWaitingConnectionInfo()Ljava/util/HashMap;

    move-result-object v0

    .line 275
    .local v0, "SCSWaitingConnectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 277
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CMAC] SCS connection is waiting for device address "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v6

    .line 282
    .local v6, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->removeSCSWaitingConnectionInfo(Ljava/lang/String;)V

    .line 284
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 286
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {v6}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v5

    .line 287
    .local v5, "itemBundle":Landroid/os/Bundle;
    const-string v8, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v1, v8, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 288
    const-string v8, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v9, "[CMAC] connection with SCS"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    const/16 v9, 0x15

    invoke-virtual {v8, v9, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 296
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v5    # "itemBundle":Landroid/os/Bundle;
    .end local v6    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_2
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CMAC] SCS connection is not waiting for device address "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private retryGetDefaultInstance()V
    .locals 4

    .prologue
    .line 215
    iget v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->retryInitCount:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 217
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v2, "[CMSCS] retryGetDefaultInstance , already max retry happened"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->isdefaultInstanceProgress:Z

    if-nez v1, :cond_1

    .line 224
    iget v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->retryInitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->retryInitCount:I

    .line 225
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v2, "[CMSCS] initialize once again for getDefaultInstance after 2 sec as mAccessoryManager is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$ScsInitTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$ScsInitTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;)V

    .line 228
    .local v0, "task":Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$ScsInitTask;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->mInitHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 232
    .end local v0    # "task":Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$ScsInitTask;
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v2, "[CMSCS] getDefaultInstance is in progress, connect SCS after success"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 72
    return-void
.end method

.method public onCancelRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 122
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v1, "onCancelRequested"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->disconnect(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z

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

    .line 84
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v4, "onConnectRequested"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isWifiOr3GConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v4, "[CMSCS] isWifiOr3GConnected is false, Don\'t connect SCS, set SCS waiting Info "

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->setSCSWaitingConnectionInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    return v2

    .line 92
    :cond_0
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v4, "[CMSCS] isWifiOr3GConnected is true, continue SCS Connection"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->removeSCSWaitingConnectionInfo(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isScsPreference(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 97
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMAC] SCS preference is false. Dont Connect SCS for device  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isDisconnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v1

    .line 104
    .local v1, "isSPPDisConnected":Z
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isDisconnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v0

    .line 105
    .local v0, "isHFPDisConnected":Z
    if-ne v1, v5, :cond_2

    if-ne v0, v5, :cond_2

    .line 107
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v3, "[CMSC] Connecting SCS as SPP & HFP are in disconnected state"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->connect(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z

    move-result v2

    goto :goto_0

    .line 112
    :cond_2
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v4, "[CMSC] Ignored Connecting SCS as SPP & HFP not in disconnected state"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConnectionEventReceived(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 138
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v5, "onConnectionEventReceived"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-nez p1, :cond_1

    .line 141
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v5, "device is null!!"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    :goto_0
    return v3

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v4, p1, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v0

    .line 147
    .local v0, "SCSstate":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    if-ne v0, v4, :cond_0

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isScsRetryRecoveried()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v2

    .line 151
    .local v2, "itemBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    const-string v3, "RECONNECTION_STRING_STEP"

    const-string v4, "INIT_RECOVERY_RETRY_CNT_SCS"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    const/16 v4, 0x18

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 154
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v4, "onConnectionEventReceived: Retry count is initialized to 0"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onDisconnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 130
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v1, "onDisconnectRequested"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->disconnect(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)I
    .locals 15
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "targetAppId"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "cc"    # Ljava/lang/String;
    .param p6, "email"    # Ljava/lang/String;
    .param p7, "appSecret"    # Ljava/lang/String;
    .param p8, "dataNetwork"    # Z
    .param p9, "mcc"    # I
    .param p10, "mnc"    # I
    .param p11, "tokenSecret"    # Ljava/lang/String;

    .prologue
    .line 394
    const v14, -0x4ffffffd

    .line 396
    .local v14, "result":I
    new-instance v1, Lcom/samsung/android/sdk/accessorymanager/SamAccount;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/sdk/accessorymanager/SamAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V

    .line 400
    .local v1, "mSamAccount":Lcom/samsung/android/sdk/accessorymanager/SamAccount;
    :try_start_0
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMSCS] setAccount called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->activate()I

    move-result v14

    .line 407
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMSCS] setAccount result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    return v14

    .line 409
    :catch_0
    move-exception v13

    .line 410
    .local v13, "e":Ljava/io/IOException;
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMSCS] IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public terminate()V
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->TAG:Ljava/lang/String;

    const-string v1, "terminate"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
