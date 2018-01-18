.class public Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;
.super Ljava/lang/Thread;
.source "MessageDispatcher.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final finishCmd:I


# instance fields
.field private mConnectionController:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

.field private mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

.field private mDiscoveryController:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

.field private mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/sec/android/api/iface/CVMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceController:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

.field private mStopFlag:Z

.field private mSubscriberManager:Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "MessageDispatcher"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 2
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 24
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mSubscriberManager:Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;

    .line 26
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mDiscoveryController:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mConnectionController:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mServiceController:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    .line 32
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 35
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mStopFlag:Z

    .line 40
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getSubscriberManager()Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mSubscriberManager:Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDiscoveryController()Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mDiscoveryController:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mConnectionController:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .line 44
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mServiceController:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    .line 45
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 46
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mStopFlag:Z

    .line 47
    return-void
.end method

.method private convertStringToServiceType(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    .locals 2
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 280
    if-nez p1, :cond_1

    .line 281
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 299
    :cond_0
    :goto_0
    return-object v0

    .line 283
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 285
    .local v0, "res":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    goto :goto_0

    .line 287
    :cond_2
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 288
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    goto :goto_0

    .line 289
    :cond_3
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 290
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    goto :goto_0

    .line 291
    :cond_4
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->GATT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 292
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->GATT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    goto :goto_0

    .line 293
    :cond_5
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 294
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    goto :goto_0

    .line 295
    :cond_6
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    goto :goto_0
.end method

.method private handleMessage(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 2
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getMsgType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->handleRequestMessage(Lcom/sec/android/api/iface/CVMessage;)V

    .line 57
    :cond_0
    return-void
.end method

.method private handleRequestMessage(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 4
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "cvm is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 66
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get subscribers : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getMsgID()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mSubscriberManager:Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;

    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getMsgID()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->addResponseMessenger(JLandroid/os/Messenger;)V

    .line 71
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 75
    :pswitch_1
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatch to Discovery Controller ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mDiscoveryController:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->requestMessage(Lcom/sec/android/api/iface/CVMessage;)V

    goto :goto_0

    .line 88
    :pswitch_2
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatch to Connect Controller ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mConnectionController:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->requestMessage(Lcom/sec/android/api/iface/CVMessage;)V

    goto/16 :goto_0

    .line 99
    :pswitch_3
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatch to Service Controller ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mServiceController:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->requestMessage(Lcom/sec/android/api/iface/CVMessage;)V

    goto/16 :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized putQ(Lcom/sec/android/api/iface/CVMessage;)Z
    .locals 3
    .param p1, "msg"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    const/4 v1, 0x0

    .line 117
    monitor-enter p0

    if-nez p1, :cond_0

    .line 126
    :goto_0
    monitor-exit p0

    return v1

    .line 121
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    const/4 v1, 0x1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public requestSync(Lcom/sec/android/api/iface/CVMessage;)Lcom/sec/android/api/iface/CVMessage;
    .locals 21
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    sget-object v19, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->TAG:Ljava/lang/String;

    const-string v20, "cvm is null"

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/16 v19, 0x0

    .line 275
    :goto_0
    return-object v19

    .line 161
    :cond_0
    const/16 v19, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/api/iface/CVMessage;->setMsgType(I)V

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 164
    .local v5, "bundle":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move-object/from16 v19, p1

    .line 275
    goto :goto_0

    .line 167
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-object/from16 v19, v0

    .line 168
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getBondedDevices()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    .line 170
    .local v3, "bondedDeviceList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v4, "bondedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 172
    .local v8, "device":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 175
    .end local v8    # "device":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_2
    const-string v19, "BUNDLE_CMKEY_BUNDLELIST_WEARABLEDEVICELIST"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 177
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sec/android/api/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    goto :goto_1

    .line 183
    .end local v3    # "bondedDeviceList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    .end local v4    # "bondedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->convertStringToServiceType(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-result-object v16

    .line 186
    .local v16, "type":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-object/from16 v19, v0

    .line 187
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getConnectedDevices(Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v6

    .line 189
    .local v6, "connectedDeviceList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v7, "connectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 191
    .restart local v8    # "device":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 194
    .end local v8    # "device":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_3
    const-string v19, "BUNDLE_CMKEY_BUNDLELIST_WEARABLEDEVICELIST"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 196
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sec/android/api/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 208
    .end local v6    # "connectedDeviceList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    .end local v7    # "connectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v16    # "type":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    :pswitch_3
    const-string v19, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 211
    .local v10, "itemBundle":Landroid/os/Bundle;
    invoke-static {v10}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/os/Bundle;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v17

    .line 213
    .local v17, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v17, :cond_1

    .line 214
    const-string v19, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 216
    .local v15, "strState":Ljava/lang/String;
    sget-object v14, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 217
    .local v14, "state":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v19, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v14

    .line 233
    :cond_4
    :goto_4
    const-string v19, "BUNDLE_CMKEY_STRING_SERVICESTATE"

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sec/android/api/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 220
    :cond_5
    sget-object v19, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v14

    goto :goto_4

    .line 223
    :cond_6
    sget-object v19, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v14

    goto :goto_4

    .line 226
    :cond_7
    sget-object v19, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->GATT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->GATT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v14

    goto/16 :goto_4

    .line 229
    :cond_8
    sget-object v19, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v14

    goto/16 :goto_4

    .line 242
    .end local v10    # "itemBundle":Landroid/os/Bundle;
    .end local v14    # "state":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    .end local v15    # "strState":Ljava/lang/String;
    .end local v17    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->shutDown()Z

    move-result v11

    .line 244
    .local v11, "resultForShutdown":Z
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/api/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 246
    if-nez v11, :cond_1

    .line 247
    const/16 p1, 0x0

    goto/16 :goto_1

    .line 254
    .end local v11    # "resultForShutdown":Z
    :pswitch_5
    const-string v19, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 255
    .local v9, "deviceBundle":Landroid/os/Bundle;
    const-string v19, "BUNDLE_CMKEY_BOOLEAN_SCS_PREFERENCE"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 257
    .local v13, "setValue":Z
    invoke-static {v9}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/os/Bundle;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v18

    .line 259
    .local v18, "wearableDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setScsPreference(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Z)Z

    move-result v12

    .line 261
    .local v12, "resultFotScsPre":Z
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/api/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 263
    if-nez v12, :cond_1

    .line 264
    const/16 p1, 0x0

    goto/16 :goto_1

    .line 164
    :pswitch_data_0
    .packed-switch 0x111
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public run()V
    .locals 3

    .prologue
    .line 134
    :cond_0
    const/4 v1, 0x0

    .line 137
    .local v1, "msg":Lcom/sec/android/api/iface/CVMessage;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/api/iface/CVMessage;

    move-object v1, v0

    .line 138
    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->handleMessage(Lcom/sec/android/api/iface/CVMessage;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mStopFlag:Z

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 150
    return-void

    .line 139
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setStopFlag()V
    .locals 2

    .prologue
    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->mStopFlag:Z

    .line 109
    new-instance v0, Lcom/sec/android/api/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/api/iface/CVMessage;-><init>()V

    .line 110
    .local v0, "fin":Lcom/sec/android/api/iface/CVMessage;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/api/iface/CVMessage;->setCmdID(I)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/MessageDispatcher;->putQ(Lcom/sec/android/api/iface/CVMessage;)Z

    .line 113
    return-void
.end method
