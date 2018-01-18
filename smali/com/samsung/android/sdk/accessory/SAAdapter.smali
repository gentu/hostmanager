.class public final Lcom/samsung/android/sdk/accessory/SAAdapter;
.super Ljava/lang/Object;
.source "SAAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;,
        Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;,
        Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;,
        Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;
    }
.end annotation


# static fields
.field private static final ACCESSORY_SERVICE_BIND_TIMEOUT:I = 0x2710

.field public static final ACTION_ACCESSORY_MESSAGE_RECEIVED:Ljava/lang/String; = "com.samsung.accessory.action.MESSAGE_RECEIVED"

.field public static final ACTION_REGISTER_AGENT:Ljava/lang/String; = "com.samsung.accessory.action.REGISTER_AGENT"

.field public static final ACTION_SERVICE_CONNECTION_REQUESTED:Ljava/lang/String; = "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

.field private static final ERROR_FATAL:I = 0x800

.field public static final ERROR_PERMISSION_DENIED:I = 0x900

.field public static final ERROR_PERMISSION_FAILED:I = 0x901

.field public static final EXTRA_MEX_DATA:Ljava/lang/String; = "com.samsung.accessory.extra.MEX_DATA"

.field private static final TAG:Ljava/lang/String;

.field private static sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;


# instance fields
.field private mAgentCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClientId:J

.field private mConnection:Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;

.field private mContext:Landroid/content/Context;

.field private mDeathCallback:Lcom/samsung/accessory/api/IDeathCallback;

.field private mProxyReceiver:Landroid/os/ResultReceiver;

.field private mScIndicationCallback:Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

.field private mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mContext:Landroid/content/Context;

    .line 143
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mState:I

    .line 145
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;-><init>(Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mConnection:Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;

    .line 146
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mDeathCallback:Lcom/samsung/accessory/api/IDeathCallback;

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    .line 148
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mScIndicationCallback:Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

    .line 149
    return-void
.end method

.method static synthetic access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/os/ResultReceiver;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mProxyReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method static synthetic access$11(Lcom/samsung/android/sdk/accessory/SAAdapter;Landroid/os/RemoteException;)V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    return-void
.end method

.method static synthetic access$12(Lcom/samsung/android/sdk/accessory/SAAdapter;)V
    .locals 0

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyConnection()V

    return-void
.end method

.method static synthetic access$13(Lcom/samsung/android/sdk/accessory/SAAdapter;Z)V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanup(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/accessory/api/ISAFrameworkManagerV2;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    return-void
.end method

.method static synthetic access$3(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    return-object v0
.end method

.method static synthetic access$4(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/IDeathCallback;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mDeathCallback:Lcom/samsung/accessory/api/IDeathCallback;

    return-object v0
.end method

.method static synthetic access$6(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mScIndicationCallback:Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/android/sdk/accessory/SAAdapter;J)V
    .locals 1

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    return-void
.end method

.method static synthetic access$8(Lcom/samsung/android/sdk/accessory/SAAdapter;)J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    return-wide v0
.end method

.method static synthetic access$9(Lcom/samsung/android/sdk/accessory/SAAdapter;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mProxyReceiver:Landroid/os/ResultReceiver;

    return-void
.end method

.method private declared-synchronized cleanup(Z)V
    .locals 4
    .param p1, "mustTearconnection"    # Z

    .prologue
    .line 608
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 609
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->tearFrameworkconnection()V

    .line 611
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 612
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mConnection:Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 614
    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    .line 615
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 616
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    .line 617
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 620
    monitor-exit p0

    return-void

    .line 617
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;

    .line 618
    .local v0, "callback":Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;
    invoke-interface {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;->onFrameworkDisconnected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 608
    .end local v0    # "callback":Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static declared-synchronized getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    const-class v1, Lcom/samsung/android/sdk/accessory/SAAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    .line 162
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized notifyConnection()V
    .locals 3

    .prologue
    .line 623
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 626
    monitor-exit p0

    return-void

    .line 623
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;

    .line 624
    .local v0, "callback":Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;
    invoke-interface {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;->onFrameworkConnected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 623
    .end local v0    # "callback":Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized notifyDisconnection(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "error"    # Landroid/os/RemoteException;

    .prologue
    .line 629
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Landroid/os/TransactionTooLargeException;

    if-eqz v0, :cond_0

    .line 630
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Remote call falied, binder transaction buffer low"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanup(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    :goto_0
    monitor-exit p0

    return-void

    .line 634
    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Remote call falied"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized tearFrameworkconnection()V
    .locals 4

    .prologue
    .line 583
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v1, :cond_0

    .line 584
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Binding to framework does not exists"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    :goto_0
    monitor-exit p0

    return-void

    .line 588
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v1, v2, v3}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->tearFrameworkConnection(J)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 594
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanup(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 583
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Failed to tear framework connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 594
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanup(Z)V

    goto :goto_0

    .line 593
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v1

    .line 594
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanup(Z)V

    .line 595
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method acceptServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;JLcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)Ljava/lang/String;
    .locals 13
    .param p1, "localAgentId"    # Ljava/lang/String;
    .param p2, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p3, "transactionId"    # J
    .param p5, "connectionCallback"    # Lcom/samsung/accessory/api/ISAServiceConnectionCallback;
    .param p6, "channelCallback"    # Lcom/samsung/accessory/api/ISAServiceChannelCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    .line 437
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v1, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 441
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v1 .. v9}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->acceptServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;JLcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)Landroid/os/Bundle;

    move-result-object v11

    .line 444
    .local v11, "response":Landroid/os/Bundle;
    if-nez v11, :cond_1

    .line 445
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "acceptServiceConnection:Invalid response from Accessory Framework:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "acceptServiceConnection:Invalid response from Accessory Framework:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v11    # "response":Landroid/os/Bundle;
    :catch_0
    move-exception v10

    .line 463
    .local v10, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Failed to accept service connection"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    invoke-direct {p0, v10}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 465
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v2, 0x800

    const-string v3, "acceptServiceConnection:Remote call failed"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 449
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v11    # "response":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    const-string v1, "errorcode"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 450
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string v2, "errorcode"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "Failed to accept connection request!"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 452
    :cond_2
    const-string v1, "connectionId"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "connectionId":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 455
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "acceptServiceConnection:Invalid response from Accessory Framework- connectionId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v1, Ljava/lang/RuntimeException;

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "acceptServiceConnection:Invalid response from Accessory Framework- connectionId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 457
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 460
    :cond_3
    return-object v0
.end method

.method authenticatePeeragent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I
    .locals 10
    .param p1, "localagentId"    # Ljava/lang/String;
    .param p2, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p3, "authCallback"    # Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;
    .param p4, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    .line 535
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 539
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-interface/range {v0 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->authenticatePeerAgent(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 540
    :catch_0
    move-exception v8

    .line 541
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to request peer authentication"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    invoke-direct {p0, v8}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 543
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v1, 0x800

    const-string v2, "authenticatePeeragent:Remote call failed"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method declared-synchronized bindToFramework()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v2, :cond_3

    .line 176
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/samsung/android/sdk/accessory/SASdkConfig;->ACCESSORY_FRAMEWORK_PACKAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->mContext:Landroid/content/Context;

    .line 181
    sget-object v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->mConnection:Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;

    const/4 v4, 0x1

    .line 180
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 181
    if-eqz v2, :cond_4

    .line 183
    :try_start_2
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v3, "getDefaultAdapter: About start waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-wide v2, v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getState()I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    :cond_0
    :try_start_3
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v2, :cond_2

    .line 194
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v3, "getDefaultAdapter: Service Connection proxy is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 196
    new-instance v2, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v3, 0x800

    .line 197
    const-string v4, "Unable to bind to Samsung Accessory Service!"

    .line 196
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 205
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_4
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v3, "getDefaultAdapter: Permission denied! Binding to Accessory service failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 208
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->checkAccessoryPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 209
    new-instance v2, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v3, 0x901

    .line 210
    const-string v4, "Permission validation failed to bind to Samsung Accessory Service! Please re-install the application and try again."

    .line 209
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 175
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 186
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_5
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 188
    :catch_1
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v2, -0x1

    :try_start_6
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 190
    new-instance v2, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v3, 0x800

    const-string v4, "Failed to Bind to Accessory Framework - Action interrupted!"

    invoke-direct {v2, v3, v4, v0}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 199
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Application is now connected to Accessory Framework!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 219
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    monitor-exit p0

    return-void

    .line 201
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_4
    :try_start_7
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v3, "getDefaultAdapter: Binding to Accessory service failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 203
    new-instance v2, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v3, 0x800

    const-string v4, "Is the Samsung Accessory Service Framework installed?!"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 213
    .end local v1    # "intent":Landroid/content/Intent;
    .local v0, "e":Ljava/lang/SecurityException;
    :cond_5
    :try_start_8
    new-instance v2, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v3, 0x900

    .line 214
    const-string v4, "Permission denied to bind to Samsung Accessory Service! Please add permission and try again."

    .line 213
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method cleanupAgent(Ljava/lang/String;)V
    .locals 4
    .param p1, "agentId"    # Ljava/lang/String;

    .prologue
    .line 548
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v1, :cond_0

    .line 549
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Binding to framework does not exists"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :goto_0
    return-void

    .line 553
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->cleanupAgent(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Failed to cleanup agent details"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method closeServiceConnection(Ljava/lang/String;)I
    .locals 4
    .param p1, "connectionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    .line 487
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v1, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 491
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->closeServiceConnection(JLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Failed to close service connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 495
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v2, 0x800

    const-string v3, "closeServiceConnection:Remote call failed"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method findPeerAgents(Ljava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I
    .locals 9
    .param p1, "localAgentId"    # Ljava/lang/String;
    .param p2, "callbackStub"    # Lcom/samsung/accessory/api/ISAPeerAgentCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x800

    .line 398
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v1, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 403
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    .line 404
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    const-wide/16 v4, -0x1

    move-object v6, p1

    move-object v7, p2

    invoke-interface/range {v1 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->findPeerAgents(JJLjava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I

    move-result v1

    return v1

    .line 407
    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v2, 0x800

    const-string v3, "findPeerAgents:mServiceProxy is null"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Failed to initiate peer discovery"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 412
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string v2, "findPeerAgents:Remote call failed"

    invoke-direct {v1, v8, v2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method getAgentDetails(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "agentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    .line 562
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v1, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 566
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getAgentDetails(JLjava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get agent details"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 570
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v2, 0x800

    const-string v3, "getAgentDetails: Remote call failed"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method getAgentId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agentImpl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x800

    .line 379
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v1, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 383
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    .line 384
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getAgentId(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 387
    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v2, 0x800

    const-string v3, "getAgentId:mServiceProxy is null"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Failed to fetch agent ID"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 392
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string v2, "getAgentId:Remote call failed"

    invoke-direct {v1, v4, v2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method declared-synchronized getLocalAgentId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "agentImpl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v3, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :cond_0
    const/4 v2, 0x0

    .line 352
    .local v2, "response":Landroid/os/Bundle;
    :try_start_1
    sget-object v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v3, :cond_1

    .line 353
    sget-object v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v4, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v3, v4, v5, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getLocalAgentId(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 355
    :cond_1
    if-nez v2, :cond_2

    .line 357
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Get Local agent ID:Invalid response from accessory framework - null"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Failed to fetch localAgent ID"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 373
    new-instance v3, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v4, 0x800

    const-string v5, "getLocalAgentId:Remote call failed"

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "response":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 360
    .restart local v2    # "response":Landroid/os/Bundle;
    :cond_2
    :try_start_3
    const-string v3, "errorcode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 361
    new-instance v3, Lcom/samsung/android/sdk/accessory/SAException;

    const-string v4, "errorcode"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "Failed to fetch localAgent ID"

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 363
    :cond_3
    const-string v3, "agentId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "localAgentId":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 366
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Get Local agent ID:Invalid response - localAgentID:null"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 368
    :cond_4
    monitor-exit p0

    return-object v1
.end method

.method declared-synchronized getState()I
    .locals 1

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isSocketConnected(Ljava/lang/String;)Z
    .locals 4
    .param p1, "connectionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    .line 520
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v1, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 524
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->isSocketConnected(JLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Failed to fetch socket connection status"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 528
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v2, 0x800

    const-string v3, "isSocketConnected:Remote call failed"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method declared-synchronized recycle([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mProxyReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_0

    .line 576
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 577
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "com.samsung.accessory.adapter.extra.READ_BYTES"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 578
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mProxyReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    monitor-exit p0

    return-void

    .line 575
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized registerAgentCallback(Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method registerMexCallback(Ljava/lang/String;Lcom/samsung/accessory/api/ISAMexCallback;)V
    .locals 4
    .param p1, "agentId"    # Ljava/lang/String;
    .param p2, "agent"    # Lcom/samsung/accessory/api/ISAMexCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    .line 657
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v1, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 661
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    .line 662
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->registerMexCallback(JLjava/lang/String;Lcom/samsung/accessory/api/ISAMexCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :cond_1
    return-void

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register mex callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 666
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 667
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v2, 0x800

    const-string v3, "registerMexCallback: Remote call failed"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method declared-synchronized registerServices([B)V
    .locals 6
    .param p1, "xml"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v2, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :cond_0
    :try_start_1
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v2, :cond_1

    .line 333
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v4, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v2, v4, v5, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->registerComponent(J[B)V

    .line 335
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 343
    monitor-exit p0

    return-void

    .line 335
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;

    .line 336
    .local v0, "agent":Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;
    invoke-interface {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;->onAgentRegistered()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 338
    .end local v0    # "agent":Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Service registration call failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 341
    new-instance v2, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v3, 0x800

    const-string v4, "registerServices:Remote call failed"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 328
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method rejectServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I
    .locals 9
    .param p1, "localAgentId"    # Ljava/lang/String;
    .param p2, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p3, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    .line 471
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v1, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 475
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-interface/range {v1 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->rejectServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Failed to reject service connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 479
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v2, 0x800

    const-string v3, "rejectServiceConnection:Remote call failed"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method requestServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)I
    .locals 8
    .param p1, "localAgentId"    # Ljava/lang/String;
    .param p2, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p3, "connectionCallback"    # Lcom/samsung/accessory/api/ISAServiceConnectionCallback;
    .param p4, "channelCallback"    # Lcom/samsung/accessory/api/ISAServiceChannelCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    .line 420
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v1, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 424
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->requestServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Failed to request service connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 429
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v2, 0x800

    const-string v3, "requestServiceConnection:Remote call failed"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method send(Ljava/lang/String;I[BZIII)I
    .locals 12
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "channelId"    # I
    .param p3, "data"    # [B
    .param p4, "isSecure"    # Z
    .param p5, "fragmentIdex"    # I
    .param p6, "length"    # I
    .param p7, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    .line 504
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 508
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    int-to-long v4, p2

    move-object v3, p1

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v0 .. v10}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->send(JLjava/lang/String;J[BZIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 509
    :catch_0
    move-exception v11

    .line 510
    .local v11, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed send data for connection:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    invoke-direct {p0, v11}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 512
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v1, 0x800

    const-string v2, "send:Remote call failed"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method sendMessageDeliveryStatus(JII)V
    .locals 9
    .param p1, "accessoryId"    # J
    .param p3, "transactionId"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    .line 641
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v1, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 645
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    .line 646
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendMessageDeliveryStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :cond_1
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Failed to send message delivery status"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 650
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 651
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v2, 0x800

    const-string v3, "sendMessageDeliveryStatus: Remote call failed"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method declared-synchronized setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized unregisterAgentCallback(Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "All clients have unregistered.Disconnection from Accessory Framework."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanup(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :cond_0
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method unregisterMexCallback(Ljava/lang/String;)V
    .locals 4
    .param p1, "agentClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    .line 672
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_0

    .line 674
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->unregisterMexCallback(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    :cond_0
    return-void

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister mex callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 677
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 678
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v2, 0x800

    const-string v3, "unregisterMexCallback: Remote call failed"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1
.end method
