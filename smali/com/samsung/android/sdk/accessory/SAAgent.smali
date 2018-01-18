.class public abstract Lcom/samsung/android/sdk/accessory/SAAgent;
.super Landroid/app/Service;
.source "SAAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;,
        Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;,
        Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;
    }
.end annotation


# static fields
.field public static final ACTION_REGISTRATION_REQUIRED:Ljava/lang/String; = "com.samsung.accessory.action.REGISTER_AGENT"

.field public static final ACTION_SERVICE_CONNECTION_REQUESTED:Ljava/lang/String; = "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

.field public static final AUTHENTICATION_FAILURE_PEER_AGENT_NOT_SUPPORTED:I = 0x60a

.field public static final AUTHENTICATION_FAILURE_TOKEN_NOT_GENERATED:I = 0x609

.field public static final AUTHENTICATION_SUCCESS:I = 0x0

.field public static final CONNECTION_ALREADY_EXIST:I = 0x405

.field public static final CONNECTION_DUPLICATE_REQUEST:I = 0x410

.field public static final CONNECTION_FAILURE_DEVICE_UNREACHABLE:I = 0x404

.field public static final CONNECTION_FAILURE_INVALID_PEERAGENT:I = 0x409

.field private static final CONNECTION_FAILURE_LOCAL_AGENT_NOT_FOUND:I = 0x40a

.field public static final CONNECTION_FAILURE_NETWORK:I = 0x500

.field public static final CONNECTION_FAILURE_PEERAGENT_NO_RESPONSE:I = 0x406

.field public static final CONNECTION_FAILURE_PEERAGENT_REJECTED:I = 0x407

.field public static final CONNECTION_FAILURE_SERVICE_LIMIT_REACHED:I = 0x40d

.field public static final CONNECTION_SUCCESS:I = 0x0

.field public static final ERROR_CONNECTION_INVALID_PARAM:I = 0x401

.field public static final ERROR_FATAL:I = 0x800

.field public static final ERROR_PERMISSION_DENIED:I = 0x900

.field public static final ERROR_PERMISSION_FAILED:I = 0x901

.field public static final ERROR_SDK_NOT_INITIALIZED:I = 0x801

.field public static final FINDPEER_DEVICE_NOT_CONNECTED:I = 0x701

.field public static final FINDPEER_DUPLICATE_REQUEST:I = 0xc0d

.field public static final FINDPEER_SERVICE_NOT_FOUND:I = 0x702

.field public static final PEER_AGENT_AVAILABLE:I = 0x1

.field private static final PEER_AGENT_AVAILABLE_THIN:I = 0x69

.field public static final PEER_AGENT_FOUND:I = 0x0

.field public static final PEER_AGENT_UNAVAILABLE:I = 0x2

.field private static final PEER_AGENT_UNAVAILABLE_THIN:I = 0x6a

.field private static final SERVICE_RECORD_NOT_FOUND:I = 0x309

.field private static final TAG:Ljava/lang/String; = "SAAgent"


# instance fields
.field mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

.field private mAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;

.field private mAgentId:Ljava/lang/String;

.field mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

.field private mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

.field private mConnectionCallback:Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;

.field private mIsCalledInsertLogForApi:Z

.field private mName:Ljava/lang/String;

.field private mPeerAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;

.field private mPeerAuthCallback:Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;

.field private mPendingRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/sdk/accessory/SAPeerAgent;",
            ">;"
        }
    .end annotation
.end field

.field private mSa:Lcom/samsung/android/sdk/accessory/SA;

.field private mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

.field private mSocketImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccessfullConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "socketClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/sdk/accessory/SASocket;>;"
    const/4 v0, 0x0

    .line 597
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 478
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    .line 479
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mIsCalledInsertLogForApi:Z

    .line 600
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid parameter name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/accessory/SAAgent;->validateSocketImplementation(Ljava/lang/Class;)V

    .line 605
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mName:Ljava/lang/String;

    .line 606
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSocketImpl:Ljava/lang/Class;

    .line 607
    const-string v0, "SAAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Thread Name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SASocket Imple class:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return-void
.end method

.method private acceptServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4
    .param p1, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .prologue
    .line 1558
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    .line 1559
    .local v0, "agentId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1560
    const/16 v2, 0x800

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    .line 1565
    :goto_0
    return-void

    .line 1563
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->instantiateSocket()Lcom/samsung/android/sdk/accessory/SASocket;

    move-result-object v1

    .line 1564
    .local v1, "socket":Lcom/samsung/android/sdk/accessory/SASocket;
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mConnectionCallback:Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/samsung/android/sdk/accessory/SASocket;->acceptServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    .line 1367
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->bindToFramework()V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0

    .prologue
    .line 1424
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->registerService()V

    return-void
.end method

.method static synthetic access$10(Lcom/samsung/android/sdk/accessory/SAAgent;)Ljava/util/List;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSuccessfullConnections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    .line 1375
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->loadAgentId()V

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0

    .prologue
    .line 1439
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->requestPeerAgents()V

    return-void
.end method

.method static synthetic access$3(Lcom/samsung/android/sdk/accessory/SAAgent;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1486
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->notifyConnectionRequest(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    .prologue
    .line 1513
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->requestConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic access$5(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    .prologue
    .line 1557
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->acceptServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic access$6(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    .prologue
    .line 1567
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->rejectServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic access$7(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    .prologue
    .line 1583
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->requestPeerAuthInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic access$8(Lcom/samsung/android/sdk/accessory/SAAgent;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1603
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleAuthResponse(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$9(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0

    .prologue
    .line 1693
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->cleanup()V

    return-void
.end method

.method private bindToFramework()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 1369
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->registerAgentCallback(Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;)V

    .line 1372
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->loadAgentId()V

    .line 1373
    return-void
.end method

.method private cleanup()V
    .locals 3

    .prologue
    .line 1694
    const-string v1, "SAAgent"

    const-string v2, "Performing agent cleanup"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->cleanupConnections(Z)V

    .line 1696
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    .line 1697
    .local v0, "agentId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1698
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanupAgent(Ljava/lang/String;)V

    .line 1700
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->unregisterAgentCallback(Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;)V

    .line 1701
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v1, :cond_1

    .line 1702
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->quit()V

    .line 1703
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    .line 1705
    :cond_1
    return-void
.end method

.method private cleanupConnections(Z)V
    .locals 3
    .param p1, "isForceClose"    # Z

    .prologue
    .line 1708
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSuccessfullConnections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1715
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSuccessfullConnections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1716
    return-void

    .line 1708
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SASocket;

    .line 1709
    .local v0, "socket":Lcom/samsung/android/sdk/accessory/SASocket;
    if-eqz p1, :cond_1

    .line 1710
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SASocket;->forceClose()V

    goto :goto_0

    .line 1712
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SASocket;->close()V

    goto :goto_0
.end method

.method private declared-synchronized fetchServiceProfile()V
    .locals 5

    .prologue
    .line 1723
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->getDefaultInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    .line 1724
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    if-eqz v2, :cond_2

    .line 1725
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->fetchServicesDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    .line 1726
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-nez v2, :cond_0

    .line 1727
    const-string v2, "SAAgent"

    const-string v3, "fetch service profile description failed !!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-eqz v2, :cond_1

    .line 1734
    const-string v2, "SAAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "=======service profile========\nApplication name : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1735
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1736
    const-string v4, " - profile id   : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1737
    const-string v4, " - service name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1738
    const-string v4, " - role : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getRole()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1739
    const-string v4, " - service impl : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getServiceImpl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1740
    const-string v4, " - version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1741
    const-string v4, " - service limit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getServiceLimit()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1742
    const-string v4, " - transport type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getTransportType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1734
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getServiceChannelList()Ljava/util/List;

    move-result-object v0

    .line 1744
    .local v0, "channelList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessory/SAServiceChannel;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lt v1, v2, :cond_3

    .line 1747
    .end local v0    # "channelList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessory/SAServiceChannel;>;"
    .end local v1    # "i":I
    :cond_1
    monitor-exit p0

    return-void

    .line 1729
    :cond_2
    :try_start_1
    const-string v2, "SAAgent"

    const-string v3, "config  util defualt instance  creation failed !!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1723
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1745
    .restart local v0    # "channelList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessory/SAServiceChannel;>;"
    .restart local v1    # "i":I
    :cond_3
    :try_start_2
    const-string v3, "SAAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " -- service channel ("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAServiceChannel;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->getChannelId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1744
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getFloatingFeature()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1958
    const/4 v5, 0x0

    .line 1960
    .local v5, "ret":Z
    :try_start_0
    const-string v6, "com.samsung.android.feature.FloatingFeature"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1961
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "getInstance"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1962
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1963
    .local v4, "obj":Ljava/lang/Object;
    const-string v6, "getEnableStatus"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1964
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    aput-object v9, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1965
    const-string v6, "SecFloating"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "floating feature : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v6, v5

    .line 1981
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "obj":Ljava/lang/Object;
    :goto_1
    return v6

    .line 1966
    :catch_0
    move-exception v1

    .line 1967
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "SecFloating"

    const-string v8, "Floating feature is not supported (non-samsung device)"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    :try_start_1
    const-string v6, "com.samsung.android.feature.SemFloatingFeature"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1970
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "getInstance"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1971
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1972
    .restart local v4    # "obj":Ljava/lang/Object;
    const-string v6, "getBoolean"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1973
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    aput-object v9, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1974
    const-string v6, "SecFloating"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "floating feature : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1975
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "obj":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 1976
    .local v2, "e1":Ljava/lang/Exception;
    const-string v6, "SecFloating"

    const-string v8, "Floating feature is not supported this device (non-samsung device)"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1977
    goto :goto_1
.end method

.method private handleAuthResponse(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "response"    # Landroid/os/Bundle;

    .prologue
    .line 1604
    const-class v5, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1605
    const-string v5, "PEER_AGENT_KEY"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 1606
    .local v2, "key":[B
    const-string v5, "CERT_TYPE"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1607
    .local v1, "certType":I
    const-string v5, "peerAgent"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1608
    .local v3, "peerAgent":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    const-string v5, "transactionId"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1610
    .local v6, "transactionId":J
    if-nez v3, :cond_0

    .line 1611
    const-string v5, "SAAgent"

    const-string v8, "Invalid response from framework! No peer agent in auth response.Ignoring response"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :goto_0
    return-void

    .line 1616
    :cond_0
    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->setTransactionId(J)V

    .line 1618
    const/4 v4, 0x0

    .line 1619
    .local v4, "status":I
    if-nez v2, :cond_1

    .line 1620
    const/16 v4, 0x609

    .line 1621
    const-string v5, "SAAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Authentication failed error:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Peer Id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :goto_1
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;-><init>(I[B)V

    .line 1626
    .local v0, "authToken":Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;
    invoke-virtual {p0, v3, v0, v4}, Lcom/samsung/android/sdk/accessory/SAAgent;->onAuthenticationResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;I)V

    goto :goto_0

    .line 1623
    .end local v0    # "authToken":Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;
    :cond_1
    const-string v5, "SAAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Authentication success status: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for peer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleInvalidPeerAction(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 5
    .param p1, "peer"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .prologue
    .line 1655
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPendingRequests:Ljava/util/Set;

    monitor-enter v3

    .line 1657
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1660
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v2, :cond_1

    .line 1661
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1662
    .local v0, "message":Landroid/os/Message;
    const/16 v2, 0x409

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1663
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1664
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1655
    .end local v0    # "message":Landroid/os/Message;
    :goto_1
    monitor-exit v3

    .line 1669
    return-void

    .line 1657
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1658
    .local v1, "peerAgent":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->rejectServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_0

    .line 1655
    .end local v1    # "peerAgent":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1666
    :cond_1
    :try_start_1
    const-string v2, "SAAgent"

    const-string v4, "handleInvlaidPeerAction: mBackgroundWorker is null!"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private insertLogForAPI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apiName"    # Ljava/lang/String;

    .prologue
    .line 1919
    const/4 v6, -0x1

    .line 1921
    .local v6, "version":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1922
    const-string v8, "com.samsung.android.providers.context"

    const/16 v9, 0x80

    .line 1921
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1923
    .local v5, "pInfo":Landroid/content/pm/PackageInfo;
    iget v6, v5, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1927
    .end local v5    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    const-string v7, "SM_SDK"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "versionCode: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 1929
    const-string v7, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    invoke-virtual {p1, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    .line 1931
    const-string v7, "SM_SDK"

    const-string v8, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY is not allowed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_0
    :goto_1
    return-void

    .line 1924
    :catch_0
    move-exception v3

    .line 1925
    .local v3, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "SM_SDK"

    const-string v8, "Could not find ContextProvider"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1935
    .end local v3    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v7, "SM_SDK"

    const-string v8, "Add com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1939
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getFloatingFeature()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1940
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1942
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1943
    .local v0, "appId":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/accessory/SA;->getVersionCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1945
    .local v4, "feature":Ljava/lang/String;
    const-string v7, "app_id"

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    const-string v7, "feature"

    invoke-virtual {v2, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    const-string v7, "extra"

    invoke-virtual {v2, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1950
    .local v1, "broadcastIntent":Landroid/content/Intent;
    const-string v7, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1951
    const-string v7, "data"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1952
    const-string v7, "com.samsung.android.providers.context"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1953
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private instantiateSocket()Lcom/samsung/android/sdk/accessory/SASocket;
    .locals 6

    .prologue
    .line 1527
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1528
    const-class v2, Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1530
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSocketImpl:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 1531
    iget-object v5, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1530
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1532
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1533
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SASocket;

    .line 1537
    :goto_0
    return-object v2

    .line 1535
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSocketImpl:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1536
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1537
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SASocket;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 1539
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v1

    .line 1540
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "SAAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid implemetation of SASocket. Provide a public default constructor."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1542
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 1543
    .local v1, "e":Ljava/lang/InstantiationException;
    const-string v2, "SAAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid implemetation of SASocket. Provide a public default constructor."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1545
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 1546
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "SAAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid implemetation of SASocket. Provide a public default constructor."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1548
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 1549
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SAAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid implemetation of SASocket. Provide a public default constructor."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1551
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 1552
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "SAAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid implemetation of SASocket. Provide a public default constructor."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private loadAgentId()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    .line 1376
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    .line 1377
    .local v0, "agentId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1378
    const/16 v3, 0x800

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    .line 1393
    :goto_0
    return-void

    .line 1385
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "AccessoryPreferences"

    .line 1386
    const/4 v5, 0x0

    .line 1385
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1387
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1388
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1389
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1390
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1392
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAgentId:Ljava/lang/String;

    goto :goto_0
.end method

.method private notifyConnectionRequest(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1487
    if-nez p1, :cond_0

    .line 1489
    const-string v4, "SAAgent"

    const-string v5, "Invalid service connection indication.Intent:null.Ignoring reqeuset"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :goto_0
    return-void

    .line 1492
    :cond_0
    const-string v4, "transactionId"

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1493
    .local v2, "transactionId":J
    const-string v4, "peerAgent"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1494
    .local v0, "initiatorAgent":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    const-string v4, "agentId"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1496
    .local v1, "localAgentId":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1497
    const-string v4, "SAAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid initiator peer agent:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".Ignorin connection request"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1500
    :cond_1
    if-nez v1, :cond_2

    .line 1501
    const-string v4, "SAAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid local agent Id:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".Ignorin connection request"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1505
    :cond_2
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->setTransactionId(J)V

    .line 1506
    const-string v4, "SAAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Connection initiated by peer:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1507
    const-string v6, "on Accessory:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getAccessoryId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Transaction:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1506
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1510
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->onServiceConnectionRequested(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto/16 :goto_0
.end method

.method private registerService()V
    .locals 5

    .prologue
    .line 1425
    new-instance v2, Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;-><init>(Landroid/content/Context;)V

    .line 1426
    .local v2, "registrationTask":Lcom/samsung/android/sdk/accessory/SARegistrationTask;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->prepare()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 1427
    .local v1, "registrationFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->start()V

    .line 1429
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1437
    :goto_0
    return-void

    .line 1430
    :catch_0
    move-exception v0

    .line 1431
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "SAAgent"

    const-string v4, "Regisration failed! : InterruptedException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1433
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1434
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v3, "SAAgent"

    const-string v4, "Registration failed! : ExecutionException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private rejectServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 6
    .param p1, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    .line 1569
    .local v0, "agentId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1570
    const/16 v2, 0x800

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    .line 1581
    :goto_0
    return-void

    .line 1574
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    .line 1576
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v4

    .line 1574
    invoke-virtual {v2, v0, p1, v4, v5}, Lcom/samsung/android/sdk/accessory/SAAdapter;->rejectServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1577
    :catch_0
    move-exception v1

    .line 1578
    .local v1, "e":Lcom/samsung/android/sdk/accessory/SAException;
    const-string v2, "SAAgent"

    const-string v3, "Failed to reject Service connection!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1579
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_0
.end method

.method private requestConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4
    .param p1, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .prologue
    .line 1514
    const/4 v0, 0x0

    .line 1515
    .local v0, "agentId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    .line 1516
    if-nez v0, :cond_0

    .line 1517
    const-string v2, "SAAgent"

    const-string v3, "Failed to retrieve service description.Ignoring service connection request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    const/16 v2, 0x800

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    .line 1523
    :goto_0
    return-void

    .line 1521
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->instantiateSocket()Lcom/samsung/android/sdk/accessory/SASocket;

    move-result-object v1

    .line 1522
    .local v1, "socket":Lcom/samsung/android/sdk/accessory/SASocket;
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mConnectionCallback:Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/samsung/android/sdk/accessory/SASocket;->initiateServiceconnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;)V

    goto :goto_0
.end method

.method private requestPeerAgents()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1441
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    .line 1442
    .local v0, "agentId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1443
    const/16 v3, 0x800

    invoke-virtual {p0, v3, v6}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    .line 1458
    :goto_0
    return-void

    .line 1447
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPeerAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/sdk/accessory/SAAdapter;->findPeerAgents(Ljava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I

    move-result v2

    .line 1448
    .local v2, "status":I
    if-nez v2, :cond_1

    .line 1449
    const-string v3, "SAAgent"

    const-string v4, "Find peer request enqueued successfully."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1454
    .end local v2    # "status":I
    :catch_0
    move-exception v1

    .line 1455
    .local v1, "e":Lcom/samsung/android/sdk/accessory/SAException;
    const-string v3, "SAAgent"

    const-string v4, "Find Peer request failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v3

    invoke-virtual {p0, v3, v6}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_0

    .line 1451
    .end local v1    # "e":Lcom/samsung/android/sdk/accessory/SAException;
    .restart local v2    # "status":I
    :cond_1
    :try_start_1
    const-string v3, "SAAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Find peer failed:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/sdk/accessory/SAAgent;->onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private requestPeerAuthInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 8
    .param p1, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .prologue
    .line 1584
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v1

    .line 1585
    .local v1, "agentId":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1586
    const/16 v0, 0x800

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    .line 1601
    :goto_0
    return-void

    .line 1590
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPeerAuthCallback:Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v4

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/accessory/SAAdapter;->authenticatePeeragent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I

    move-result v7

    .line 1591
    .local v7, "status":I
    if-nez v7, :cond_1

    .line 1592
    const-string v0, "SAAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Authentication request for peer:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requested successfully."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1597
    .end local v7    # "status":I
    :catch_0
    move-exception v6

    .line 1598
    .local v6, "e":Lcom/samsung/android/sdk/accessory/SAException;
    const-string v0, "SAAgent"

    const-string v2, "Failed to request peer authentication!"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1599
    invoke-virtual {v6}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_0

    .line 1594
    .end local v6    # "e":Lcom/samsung/android/sdk/accessory/SAException;
    .restart local v7    # "status":I
    :cond_1
    :try_start_1
    const-string v0, "SAAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to request authentication for peer:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v7}, Lcom/samsung/android/sdk/accessory/SAAgent;->onAuthenticationResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;I)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private validateSocketImplementation(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1405
    .local p1, "socketClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/sdk/accessory/SASocket;>;"
    if-nez p1, :cond_0

    .line 1406
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid socketClass param:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1411
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1412
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 1422
    :goto_0
    return-void

    .line 1415
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1417
    :catch_0
    move-exception v0

    .line 1418
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "SAAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1419
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid implemetation of SASocket. Provider a public default constructor in the implementation class."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected acceptServiceConnectionRequest(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 8
    .param p1, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .prologue
    .line 1007
    if-nez p1, :cond_0

    .line 1008
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Illegal argument peerAgent:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1011
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 1020
    .local v1, "isPeerValid":Z
    if-eqz v1, :cond_4

    .line 1021
    const-string v3, "SAAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Trying to Accept service connection request from peer:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1022
    const-string v5, " Transaction:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1021
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v3, :cond_3

    .line 1024
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1025
    .local v2, "message":Landroid/os/Message;
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1026
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1035
    .end local v2    # "message":Landroid/os/Message;
    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mIsCalledInsertLogForApi:Z

    if-nez v3, :cond_2

    .line 1037
    :try_start_1
    invoke-static {}, Lcom/samsung/android/sdk/SsdkVendorCheck;->isSamsungDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1038
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "acceptServiceConnectionRequest"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/sdk/accessory/SAAgent;->insertLogForAPI(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1043
    :cond_1
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mIsCalledInsertLogForApi:Z

    .line 1045
    .end local v1    # "isPeerValid":Z
    :cond_2
    :goto_2
    return-void

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    const-string v3, "SAAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/16 v3, 0x801

    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_2

    .line 1028
    .end local v0    # "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    .restart local v1    # "isPeerValid":Z
    :cond_3
    const-string v3, "SAAgent"

    const-string v4, "acceptServiceConnection: mBackgroundWorker is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1031
    :cond_4
    const-string v3, "SAAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Accepting service connection with invalid peer agent:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleInvalidPeerAction(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_0

    .line 1039
    :catch_1
    move-exception v0

    .line 1041
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "SAAgent"

    const-string v4, "SecurityException : com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission is required."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected authenticatePeerAgent(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 5
    .param p1, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .prologue
    .line 1112
    if-nez p1, :cond_0

    .line 1113
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal argument peerAgent:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1116
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    const-string v2, "SAAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Authentication requested for peer:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v2, :cond_3

    .line 1124
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1125
    .local v1, "message":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1126
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1130
    .end local v1    # "message":Landroid/os/Message;
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mIsCalledInsertLogForApi:Z

    if-nez v2, :cond_2

    .line 1132
    :try_start_1
    invoke-static {}, Lcom/samsung/android/sdk/SsdkVendorCheck;->isSamsungDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1133
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "authenticatePeerAgent"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/sdk/accessory/SAAgent;->insertLogForAPI(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1138
    :cond_1
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mIsCalledInsertLogForApi:Z

    .line 1141
    :cond_2
    :goto_2
    return-void

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    const-string v2, "SAAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    const/16 v2, 0x801

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_2

    .line 1128
    .end local v0    # "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    :cond_3
    const-string v2, "SAAgent"

    const-string v3, "authenticatePeerAgent: mBackgroundWorker is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1134
    :catch_1
    move-exception v0

    .line 1136
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "SAAgent"

    const-string v3, "SecurityException : com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission is required."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected final declared-synchronized findPeerAgents()V
    .locals 5

    .prologue
    .line 932
    monitor-enter p0

    :try_start_0
    const-string v2, "SAAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "findPeer request received by:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 940
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v2, :cond_0

    .line 941
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 942
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 943
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 947
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    monitor-exit p0

    return-void

    .line 935
    :catch_0
    move-exception v0

    .line 936
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    :try_start_3
    const-string v2, "SAAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const/16 v2, 0x801

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 932
    .end local v0    # "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 945
    :cond_0
    :try_start_4
    const-string v2, "SAAgent"

    const-string v3, "findPeerAgents: mBackgroundWorker is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1636
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    .line 1637
    .local v0, "agentId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1638
    const/16 v1, 0x800

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    .line 1640
    :cond_0
    return-object v0
.end method

.method getLocalAgentId()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1461
    const/4 v0, 0x0

    .line 1463
    .local v0, "agentId":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getLocalAgentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1464
    const-string v4, "SAAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Agent ID retrieved successfully for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Agent ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 1481
    :goto_0
    return-object v3

    .line 1466
    :catch_0
    move-exception v1

    .line 1467
    .local v1, "e":Lcom/samsung/android/sdk/accessory/SAException;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v4

    const/16 v5, 0x309

    if-ne v4, v5, :cond_0

    .line 1468
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkVersion()I

    move-result v4

    const/16 v5, 0x12a

    if-lt v4, v5, :cond_0

    .line 1469
    const-string v4, "SAAgent"

    const-string v5, "Service record was not found in Accessory Framework.Registering service again!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->registerService()V

    .line 1472
    :try_start_1
    const-string v4, "SAAgent"

    const-string v5, "Trying to fetch agent ID after re-registration"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getLocalAgentId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v3, v0

    .line 1474
    goto :goto_0

    .line 1475
    :catch_1
    move-exception v2

    .line 1476
    .local v2, "e1":Lcom/samsung/android/sdk/accessory/SAException;
    const-string v4, "SAAgent"

    const-string v5, "Failed to retrieve service record after re-registration"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1480
    .end local v2    # "e1":Lcom/samsung/android/sdk/accessory/SAException;
    :cond_0
    const-string v4, "SAAgent"

    const-string v5, "Failed to retrieve service record"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getServiceChannelId(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, -0x1

    .line 1223
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-nez v1, :cond_0

    .line 1224
    const-string v1, "SAAgent"

    const-string v2, "Failed because Service Profile is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :goto_0
    return v0

    .line 1228
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getServiceChannelSize()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 1229
    :cond_1
    const-string v1, "SAAgent"

    const-string v2, "Failed because of wrong index"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1233
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getServiceChannelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->getChannelId()I

    move-result v0

    goto :goto_0
.end method

.method public getServiceChannelSize()I
    .locals 2

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-nez v0, :cond_0

    .line 1196
    const-string v0, "SAAgent"

    const-string v1, "Failed because Service Profile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const/4 v0, -0x1

    .line 1199
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getServiceChannelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getServiceProfileId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-nez v0, :cond_0

    .line 1155
    const-string v0, "SAAgent"

    const-string v1, "Failed because Service Profile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const/4 v0, 0x0

    .line 1158
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getServiceProfileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-nez v0, :cond_0

    .line 1173
    const-string v0, "SAAgent"

    const-string v1, "Failed because Service Profile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const/4 v0, 0x0

    .line 1176
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .prologue
    const/4 v2, 0x0

    .line 1672
    sparse-switch p1, :sswitch_data_0

    .line 1689
    const-string v0, "SAAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handle Error: unknown error code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :goto_0
    return-void

    .line 1674
    :sswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->cleanupConnections(Z)V

    .line 1675
    const-string v0, "Samsung Accessory Framework has died!!"

    invoke-virtual {p0, v2, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    goto :goto_0

    .line 1678
    :sswitch_1
    const-string v0, "SAAgent"

    const-string v1, "Samsung Accessory SDK cannot be initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    const-string v0, "Samsung Accessory SDK cannot be initialized. Device or Build not compatible."

    invoke-virtual {p0, v2, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    goto :goto_0

    .line 1682
    :sswitch_2
    const/16 v0, 0x409

    invoke-virtual {p0, p2, v2, v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V

    goto :goto_0

    .line 1686
    :sswitch_3
    const-string v0, "Permission error!"

    invoke-virtual {p0, v2, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    goto :goto_0

    .line 1672
    :sswitch_data_0
    .sparse-switch
        0x409 -> :sswitch_2
        0x800 -> :sswitch_0
        0x801 -> :sswitch_1
        0x900 -> :sswitch_3
        0x901 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onAuthenticationResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;I)V
    .locals 3
    .param p1, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p2, "authToken"    # Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;
    .param p3, "code"    # I

    .prologue
    .line 921
    const-string v0, "SAAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Peer authentication response received:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    return-void
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 488
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 490
    :try_start_0
    new-instance v4, Lcom/samsung/android/sdk/accessory/SASdkConfig;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/accessory/SASdkConfig;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :goto_0
    const-string v4, "SAAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SAAgent - onCreate:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSuccessfullConnections:Ljava/util/List;

    .line 496
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPendingRequests:Ljava/util/Set;

    .line 499
    new-instance v3, Landroid/os/HandlerThread;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mName:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 500
    .local v3, "workerThread":Landroid/os/HandlerThread;
    new-instance v4, Lcom/samsung/android/sdk/accessory/SAAgent$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/sdk/accessory/SAAgent$1;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    invoke-virtual {v3, v4}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 514
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 515
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 516
    .local v1, "looper":Landroid/os/Looper;
    if-nez v1, :cond_0

    .line 517
    const-string v4, "SAAgent"

    const-string v5, "Unable to start Agent thread."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unable to start Agent.Worker thread creation failed"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 491
    .end local v1    # "looper":Landroid/os/Looper;
    .end local v3    # "workerThread":Landroid/os/HandlerThread;
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Lcom/samsung/android/sdk/accessory/SAException;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->printStackTrace()V

    goto :goto_0

    .line 520
    .end local v0    # "e":Lcom/samsung/android/sdk/accessory/SAException;
    .restart local v1    # "looper":Landroid/os/Looper;
    .restart local v3    # "workerThread":Landroid/os/HandlerThread;
    :cond_0
    new-instance v4, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    .line 522
    new-instance v4, Lcom/samsung/android/sdk/accessory/SA;

    invoke-direct {v4}, Lcom/samsung/android/sdk/accessory/SA;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    .line 524
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 532
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    .line 534
    new-instance v4, Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;

    invoke-direct {v4, p0, v7}, Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;)V

    iput-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPeerAuthCallback:Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;

    .line 535
    new-instance v4, Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;

    invoke-direct {v4, p0, v7}, Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;)V

    iput-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPeerAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;

    .line 538
    new-instance v4, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;

    invoke-direct {v4, p0, v7}, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;)V

    iput-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mConnectionCallback:Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;

    .line 539
    new-instance v4, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;

    invoke-direct {v4, p0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    iput-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;

    .line 542
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendEmptyMessage(I)Z

    .line 545
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->fetchServiceProfile()V

    .line 546
    return-void

    .line 525
    :catch_1
    move-exception v0

    .line 526
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    const-string v4, "SAAgent"

    const-string v5, "SDK initialization failed!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 528
    .local v2, "message":Landroid/os/Message;
    const/16 v4, 0x801

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 529
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 570
    const-string v0, "SAAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAAgent - onDestroy:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 576
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 577
    return-void
.end method

.method protected onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V
    .locals 3
    .param p1, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .prologue
    .line 892
    if-nez p1, :cond_0

    .line 893
    const-string v0, "SAAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACCEPT_STATE_ERROR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PeerAgent: null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/accessory/SAAgent;->onError(Ljava/lang/String;I)V

    .line 899
    return-void

    .line 895
    :cond_0
    const-string v0, "SAAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACCEPT_STATE_ERROR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PeerAgent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 896
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 895
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onError(Ljava/lang/String;I)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 871
    const-string v0, "SAAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACCEPT_STATE_ERROR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    return-void
.end method

.method protected onFindPeerAgentResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 2
    .param p1, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p2, "result"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 642
    const-string v0, "SAAgent"

    const-string v1, "Invalid implementation of SAAgent. Either one of onFindPeerAgentsResponse(SAPeerAgent[], int) and onFindPeerAgentResponse(SAPeerAgent, int) should be overrided!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void
.end method

.method protected onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 3
    .param p1, "peerAgents"    # [Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p2, "result"    # I

    .prologue
    .line 676
    if-nez p1, :cond_1

    .line 677
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/sdk/accessory/SAAgent;->onFindPeerAgentResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 682
    :cond_0
    return-void

    .line 679
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 680
    .local v0, "peerAgent":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/sdk/accessory/SAAgent;->onFindPeerAgentResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 679
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onPeerAgentUpdated(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 0
    .param p1, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p2, "result"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 818
    return-void
.end method

.method protected onPeerAgentsUpdated([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 3
    .param p1, "peerAgents"    # [Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p2, "result"    # I

    .prologue
    .line 845
    if-nez p1, :cond_1

    .line 846
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/sdk/accessory/SAAgent;->onPeerAgentUpdated(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 851
    :cond_0
    return-void

    .line 848
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 849
    .local v0, "peerAgent":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/sdk/accessory/SAAgent;->onPeerAgentUpdated(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 848
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onServiceConnectionRequested(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4
    .param p1, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .prologue
    .line 706
    if-eqz p1, :cond_0

    .line 707
    const-string v0, "SAAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accepting connection request by default from Peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Transaction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->acceptServiceConnectionRequest(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    .line 710
    return-void
.end method

.method protected onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V
    .locals 2
    .param p1, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p2, "socket"    # Lcom/samsung/android/sdk/accessory/SASocket;
    .param p3, "result"    # I

    .prologue
    .line 785
    const-string v0, "SAAgent"

    .line 786
    const-string v1, "No Implementaion for onServiceConnectionResponse(SAPeerAgent peerAgent, SASocket socket, int result)! \n Calling deprecated API"

    .line 785
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/accessory/SAAgent;->onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SASocket;I)V

    .line 788
    return-void
.end method

.method protected onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SASocket;I)V
    .locals 2
    .param p1, "socket"    # Lcom/samsung/android/sdk/accessory/SASocket;
    .param p2, "result"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 747
    const-string v0, "SAAgent"

    .line 748
    const-string v1, "No implementaion for method onServiceConnectionResponse(SAPeerAgent peerAgent, SASocket socket, int result): Implement method to get instance for SASocket"

    .line 747
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 550
    if-eqz p1, :cond_0

    .line 552
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 553
    const-string v2, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 554
    const-string v2, "SAAgent"

    const-string v3, "Received incoming connection indication"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 556
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 557
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 558
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 559
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    .line 565
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    const/4 v2, 0x2

    return v2

    .line 560
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v2, "com.samsung.accessory.action.MESSAGE_RECEIVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    const-string v2, "SAAgent"

    const-string v3, "MessageReceived: SAMessageImpl class not instantiated for this agent!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 581
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->getDefault()Lcom/samsung/android/sdk/accessory/SABufferAccessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->clearCache(I)V

    .line 582
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 583
    return-void
.end method

.method protected rejectServiceConnectionRequest(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 8
    .param p1, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .prologue
    .line 1059
    if-nez p1, :cond_0

    .line 1060
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Illegal argument peerAgent:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1063
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 1071
    .local v1, "isPeerValid":Z
    if-eqz v1, :cond_4

    .line 1072
    const-string v3, "SAAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Trying to reject connection request from peer:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Transaction:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1072
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v3, :cond_3

    .line 1075
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1076
    .local v2, "message":Landroid/os/Message;
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1077
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1085
    .end local v2    # "message":Landroid/os/Message;
    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mIsCalledInsertLogForApi:Z

    if-nez v3, :cond_2

    .line 1087
    :try_start_1
    invoke-static {}, Lcom/samsung/android/sdk/SsdkVendorCheck;->isSamsungDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1088
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "rejectServiceConnectionRequest"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/sdk/accessory/SAAgent;->insertLogForAPI(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1093
    :cond_1
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mIsCalledInsertLogForApi:Z

    .line 1096
    .end local v1    # "isPeerValid":Z
    :cond_2
    :goto_2
    return-void

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    const-string v3, "SAAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const/16 v3, 0x801

    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_2

    .line 1079
    .end local v0    # "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    .restart local v1    # "isPeerValid":Z
    :cond_3
    const-string v3, "SAAgent"

    const-string v4, "rejectServiceConnection: mBackgroundWorker is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1082
    :cond_4
    const-string v3, "SAAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Rejecting service connection with invalid peer agent:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleInvalidPeerAction(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_0

    .line 1089
    :catch_1
    move-exception v0

    .line 1091
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "SAAgent"

    const-string v4, "SecurityException : com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission is required."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected final requestServiceConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 5
    .param p1, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .prologue
    .line 964
    if-nez p1, :cond_0

    .line 965
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal argument peerAgent:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 968
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    const-string v2, "SAAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Service connection requested for peer:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v2, :cond_3

    .line 976
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 977
    .local v1, "message":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 978
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    .line 983
    .end local v1    # "message":Landroid/os/Message;
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mIsCalledInsertLogForApi:Z

    if-nez v2, :cond_2

    .line 985
    :try_start_1
    invoke-static {}, Lcom/samsung/android/sdk/SsdkVendorCheck;->isSamsungDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 986
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requestServiceConnection"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/sdk/accessory/SAAgent;->insertLogForAPI(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 991
    :cond_1
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mIsCalledInsertLogForApi:Z

    .line 993
    :cond_2
    :goto_2
    return-void

    .line 969
    :catch_0
    move-exception v0

    .line 970
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    const-string v2, "SAAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const/16 v2, 0x801

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_2

    .line 980
    .end local v0    # "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    :cond_3
    const-string v2, "SAAgent"

    const-string v3, "requestServiceConection: mBackgroundWorker is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 987
    :catch_1
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "SAAgent"

    const-string v3, "SecurityException : com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission is required."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method runOnBackgroundThread(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
