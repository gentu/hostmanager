.class public Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;
.super Ljava/lang/Object;
.source "DataExchanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$IDataExchangeEventListener;
    }
.end annotation


# static fields
.field public static final ERROR_PARSE_ERROR:I = 0x101

.field public static final EVENT_ERROR:I = 0x100

.field public static final EVENT_FEATURE_EXCHANGE:I = 0x2

.field public static final EVENT_FIND_PEER:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private address:Ljava/lang/String;

.field private featureExchangeFinished:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

.field private mDisconnectTask:Ljava/lang/Runnable;

.field private mFindPeerTask:Ljava/lang/Runnable;

.field private mFinishTask:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIsFindPeerPending:Z

.field private mIsPeerAgentConnected:Z

.field private mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$IDataExchangeEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileVersion:Ljava/lang/String;

.field private mSAPEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

.field private mSAPService:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

.field private manuallyDisconnected:Z

.field private pDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

.field private retryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "DataExchanger"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 2
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->pDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 55
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mSAPService:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    .line 57
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mIsPeerAgentConnected:Z

    .line 59
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->retryCount:I

    .line 64
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->manuallyDisconnected:Z

    .line 66
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->featureExchangeFinished:Z

    .line 70
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mProfileVersion:Ljava/lang/String;

    .line 74
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mIsFindPeerPending:Z

    .line 254
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnection:Landroid/content/ServiceConnection;

    .line 282
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mSAPEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    .line 770
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$3;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mFindPeerTask:Ljava/lang/Runnable;

    .line 779
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$4;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mDisconnectTask:Ljava/lang/Runnable;

    .line 792
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$5;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mFinishTask:Ljava/lang/Runnable;

    .line 79
    iput-object p0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->pDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .line 81
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mSAPService:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;)Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;
    .param p1, "x1"    # Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mSAPService:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;
    .param p1, "x1"    # [B

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->notifyReceivedData([B)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mFindPeerTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .prologue
    .line 31
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->retryCount:I

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->retryCount:I

    return p1
.end method

.method static synthetic access$1308(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .prologue
    .line 31
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->retryCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->checkSAPConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->manuallyDisconnected:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->featureExchangeFinished:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendFeatureExchangeFAILEvent()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mSAPEventListener:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mIsFindPeerPending:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mIsFindPeerPending:Z

    return p1
.end method

.method static synthetic access$402(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mIsPeerAgentConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mProfileVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mProfileVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->notifyEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->generateProfileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    return-object v0
.end method

.method private checkSAPConnection()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 650
    const/4 v1, 0x0

    .line 653
    .local v1, "mAccessoryManager":Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 654
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getEventHandler()Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-result-object v4

    .line 655
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->getAccessoryEventCallback()Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    move-result-object v4

    .line 653
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 666
    :goto_0
    if-nez v1, :cond_0

    .line 717
    :goto_1
    return v5

    .line 656
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v4, "[jdub] SsdkUnsupportedException: SamAccessoryManager.getDefaultInstance"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 661
    .end local v0    # "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    :catch_1
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v4, "[jdub] Exception: SamAccessoryManager.getDefaultInstance"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 714
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1RecoverTask;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1RecoverTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 715
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method private doBindSAAgentService()Z
    .locals 6

    .prologue
    .line 228
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    if-nez v2, :cond_0

    .line 229
    const/4 v1, 0x0

    .line 244
    :goto_0
    return v1

    .line 231
    :cond_0
    const/4 v1, 0x0

    .line 234
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const-class v5, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 237
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[jdub] SAP, bindService result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 241
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v3, "[jdub] SAP, bindService error!!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doUnbindSAAgentService()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mSAPService:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->unbindService(Landroid/content/ServiceConnection;)V

    .line 252
    :cond_0
    return-void
.end method

.method private generateProfileVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "profileVersion"    # Ljava/lang/String;

    .prologue
    .line 882
    const-string v1, ""

    .line 884
    .local v1, "str":Ljava/lang/String;
    const-string v0, "PROFILE_VERSION#"

    .line 886
    .local v0, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 888
    return-object v1
.end method

.method private notifyEvent(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "eventType"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 610
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 617
    :cond_0
    return-void

    .line 613
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$IDataExchangeEventListener;

    .line 614
    .local v0, "listener":Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$IDataExchangeEventListener;
    if-eqz v0, :cond_2

    .line 615
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$IDataExchangeEventListener;->onEvent(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private notifyReceivedData([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 423
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->pDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-direct {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)V

    .line 424
    .local v0, "builder":Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;
    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->parse([B)Z

    move-result v2

    .line 425
    .local v2, "result":Z
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 435
    :goto_0
    return-void

    .line 428
    :cond_0
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v4, "[jdub] notifyReceivedData, Sending Error Response "

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 430
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v4, "FAIL"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v3, "BUNDLE_CMKEY_INT_ERRORCODE"

    const/16 v4, 0x101

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 432
    const-string v3, "BUNDLE_STRING_ADDRESS"

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/16 v3, 0x100

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->notifyEvent(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private sendFeatureExchangeFAILEvent()V
    .locals 4

    .prologue
    .line 548
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 549
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v3, "FAIL"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 551
    .local v1, "deviceBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 552
    const-string v2, "BUNDLE_STRING_ADDRESS"

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const/4 v2, 0x2

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->notifyEvent(ILandroid/os/Bundle;)V

    .line 554
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$IDataExchangeEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$IDataExchangeEventListener;

    .prologue
    .line 603
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[jdub] DataExchanger, addEventListener: current size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 604
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 603
    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    return-void
.end method

.method public clearDataExhangerDetails()V
    .locals 2

    .prologue
    .line 439
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v1, "[jdub] clearDataExhangerDetails "

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mIsPeerAgentConnected:Z

    .line 443
    return-void
.end method

.method public configurePan()V
    .locals 4

    .prologue
    .line 557
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v3, "[jdub] request PAN configuration"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 560
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v3, "[jdub] DataExchanger.adddress = null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :goto_0
    return-void

    .line 564
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 565
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 568
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ADDRESS"

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 572
    const-string v2, "BUNDLE_CMKEY_STRING_CALLER"

    const-string v3, "WEARABLE"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public configurePanResponse(ZLjava/lang/String;)V
    .locals 2
    .param p1, "result"    # Z
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 578
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->pDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)V

    .line 580
    .local v0, "builder":Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->sendPanResponseData(ZLjava/lang/String;)V

    .line 581
    return-void
.end method

.method public connectSAAccessoryWifi(Ljava/lang/String;)V
    .locals 3
    .param p1, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 493
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 494
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .line 495
    .local v0, "wifiP2pHandler":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->connectSAP(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :goto_0
    return-void

    .line 498
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v2, "[wifip2p] connectSAAccessoryWifi wifiP2pHandler is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public connectWifiP2p(I)V
    .locals 4
    .param p1, "reqOrRes"    # I

    .prologue
    .line 817
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v3, "[wifip2p] request Wifi P2P connection"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 821
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v3, "[wifip2p] DataExchanger.adddress = null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendConnectCmdWifiP2p(I)V

    .line 841
    :goto_0
    return-void

    .line 826
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 827
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 830
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ADDRESS"

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 833
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 835
    const-string v2, "BUNDLE_CMKEY_STRING_CALLER"

    const-string v3, "WEARABLE"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 836
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 837
    const-string v2, "BUNDLE_CMKEY_STRING_CALLER"

    const-string v3, "HOST_RES"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public disconnectPan()V
    .locals 5

    .prologue
    .line 584
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 585
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;

    .line 587
    .local v2, "panHandler":Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;
    if-eqz v2, :cond_0

    .line 588
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->isWearableRequest()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 591
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 592
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 595
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_STRING_ADDRESS"

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 597
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v4, 0x24

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 600
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "itemBundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public disconnectWifiP2p()V
    .locals 5

    .prologue
    .line 849
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 850
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .line 852
    .local v2, "p2pHandler":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    if-eqz v2, :cond_0

    .line 853
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 854
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 857
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_STRING_ADDRESS"

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 859
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v4, 0x16

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 861
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "itemBundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public doFeatureExchange()V
    .locals 6

    .prologue
    .line 100
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v2, "[jdub] 5. send Request data"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mProfileVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mFinishTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->pDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)V

    .line 106
    .local v0, "builder":Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mProfileVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->sendRequestData(Ljava/lang/String;)V

    .line 111
    .end local v0    # "builder":Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;
    :goto_0
    return-void

    .line 108
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v2, "[jdub] Wearable Service Profile Version is not set"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendFeatureExchangeFAILEvent()V

    goto :goto_0
.end method

.method public doFindPeer()V
    .locals 0

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->findPeer()Z

    .line 156
    return-void
.end method

.method public findPeer()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 167
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mSAPService:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    if-nez v2, :cond_0

    .line 168
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v3, "[jdub] SAP Service not connected, Set FindPeerPending"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mIsFindPeerPending:Z

    .line 181
    :goto_0
    return v0

    .line 173
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mIsPeerAgentConnected:Z

    if-ne v2, v1, :cond_1

    .line 174
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[jdub] SAP, already connected for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v2, "[jdub] SAP, call findPeerAgents()"

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mSAPService:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->findPeer()V

    move v0, v1

    .line 181
    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    return-object v0
.end method

.method protected getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    return-object v0
.end method

.method public getServiceProfileVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mProfileVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 808
    const-string v0, ""

    .line 810
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mProfileVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->doBindSAAgentService()Z

    .line 90
    return-void
.end method

.method public isPermitDisconnect()Z
    .locals 3

    .prologue
    .line 523
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 524
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .line 525
    .local v0, "wifiP2pHandler":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->isPermitDisconnect(Ljava/lang/String;)Z

    move-result v1

    .line 529
    :goto_0
    return v1

    .line 528
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v2, "[wifip2p] isPermitDisconnect wifiP2p wifiP2pHandler is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public manualDisconnect()V
    .locals 4

    .prologue
    .line 753
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 767
    :goto_0
    return-void

    .line 756
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->manuallyDisconnected:Z

    .line 757
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mDisconnectTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 759
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 760
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 761
    .local v1, "deviceBundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 762
    const-string v2, "BUNDLE_STRING_ADDRESS"

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 764
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    const/16 v3, 0x23

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public notifyWifiP2pConnectionCanceled()V
    .locals 3

    .prologue
    .line 513
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 514
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .line 515
    .local v0, "wifiP2pHandler":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->handleCancelConnection(Ljava/lang/String;)V

    .line 520
    :goto_0
    return-void

    .line 518
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v2, "[wifip2p] handleCancelConnection wifiP2pHandler is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeDisconnectTask()V
    .locals 2

    .prologue
    .line 747
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v1, "[jdub] removeCallbacks for mDisconnectTask"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->manuallyDisconnected:Z

    .line 749
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mDisconnectTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 750
    return-void
.end method

.method public sendBytes([B)Z
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mSAPService:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    if-nez v2, :cond_0

    .line 186
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v3, "[jdub] mSAPService is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    return v1

    .line 190
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mIsPeerAgentConnected:Z

    if-nez v2, :cond_1

    .line 191
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v3, "[jdub] mIsPeerAgentConnected is false"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1SendTask;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1SendTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;[B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 221
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 223
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public sendCancelConnectWifiP2p()V
    .locals 2

    .prologue
    .line 874
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->pDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)V

    .line 875
    .local v0, "builder":Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->sendReqCancelConnectWifiP2p()V

    .line 876
    return-void
.end method

.method public sendConnectCmdWifiP2p(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 844
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->pDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)V

    .line 845
    .local v0, "builder":Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;
    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->sendConnectWifiP2p(I)V

    .line 846
    return-void
.end method

.method public sendDisconnectWifiP2p()V
    .locals 2

    .prologue
    .line 864
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->pDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)V

    .line 865
    .local v0, "builder":Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->sendReqDisconnectWifiP2p()V

    .line 866
    return-void
.end method

.method public sendDisconnectedNotification(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 6
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    const/4 v4, 0x1

    .line 722
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 724
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v1

    .line 725
    .local v1, "localDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v2

    if-eq v4, v2, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v2

    if-ne v4, v2, :cond_1

    .line 728
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[jdub] error: request came for non-connected device address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", connected address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    .end local v1    # "localDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :goto_0
    return-void

    .line 733
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->manuallyDisconnected:Z

    .line 734
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mDisconnectTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 736
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 737
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    .line 740
    :cond_2
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->pDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-direct {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)V

    .line 741
    .local v0, "builder":Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->sendDisconnectedNotification()V

    goto :goto_0
.end method

.method public sendFeatureExchangeSuccessEvent()V
    .locals 4

    .prologue
    .line 534
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v3, "[jdub] 6.send feature exchange success event"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->featureExchangeFinished:Z

    .line 537
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mFinishTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 539
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 540
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v3, "SUCCESS"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 542
    .local v1, "deviceBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 543
    const-string v2, "BUNDLE_STRING_ADDRESS"

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const/4 v2, 0x2

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->notifyEvent(ILandroid/os/Bundle;)V

    .line 545
    return-void
.end method

.method public sendRequestWifiP2pIpAddress()V
    .locals 2

    .prologue
    .line 869
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->pDataExchanger:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)V

    .line 870
    .local v0, "builder":Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataBuilder;->sendReqWifiP2pIpAddress()V

    .line 871
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->address:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setAutoLockService(Ljava/lang/String;)V
    .locals 2
    .param p1, "autoLockServiceString"    # Ljava/lang/String;

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setAutoLockService(Ljava/lang/String;Ljava/lang/String;)Z

    .line 456
    return-void
.end method

.method public setBluetoothVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "bluetoothVersionString"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBluetoothVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 449
    return-void
.end method

.method public setCellularNetworkType(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setCellularNetworkType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    return-void
.end method

.method public setIsGearNotifiedRandomLeTrueFlag()V
    .locals 3

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "address":Ljava/lang/String;
    const-string v1, "IS_GEAR_NOTIFIED_RANDOM_LE_SUPPORT#TRUE"

    .line 489
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setIsGearNotifiedRandomLeTrueFlag(Ljava/lang/String;Ljava/lang/String;)Z

    .line 490
    return-void
.end method

.method public setRandomLEAddressSupport(Ljava/lang/String;)V
    .locals 2
    .param p1, "randomLEAddressSupport"    # Ljava/lang/String;

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setRandomLEAddressSupport(Ljava/lang/String;Ljava/lang/String;)Z

    .line 472
    return-void
.end method

.method public setRssiOffset(Ljava/lang/String;)V
    .locals 2
    .param p1, "rssiOffsetString"    # Ljava/lang/String;

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setRssiOffset(Ljava/lang/String;Ljava/lang/String;)Z

    .line 464
    return-void
.end method

.method public setWearableProfileVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "profileVersion"    # Ljava/lang/String;

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setWearableProfileVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 484
    return-void
.end method

.method public setWifiNetworkType(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setWifiNetworkType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    return-void
.end method

.method public setWifiP2pMacAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "wifiP2pMacAddress"    # Ljava/lang/String;

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setWifiP2pMacAddress(Ljava/lang/String;Ljava/lang/String;)Z

    .line 479
    return-void
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->doUnbindSAAgentService()V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 97
    return-void
.end method

.method public wifiP2pDisconnectResponse(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 503
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 504
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .line 505
    .local v0, "wifiP2pHandler":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->notifyDisconnectResponse(ILjava/lang/String;)V

    .line 510
    :goto_0
    return-void

    .line 508
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->TAG:Ljava/lang/String;

    const-string v2, "[wifip2p] wifiP2pDisconnectResponse wifiP2pHandler is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
