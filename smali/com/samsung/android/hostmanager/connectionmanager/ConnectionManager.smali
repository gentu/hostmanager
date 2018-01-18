.class public Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
.super Landroid/app/Service;
.source "ConnectionManager.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$KillSelfProcessTask;
    }
.end annotation


# static fields
.field private static final MSG_BT_ADAPTER_ENABLE_RETRY:I = 0x65

.field private static final MSG_GET_ANDROID_RESOURCES:I = 0x66

.field private static TAG:Ljava/lang/String;

.field private static companyName:Ljava/lang/String;

.field public static excutor:Ljava/util/concurrent/ExecutorService;

.field private static mContext:Landroid/content/Context;

.field private static mContextMutex:Ljava/lang/Object;

.field private static mInstance:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;


# instance fields
.field private CM_INIT_FLAG:Z

.field private hostRandomLEAddress:Ljava/lang/String;

.field private mBtAdapterEnableRetryCount:I

.field private mBtManager:Landroid/bluetooth/BluetoothManager;

.field private mConnectionController:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

.field private mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

.field private mDiscoveryController:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

.field private mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

.field private mGetAndroidResourcesRetryCount:I

.field private mIsRandomLEFlagUpdated:Z

.field private mIsRandomLESupported:Z

.field private mMessageDispatcher:Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;

.field private mMessagePublisher:Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;

.field private mPolicyDecision:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mServiceController:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

.field private mStub:Lcom/sec/android/api/iface/IConnectionManager$Stub;

.field private mSubscriberManager:Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWearableState:Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

.field private selfHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    const-string v0, "ConnectionManager"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    .line 54
    const-string v0, "samsung"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->companyName:Ljava/lang/String;

    .line 56
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->excutor:Ljava/util/concurrent/ExecutorService;

    .line 58
    sput-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mContext:Landroid/content/Context;

    .line 60
    sput-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mInstance:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mContextMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->CM_INIT_FLAG:Z

    .line 69
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mIsRandomLEFlagUpdated:Z

    .line 70
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mIsRandomLESupported:Z

    .line 71
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->hostRandomLEAddress:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mWearableState:Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    .line 145
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mMessageDispatcher:Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;

    .line 147
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mMessagePublisher:Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;

    .line 149
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mDiscoveryController:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

    .line 151
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mConnectionController:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .line 153
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mServiceController:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    .line 155
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .line 157
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mSubscriberManager:Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;

    .line 159
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mPolicyDecision:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    .line 161
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .line 163
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mBtManager:Landroid/bluetooth/BluetoothManager;

    .line 165
    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mBtAdapterEnableRetryCount:I

    .line 166
    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mGetAndroidResourcesRetryCount:I

    .line 168
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->selfHandler:Landroid/os/Handler;

    .line 522
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$2;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mStub:Lcom/sec/android/api/iface/IConnectionManager$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    .line 50
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mBtAdapterEnableRetryCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->startConnectionManager()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->logfileDump()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    .line 50
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mGetAndroidResourcesRetryCount:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->initialize()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isCMInit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestAsyncCmd(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Lcom/sec/android/api/iface/CVMessage;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestSyncCmd(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Lcom/sec/android/api/iface/CVMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestEventSubscription(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestEventUnsubscription(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)V

    return-void
.end method

.method private bindServiceManager(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 404
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 406
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "intent.getAction() == null!"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v1, 0x0

    .line 410
    :goto_0
    return-object v1

    .line 409
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent Action Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mStub:Lcom/sec/android/api/iface/IConnectionManager$Stub;

    goto :goto_0
.end method

.method public static getCMMainLooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 455
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mContextMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 448
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mContextMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 449
    :try_start_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mContext:Landroid/content/Context;

    monitor-exit v1

    return-object v0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .locals 2

    .prologue
    .line 461
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mContextMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 462
    :try_start_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mInstance:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    monitor-exit v1

    return-object v0

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getVersion()Ljava/lang/String;
    .locals 7

    .prologue
    .line 575
    const-string v2, "unknown"

    .line 578
    .local v2, "version":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 579
    .local v1, "i":Landroid/content/pm/PackageInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    move-object v3, v2

    .line 592
    .end local v1    # "i":Landroid/content/pm/PackageInfo;
    .end local v2    # "version":Ljava/lang/String;
    .local v3, "version":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 581
    .end local v3    # "version":Ljava/lang/String;
    .restart local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v5, "Couldn\'t find Connection Manager!!"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 584
    .end local v2    # "version":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    goto :goto_0

    .line 586
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "version":Ljava/lang/String;
    .restart local v2    # "version":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v5, "Couldn\'t find Connection Manager!!"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 589
    .end local v2    # "version":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    goto :goto_0
.end method

.method private initialize()V
    .locals 9

    .prologue
    .line 264
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mContextMutex:Ljava/lang/Object;

    monitor-enter v6

    .line 265
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mContext:Landroid/content/Context;

    .line 266
    sput-object p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mInstance:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 267
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 271
    .local v3, "res":Landroid/content/res/Resources;
    if-nez v3, :cond_0

    iget v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mGetAndroidResourcesRetryCount:I

    const/4 v6, 0x4

    if-ge v5, v6, :cond_0

    .line 272
    iget v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mGetAndroidResourcesRetryCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mGetAndroidResourcesRetryCount:I

    .line 273
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v6, "Android Resources are still not initialised."

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v6, "Retry after 1 second delay."

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->selfHandler:Landroid/os/Handler;

    const/16 v6, 0x66

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 276
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->selfHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 364
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 267
    .end local v3    # "res":Landroid/content/res/Resources;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 280
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_0
    if-nez v3, :cond_1

    .line 281
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v6, " Android CM resources are still null. Cannot proceed with CM initialization."

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v6, "Android Resources are properly initialised. Proceed"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isCMInit()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 288
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v6, "CM already initialized"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->setCMInitFlag()V

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->setVersion(Ljava/lang/String;)V

    .line 295
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SDK version : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v5, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-direct {v5, p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    iput-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .line 300
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->initialize()V

    .line 302
    new-instance v5, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    invoke-direct {v5, p0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    iput-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mWearableState:Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    .line 304
    const/4 v0, 0x0

    .line 307
    .local v0, "enableLeHandler":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->getInstance()Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mPolicyDecision:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    .line 308
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->loadRulePaser()V

    .line 312
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mPolicyDecision:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    if-eqz v5, :cond_3

    .line 314
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mPolicyDecision:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v7, "BLE"

    const-string v8, "MODULE_POLICY"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->getPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "policyResult":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v5, "ENABLE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 317
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v6, "initialize EventHandler policy"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/4 v0, 0x1

    .line 322
    .end local v2    # "policyResult":Ljava/lang/String;
    :cond_3
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mPowerManager:Landroid/os/PowerManager;

    .line 323
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v6, 0x1

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 325
    new-instance v5, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Z)V

    iput-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .line 327
    new-instance v5, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-direct {v5, p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    iput-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mConnectionController:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .line 329
    const/4 v4, 0x0

    .line 333
    .local v4, "scanner":Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mPolicyDecision:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    if-eqz v5, :cond_4

    .line 334
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mPolicyDecision:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v7, "BLE"

    const-string v8, "MODULE_POLICY"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->getPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ENABLE"

    .line 335
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 336
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v6, "initialize LeNBluetoothScanner policy"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v4, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    .end local v4    # "scanner":Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .line 338
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->getLeScanCallback()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;-><init>(Landroid/os/Looper;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 345
    .restart local v4    # "scanner":Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;
    :cond_4
    :goto_1
    new-instance v5, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

    invoke-direct {v5, p0, v4}, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;)V

    iput-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mDiscoveryController:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

    .line 347
    new-instance v5, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-direct {v5, p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    iput-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mServiceController:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    .line 348
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mServiceController:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->initialize()V

    .line 350
    new-instance v5, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;

    invoke-direct {v5, p0}, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    iput-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mMessagePublisher:Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;

    .line 351
    new-instance v5, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;

    invoke-direct {v5, p0}, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    iput-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mMessageDispatcher:Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;

    .line 353
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mMessagePublisher:Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->start()V

    .line 354
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mMessageDispatcher:Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->start()V

    .line 356
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mConnectionController:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->restartAutoConnection()V

    .line 358
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->verifyRandomLEaddress()V

    .line 360
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    const-string v6, "CONNECTIONMANAGER"

    invoke-virtual {v5, p0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->registerCallback(Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;Ljava/lang/String;)V

    .line 362
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;->CM_AVAILABLE:Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/Event$CMState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->notifyCmState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 341
    :cond_5
    new-instance v4, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    .end local v4    # "scanner":Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;-><init>(Landroid/os/Looper;)V

    .restart local v4    # "scanner":Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;
    goto :goto_1
.end method

.method private isCMInit()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->CM_INIT_FLAG:Z

    return v0
.end method

.method private killSelfProcess(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 604
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 605
    .local v0, "bIntent":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 606
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "intent is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :goto_0
    return-void

    .line 610
    :cond_0
    const-string v1, "plugin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 611
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "plugin value is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 615
    :cond_1
    const-string v1, "plugin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Gear1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_2

    const-string v1, "plugin"

    .line 616
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wingtip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_3

    .line 618
    :cond_2
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionManager is killed to switch to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "plugin"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->shutDown()Z

    goto :goto_0

    .line 623
    :cond_3
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "invalid plugin value"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadRulePaser()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mPolicyDecision:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mPolicyDecision:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    invoke-virtual {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;->init(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    .line 474
    :cond_0
    return-void
.end method

.method private logfileDump()Z
    .locals 21

    .prologue
    .line 845
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Android/CMLog/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 846
    .local v15, "fileLogDir":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/log/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 848
    .local v17, "filedumpDir":Ljava/lang/String;
    const/16 v18, 0x0

    .line 849
    .local v18, "finStream":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 850
    .local v3, "logSrc":Ljava/nio/channels/FileChannel;
    const/4 v12, 0x0

    .line 851
    .local v12, "fOutStream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 853
    .local v2, "logDst":Ljava/nio/channels/FileChannel;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dumpState-CM.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 854
    .local v16, "filePath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dumpState-CM.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 856
    .local v9, "dumppath":Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 857
    .local v20, "logfile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 860
    .local v8, "dumpFile":Ljava/io/File;
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 861
    const/4 v4, 0x0

    .line 934
    :goto_0
    return v4

    .line 863
    :cond_0
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 864
    .local v14, "fileDir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 867
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 869
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 870
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 875
    :cond_1
    if-eqz v20, :cond_2

    .line 876
    :try_start_1
    new-instance v19, Ljava/io/FileInputStream;

    invoke-direct/range {v19 .. v20}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v18    # "finStream":Ljava/io/FileInputStream;
    .local v19, "finStream":Ljava/io/FileInputStream;
    move-object/from16 v18, v19

    .line 877
    .end local v19    # "finStream":Ljava/io/FileInputStream;
    .restart local v18    # "finStream":Ljava/io/FileInputStream;
    :cond_2
    if-eqz v8, :cond_3

    .line 878
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .end local v12    # "fOutStream":Ljava/io/FileOutputStream;
    .local v13, "fOutStream":Ljava/io/FileOutputStream;
    move-object v12, v13

    .line 879
    .end local v13    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v12    # "fOutStream":Ljava/io/FileOutputStream;
    :cond_3
    if-eqz v18, :cond_4

    .line 880
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 881
    :cond_4
    if-eqz v12, :cond_5

    .line 882
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 884
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    .line 885
    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 886
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 887
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 890
    :cond_6
    if-eqz v18, :cond_7

    .line 891
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 892
    :cond_7
    if-eqz v12, :cond_8

    .line 893
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 934
    :cond_8
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 895
    :catch_0
    move-exception v10

    .line 898
    .local v10, "e":Ljava/lang/Exception;
    if-eqz v18, :cond_9

    .line 899
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 905
    :cond_9
    :goto_2
    if-eqz v12, :cond_a

    .line 906
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 912
    :cond_a
    :goto_3
    if-eqz v3, :cond_b

    .line 913
    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 919
    :cond_b
    :goto_4
    if-eqz v2, :cond_8

    .line 920
    :try_start_5
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 921
    :catch_1
    move-exception v11

    .line 922
    .local v11, "e1":Ljava/io/IOException;
    :try_start_6
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v5, "logDst Exception - Coudn\'t dump log files"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 926
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "e1":Ljava/io/IOException;
    .end local v14    # "fileDir":Ljava/io/File;
    :catch_2
    move-exception v10

    .line 928
    .restart local v10    # "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v5, "Coudn\'t dump log files"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const/4 v4, 0x0

    goto :goto_0

    .line 900
    .restart local v14    # "fileDir":Ljava/io/File;
    :catch_3
    move-exception v11

    .line 901
    .restart local v11    # "e1":Ljava/io/IOException;
    :try_start_7
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v5, "finStream Exception - Coudn\'t dump log files"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 907
    .end local v11    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v11

    .line 908
    .restart local v11    # "e1":Ljava/io/IOException;
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v5, " fOutStream Exception - Coudn\'t dump log files"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 914
    .end local v11    # "e1":Ljava/io/IOException;
    :catch_5
    move-exception v11

    .line 915
    .restart local v11    # "e1":Ljava/io/IOException;
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v5, " logSrc Exception - Coudn\'t dump log files"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4
.end method

.method private preInitialize()V
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mSubscriberManager:Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;

    .line 260
    return-void
.end method

.method private requestAsyncCmd(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Z
    .locals 1
    .param p1, "subscriber"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mMessageDispatcher:Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->putQ(Lcom/sec/android/api/iface/CVMessage;)Z

    move-result v0

    return v0
.end method

.method private requestEventSubscription(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Z
    .locals 3
    .param p1, "subscriber"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 512
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSG] requestEventSubscription : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mSubscriberManager:Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;

    invoke-virtual {p2}, Lcom/sec/android/api/iface/CVMessage;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->registerEventSubscriber(Landroid/os/Messenger;)Z

    move-result v0

    return v0
.end method

.method private requestEventUnsubscription(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)V
    .locals 3
    .param p1, "subscriber"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 517
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSG] requestEventUnsubscription : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mSubscriberManager:Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;

    invoke-virtual {p2}, Lcom/sec/android/api/iface/CVMessage;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->unregisterEventSubscriber(Landroid/os/Messenger;)Z

    .line 520
    return-void
.end method

.method private requestSyncCmd(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Lcom/sec/android/api/iface/CVMessage;
    .locals 1
    .param p1, "subscriber"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mMessageDispatcher:Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->requestSync(Lcom/sec/android/api/iface/CVMessage;)Lcom/sec/android/api/iface/CVMessage;

    move-result-object v0

    return-object v0
.end method

.method private setCMInitFlag()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->CM_INIT_FLAG:Z

    .line 252
    return-void
.end method

.method private startConnectionManager()V
    .locals 6

    .prologue
    .line 195
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mBtAdapterEnableRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mBtAdapterEnableRetryCount:I

    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, "mBtAdapter":Landroid/bluetooth/BluetoothAdapter;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_3

    .line 199
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v3, "BluetoothAdapter BluetoothManager.getSystemService() used on BT version 4.3 up.."

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mBtManager:Landroid/bluetooth/BluetoothManager;

    if-nez v2, :cond_0

    .line 202
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mContext:Landroid/content/Context;

    const-string v3, "bluetooth"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothManager;

    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mBtManager:Landroid/bluetooth/BluetoothManager;

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mBtManager:Landroid/bluetooth/BluetoothManager;

    if-nez v2, :cond_1

    .line 205
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v3, " failed to retrieve BluetoothManager"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT Manager is not ready, Trying after 1 sec delay, trial count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mBtAdapterEnableRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->selfHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 210
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->selfHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 238
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mBtManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 220
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 221
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v3, " mBtAdapter is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-gt v2, v3, :cond_2

    .line 215
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v3, "BluetoothAdapter getDefaultAdapter() used on BT version 4.2 below.."

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    goto :goto_1

    .line 229
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->initialize()V

    goto :goto_0
.end method

.method private terminate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 369
    sput-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mInstance:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 373
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->terminate()V

    .line 374
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .line 376
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mMessageDispatcher:Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->setStopFlag()V

    .line 377
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mMessageDispatcher:Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;

    .line 379
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mMessagePublisher:Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->setStopFlag()V

    .line 380
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mMessagePublisher:Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;

    .line 382
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mWearableState:Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    .line 384
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mDiscoveryController:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->terminate()V

    .line 385
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mDiscoveryController:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

    .line 387
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mConnectionController:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->terminate()V

    .line 388
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mConnectionController:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .line 390
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mServiceController:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->terminate()V

    .line 391
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mServiceController:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    .line 393
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->terminate()V

    .line 394
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .line 396
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mSubscriberManager:Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->terminate()V

    .line 397
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mSubscriberManager:Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;

    .line 399
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mPolicyDecision:Lcom/samsung/android/hostmanager/connectionmanager/policy/PolicyDecision;

    .line 401
    return-void
.end method

.method private verifyRandomLEaddress()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 725
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 727
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 728
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, " verifyRandomLEaddress : adapter is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :goto_0
    return-void

    .line 732
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->getLocalBluetoothVersion()I

    move-result v2

    .line 734
    .local v2, "localBluetoothVersion":I
    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 736
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, " localBluetoothVersion is BLUETOOTH_VER_41 "

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothAdapterFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothAdapterInterface;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothAdapterInterface;->getLEAddress(Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/String;

    move-result-object v1

    .line 739
    .local v1, "address":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLEAddress : random Le address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 742
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, "random LE adress is not available"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :cond_2
    const-string v3, "0x00:0x00:0x00:0x00:0x00:0x00"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 748
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, "random LE adress is - 0x00:0x00:0x00:0x00:0x00:0x00 "

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iput-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->hostRandomLEAddress:Ljava/lang/String;

    .line 750
    iput-boolean v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mIsRandomLESupported:Z

    .line 751
    iput-boolean v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mIsRandomLEFlagUpdated:Z

    goto :goto_0

    .line 753
    :cond_3
    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 756
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, "random LE adress is - 00:00:00:00:00:00 "

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iput-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->hostRandomLEAddress:Ljava/lang/String;

    .line 758
    iput-boolean v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mIsRandomLESupported:Z

    .line 759
    iput-boolean v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mIsRandomLEFlagUpdated:Z

    goto :goto_0

    .line 763
    :cond_4
    iput-boolean v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mIsRandomLESupported:Z

    .line 764
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->hostRandomLEAddress:Ljava/lang/String;

    .line 765
    iput-boolean v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mIsRandomLEFlagUpdated:Z

    goto :goto_0

    .line 770
    .end local v1    # "address":Ljava/lang/String;
    :cond_5
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " localBluetoothVersion is not BLUETOOTH_VER_41 , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iput-boolean v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mIsRandomLESupported:Z

    .line 772
    iput-boolean v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mIsRandomLEFlagUpdated:Z

    goto/16 :goto_0
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
    .line 939
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireWakeLock starts, wakeLock ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

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

    .line 941
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 942
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "acquireWakeLock: mWakeLock.acquire() called"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 948
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "acquireWakeLock ends"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 949
    monitor-exit p0

    return-void

    .line 945
    :catch_0
    move-exception v0

    .line 946
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

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

    .line 939
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 826
    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$3;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    .line 831
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$3;->start()V

    .line 833
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 834
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v0

    .line 835
    .local v0, "profileHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    if-eqz v0, :cond_0

    .line 836
    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .end local v0    # "profileHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getLastCommandStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 840
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 841
    return-void
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mConnectionController:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    return-object v0
.end method

.method public getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    return-object v0
.end method

.method public getDiscoveryController()Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mDiscoveryController:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

    return-object v0
.end method

.method public getEventHandler()Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    return-object v0
.end method

.method public getHostLEAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->hostRandomLEAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMessagePublisher()Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mMessagePublisher:Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;

    return-object v0
.end method

.method public getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mServiceController:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    return-object v0
.end method

.method public getSubscriberManager()Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mSubscriberManager:Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;

    return-object v0
.end method

.method public getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mWearableState:Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    return-object v0
.end method

.method public isRandomLESupported()Z
    .locals 1

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mIsRandomLEFlagUpdated:Z

    if-nez v0, :cond_0

    .line 712
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->verifyRandomLEaddress()V

    .line 714
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mIsRandomLESupported:Z

    return v0
.end method

.method public isWifiOr3GConnected()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 629
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 630
    .local v2, "manager":Landroid/net/ConnectivityManager;
    if-nez v2, :cond_0

    .line 632
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v6, "[CMCC] isWifiOr3GConnected systemService null"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :goto_0
    return v4

    .line 635
    :cond_0
    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 637
    .local v3, "nwInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    .line 639
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 640
    .local v0, "is3g":Z
    if-ne v0, v5, :cond_1

    .line 642
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v6, "[CMCC] isWifiOr3GConnected - 3G Connected"

    invoke-static {v4, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 643
    goto :goto_0

    .line 647
    .end local v0    # "is3g":Z
    :cond_1
    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 648
    if-eqz v3, :cond_2

    .line 649
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    .line 650
    .local v1, "isWifi":Z
    if-ne v1, v5, :cond_2

    .line 652
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v6, "[CMCC] isWifiOr3GConnected - Wifi Connected"

    invoke-static {v4, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 653
    goto :goto_0

    .line 657
    .end local v1    # "isWifi":Z
    :cond_2
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v6, "[CMCC] isWifiOr3GConnected 3g/wifi not Connected"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyCmState(Ljava/lang/String;)V
    .locals 3
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 242
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "Notify CM initializing completed"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "BUNDLE_CMKEY_STRING_CM_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/16 v1, 0x229

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->publishEvent(ILandroid/os/Bundle;)V

    .line 248
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 114
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "onBind.."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->bindServiceManager(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "onCreate.."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mContextMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mContext:Landroid/content/Context;

    .line 85
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->preInitialize()V

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->startConnectionManager()V

    .line 90
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 91
    return-void

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy.."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->terminate()V

    .line 139
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 140
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "onRebind.."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 124
    return-void
.end method

.method public onReceivedEvent(ILandroid/os/Bundle;Landroid/content/Intent;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 821
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 95
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-eqz p1, :cond_0

    .line 98
    const-string v1, "STATE_ON"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 100
    .local v0, "isStateOn":Z
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "bluetooth state on intent received."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isCMInit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "connection manager initialize!"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->initialize()V

    .line 109
    .end local v0    # "isStateOn":Z
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "onUnbind.."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public publishEvent(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 492
    new-instance v0, Lcom/sec/android/api/iface/CVMessage;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1, p2}, Lcom/sec/android/api/iface/CVMessage;-><init>(IILandroid/os/Bundle;)V

    .line 494
    .local v0, "cvm":Lcom/sec/android/api/iface/CVMessage;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mMessagePublisher:Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;

    if-eqz v1, :cond_0

    .line 495
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "publishEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mMessagePublisher:Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->putQ(Lcom/sec/android/api/iface/CVMessage;)Z

    .line 499
    :cond_0
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
    .line 953
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseWakeLock starts, wakeLock ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

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

    .line 955
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 956
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 958
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "releaseWakeLock: mWakeLock.release() called"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 965
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "releaseWakeLock ends"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 966
    monitor-exit p0

    return-void

    .line 962
    :catch_0
    move-exception v0

    .line 963
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

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

    .line 953
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public requestCommand(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 478
    new-instance v0, Lcom/sec/android/api/iface/CVMessage;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2}, Lcom/sec/android/api/iface/CVMessage;-><init>(IILandroid/os/Bundle;)V

    .line 481
    .local v0, "cvm":Lcom/sec/android/api/iface/CVMessage;
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/api/iface/CVMessage;->setMsgID(J)V

    .line 482
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/api/iface/CVMessage;->setMessenger(Landroid/os/Messenger;)V

    .line 484
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mMessageDispatcher:Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;

    if-eqz v1, :cond_0

    .line 485
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internal request command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->mMessageDispatcher:Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->putQ(Lcom/sec/android/api/iface/CVMessage;)Z

    .line 489
    :cond_0
    return-void
.end method

.method public shutDown()Z
    .locals 2

    .prologue
    .line 779
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "Shut down CM process"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->DisconnectAllForLastConnectedDevices()V

    .line 793
    const/4 v0, 0x1

    return v0
.end method
