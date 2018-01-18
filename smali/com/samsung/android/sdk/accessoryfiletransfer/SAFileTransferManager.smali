.class public Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;
.super Ljava/lang/Object;
.source "SAFileTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;,
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;
    }
.end annotation


# static fields
.field public static final FILE_TRANSFER_ACCEPT:I = 0x2

.field public static final FILE_TRANSFER_ACCEPT_URI:I = 0x5

.field public static final FILE_TRANSFER_START:I = 0x1

.field public static final FILE_TRANSFER_START_URI:I = 0x4

.field public static final FILE_TRANSFER_STOP:I = 0x3

.field public static final FILE_TRANSFER_STOP_ALL:I = 0x6

.field private static final FT_SERVICE_BIND_TIMEOUT:I = 0x2710

.field public static final JSON_UPDATE_MSG:Ljava/lang/String; = "CallBackJson"

.field private static final TAG:Ljava/lang/String; = "FileTransferProfileJAR/SAFileTransferManager"

.field private static mCallingAgentInfos:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mCallingAgentNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsBound:Z

.field private static mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field mFTServiceConn:Landroid/content/ServiceConnection;

.field private mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

.field private mUpdater:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentNames:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentInfos:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mIsBound:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mFTServiceConn:Landroid/content/ServiceConnection;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mUpdater:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;

    return-void
.end method

.method static synthetic access$3()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    return-object v0
.end method

.method static synthetic access$4(Z)V
    .locals 0

    .prologue
    .line 63
    sput-boolean p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mIsBound:Z

    return-void
.end method

.method static synthetic access$5(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mUpdater:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;

    return-object v0
.end method

.method static synthetic access$6()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentInfos:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static getCallingAgentInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;
    .locals 1
    .param p0, "agentName"    # Ljava/lang/String;

    .prologue
    .line 345
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    return-object v0
.end method

.method static declared-synchronized getManagerInstance(Lcom/samsung/android/sdk/accessory/SAAgent;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;
    .locals 11
    .param p0, "callingAgent"    # Lcom/samsung/android/sdk/accessory/SAAgent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 74
    const-class v6, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    if-eqz v5, :cond_0

    .line 75
    sget-object v5, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    iget-object v5, v5, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    if-nez v5, :cond_2

    .line 76
    :cond_0
    new-instance v5, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    invoke-direct {v5}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;-><init>()V

    sput-object v5, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    .line 77
    sget-object v5, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, v5, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mContext:Landroid/content/Context;

    .line 79
    sget-object v7, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    sget-object v5, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->FILE_TRANSFER_SERVICE_INTENT:Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-direct {v4}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;-><init>()V

    .line 82
    .local v4, "saft":Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;
    sget-object v5, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    iget-object v5, v5, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "packagename":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 84
    new-instance v5, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v8, 0x800

    const-string v9, "Package name is null!"

    invoke-direct {v5, v8, v9}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 79
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packagename":Ljava/lang/String;
    .end local v4    # "saft":Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 85
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "packagename":Ljava/lang/String;
    .restart local v4    # "saft":Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;
    :cond_1
    :try_start_3
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    sget-object v5, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    iget-object v5, v5, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    iget-object v8, v8, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mFTServiceConn:Landroid/content/ServiceConnection;

    const/4 v9, 0x1

    invoke-virtual {v5, v2, v8, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    if-eqz v5, :cond_5

    .line 89
    :try_start_4
    const-string v5, "FileTransferProfileJAR/SAFileTransferManager"

    const-string v8, "SAFTAdapter: About start waiting"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v10, :cond_3

    .line 99
    .end local v1    # "i":I
    :goto_1
    :try_start_5
    sget-boolean v5, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mIsBound:Z

    if-eqz v5, :cond_4

    .line 100
    const-string v5, "FileTransferProfileJAR/SAFileTransferManager"

    const-string v8, "getDefaultAdapter: Woken up , FTService Connected"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_2
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 110
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packagename":Ljava/lang/String;
    .end local v4    # "saft":Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;
    :cond_2
    if-nez p0, :cond_6

    .line 111
    :try_start_6
    new-instance v5, Ljava/lang/IllegalAccessException;

    .line 112
    const-string v7, "Your calling agent was cleared from record. Please re-register your service."

    .line 111
    invoke-direct {v5, v7}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 92
    .restart local v1    # "i":I
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "packagename":Ljava/lang/String;
    .restart local v4    # "saft":Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;
    :cond_3
    :try_start_7
    sget-object v5, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    const-wide/16 v8, 0x2710

    invoke-virtual {v5, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 102
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    new-instance v5, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v8, 0x800

    const-string v9, "Timed out trying to bind to FT Service!"

    invoke-direct {v5, v8, v9}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 105
    :cond_5
    const-string v5, "FileTransferProfileJAR/SAFileTransferManager"

    const-string v8, "getDefaultAdapter: FTService Connection Failed"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 113
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packagename":Ljava/lang/String;
    .end local v4    # "saft":Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;
    :cond_6
    :try_start_9
    const-string v5, "FileTransferProfileJAR/SAFileTransferManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    const-string v8, " is using FTService"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 113
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v5, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit v6

    return-object v5
.end method

.method static isFTBound()Z
    .locals 1

    .prologue
    .line 377
    sget-boolean v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mIsBound:Z

    return v0
.end method

.method static register(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;)V
    .locals 2
    .param p0, "callingAgent"    # Lcom/samsung/android/sdk/accessory/SAAgent;
    .param p1, "agentInfo"    # Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    .prologue
    .line 357
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 358
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    return-void
.end method

.method static register(Lcom/samsung/android/sdk/accessory/SAAgent;)Z
    .locals 2
    .param p0, "callingAgent"    # Lcom/samsung/android/sdk/accessory/SAAgent;

    .prologue
    .line 349
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentNames:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentNames:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    const/4 v0, 0x1

    .line 353
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static stopFileTransferService(Ljava/lang/String;)V
    .locals 2
    .param p0, "agentName"    # Ljava/lang/String;

    .prologue
    .line 362
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    if-eqz v0, :cond_1

    .line 363
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 364
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mFTServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 366
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    .line 367
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mIsBound:Z

    .line 368
    const-string v0, "FileTransferProfileJAR/SAFileTransferManager"

    const-string v1, "File transfer service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_0
    return-void

    .line 370
    :cond_0
    const-string v0, "FileTransferProfileJAR/SAFileTransferManager"

    const-string v1, "Other services are still using this FT binding"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    :cond_1
    const-string v0, "FileTransferProfileJAR/SAFileTransferManager"

    .line 373
    const-string v1, "FT already unbound for this package. Please check whether the calling agent was registered"

    .line 372
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method cancelAllTransactions(Ljava/lang/String;)I
    .locals 7
    .param p1, "localKey"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "b":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 308
    .local v2, "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    :try_start_0
    new-instance v4, Lcom/samsung/accessory/safiletransfer/datamodel/CancelAllRequest;

    invoke-direct {v4, p1}, Lcom/samsung/accessory/safiletransfer/datamodel/CancelAllRequest;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 310
    .local v4, "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/CancelAllRequest;
    :try_start_1
    new-instance v3, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;

    const/4 v5, 0x6

    invoke-virtual {v4}, Lcom/samsung/accessory/safiletransfer/datamodel/CancelAllRequest;->toJSON()Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;-><init>(ILorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    .end local v2    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .local v3, "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    if-eqz v5, :cond_1

    .line 312
    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->getService()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v5

    .line 313
    invoke-virtual {v3}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 312
    invoke-interface {v5, v6}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommand(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    move-object v2, v3

    .line 317
    .end local v3    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .restart local v2    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    :goto_0
    if-eqz v0, :cond_0

    .line 318
    :try_start_3
    const-string v5, "receiveStatus"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 324
    .end local v4    # "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/CancelAllRequest;
    :goto_1
    return v5

    .line 314
    .restart local v4    # "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/CancelAllRequest;
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 321
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v4    # "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/CancelAllRequest;
    :catch_1
    move-exception v1

    .line 322
    .local v1, "e":Landroid/os/RemoteException;
    :goto_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 324
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4
    const/4 v5, 0x1

    goto :goto_1

    .line 320
    .restart local v4    # "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/CancelAllRequest;
    :cond_0
    :try_start_4
    const-string v5, "FileTransferProfileJAR/SAFileTransferManager"

    const-string v6, "File Transfer Daemon could not queue request"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 321
    .end local v2    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .restart local v3    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .restart local v2    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    goto :goto_3

    .line 314
    .end local v2    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .restart local v3    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .restart local v2    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    goto :goto_2

    .end local v2    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .restart local v3    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    :cond_1
    move-object v2, v3

    .end local v3    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .restart local v2    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    goto :goto_0
.end method

.method cancelFile(I)V
    .locals 6
    .param p1, "transId"    # I

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 290
    .local v1, "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    :try_start_0
    new-instance v3, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;

    invoke-direct {v3, p1}, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    .local v3, "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;
    :try_start_1
    new-instance v2, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;

    const/4 v4, 0x3

    invoke-virtual {v3}, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;->toJSON()Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;-><init>(ILorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    .end local v1    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .local v2, "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    if-eqz v4, :cond_0

    .line 294
    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->getService()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v4

    .line 295
    invoke-virtual {v2}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 294
    invoke-interface {v4, v5}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommand(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .line 302
    .end local v2    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .end local v3    # "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;
    .restart local v1    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    :goto_0
    return-void

    .line 296
    .restart local v3    # "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 299
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;
    :catch_1
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .restart local v2    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .restart local v3    # "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .restart local v1    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    goto :goto_2

    .line 296
    .end local v1    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .restart local v2    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .restart local v1    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    goto :goto_1

    .end local v1    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .restart local v2    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    :cond_0
    move-object v1, v2

    .end local v2    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .restart local v1    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    goto :goto_0
.end method

.method receiveFile(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "eventListener"    # Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;
    .param p2, "transId"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "contentURI"    # Ljava/lang/String;
    .param p5, "accept"    # Z

    .prologue
    .line 245
    const/4 v2, 0x0

    .line 247
    .local v2, "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    if-eqz p5, :cond_0

    .line 248
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->registerFileTransferCallbackReceiver(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;I)Z

    move-result v6

    .line 249
    if-nez v6, :cond_0

    .line 250
    const-string v6, "FileTransferProfileJAR/SAFileTransferManager"

    .line 251
    const-string v7, "Could not register file event callback. Declining transfer."

    .line 250
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v6, 0x3

    invoke-interface {p1, p2, p3, v6}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;->onTransferCompleted(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 285
    :goto_0
    return-void

    .line 261
    :cond_0
    if-eqz p4, :cond_2

    .line 262
    :try_start_1
    new-instance v4, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;

    invoke-direct {v4, p2, p3, p4, p5}, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 263
    .local v4, "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;
    new-instance v3, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;

    const/4 v6, 0x5

    invoke-virtual {v4}, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->toJSON()Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;-><init>(ILorg/json/JSONObject;)V

    .end local v2    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .local v3, "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    move-object v2, v3

    .line 270
    .end local v3    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .end local v4    # "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;
    .restart local v2    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    :goto_1
    const/4 v0, 0x0

    .line 271
    .local v0, "b":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    if-eqz v6, :cond_1

    .line 272
    iget-object v6, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->getService()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v6

    .line 273
    invoke-virtual {v2}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 272
    invoke-interface {v6, v7}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommand(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 274
    :cond_1
    if-eqz v0, :cond_3

    .line 275
    const-string v6, "receiveStatus"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 276
    .local v5, "status":I
    const-string v6, "FileTransferProfileJAR/SAFileTransferManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "receiveStatus:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 279
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v5    # "status":I
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 282
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 283
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 266
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_3
    new-instance v4, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;

    invoke-direct {v4, p2, p3, p5}, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;-><init>(ILjava/lang/String;Z)V

    .line 267
    .local v4, "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;
    new-instance v3, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;

    const/4 v6, 0x2

    invoke-virtual {v4}, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->toJSON()Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;-><init>(ILorg/json/JSONObject;)V

    .end local v2    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .restart local v3    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    move-object v2, v3

    .end local v3    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .restart local v2    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    goto :goto_1

    .line 278
    .end local v4    # "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;
    .restart local v0    # "b":Landroid/os/Bundle;
    :cond_3
    const-string v6, "FileTransferProfileJAR/SAFileTransferManager"

    const-string v7, "File Transfer Daemon could not queue request"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method registerFileTransferCallbackReceiver(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;I)Z
    .locals 5
    .param p1, "eventListener"    # Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;
    .param p2, "uTransId"    # I

    .prologue
    const/4 v1, 0x0

    .line 329
    if-nez p1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v1

    .line 332
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->getService()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v2

    .line 336
    new-instance v3, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mUpdater:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;

    invoke-direct {v3, v4, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;-><init>(Landroid/os/Handler;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;)V

    .line 334
    invoke-interface {v2, p2, v3}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->registerCallbackFacilitator(ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method sendFile(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;Ljava/lang/String;)I
    .locals 25
    .param p1, "callingAgent"    # Lcom/samsung/android/sdk/accessory/SAAgent;
    .param p2, "eventListener"    # Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;
    .param p3, "remotePeerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p4, "contentURI"    # Ljava/lang/String;
    .param p5, "localSrc"    # Ljava/lang/String;

    .prologue
    .line 186
    const/4 v4, 0x0

    .line 187
    .local v4, "bundle":Landroid/os/Bundle;
    const/16 v20, 0x0

    .line 190
    .local v20, "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "AccessoryPreferences"

    .line 191
    const/4 v8, 0x0

    .line 190
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 192
    .local v19, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 193
    .local v9, "localKey":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 194
    const-string v6, "FileTransferProfileJAR/SAFileTransferManager"

    const-string v7, "Agent id was not found in prefs! Fetching from framework.."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v9, ""

    .line 198
    :cond_0
    if-eqz p4, :cond_3

    .line 199
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v23, "tempFile":Ljava/io/File;
    new-instance v5, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;

    const-string v7, ""

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v8

    .line 201
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessoryId()J

    move-result-wide v10

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 202
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 203
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v6, p5

    move-object/from16 v15, p4

    .line 200
    invoke-direct/range {v5 .. v17}, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .local v5, "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;
    :try_start_0
    new-instance v21, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;

    const/4 v6, 0x4

    invoke-virtual {v5}, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v6, v7}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;-><init>(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v20    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .local v21, "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    move-object/from16 v20, v21

    .line 221
    .end local v5    # "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;
    .end local v21    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .end local v23    # "tempFile":Ljava/io/File;
    .restart local v20    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    if-eqz v6, :cond_1

    .line 222
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->getService()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommand(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    .line 229
    :cond_1
    :goto_1
    const/16 v22, 0x0

    .line 230
    .local v22, "status":Z
    const/16 v24, 0x0

    .line 231
    .local v24, "txId":I
    if-eqz v4, :cond_2

    .line 232
    const-string v6, "STATUS"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    .line 233
    const-string v6, "ID"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 236
    :cond_2
    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->registerFileTransferCallbackReceiver(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 237
    const-string v6, "FileTransferProfileJAR/SAFileTransferManager"

    const-string v7, "File Pushed and Callback registered"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .end local v24    # "txId":I
    :goto_2
    return v24

    .line 206
    .end local v22    # "status":Z
    .restart local v5    # "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;
    .restart local v23    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v18

    .line 207
    .local v18, "e":Lorg/json/JSONException;
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 210
    .end local v5    # "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;
    .end local v18    # "e":Lorg/json/JSONException;
    .end local v23    # "tempFile":Ljava/io/File;
    :cond_3
    new-instance v5, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;

    const-string v7, ""

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v8

    .line 211
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessoryId()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 212
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v6, p5

    .line 210
    invoke-direct/range {v5 .. v13}, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 214
    .local v5, "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;
    :try_start_2
    new-instance v21, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;

    const/4 v6, 0x1

    invoke-virtual {v5}, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v6, v7}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;-><init>(ILorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v20    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .restart local v21    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    move-object/from16 v20, v21

    .line 215
    .end local v21    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    .restart local v20    # "req":Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
    goto :goto_0

    :catch_1
    move-exception v18

    .line 216
    .restart local v18    # "e":Lorg/json/JSONException;
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 223
    .end local v5    # "reqData":Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;
    .end local v18    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v18

    .line 224
    .restart local v18    # "e":Lorg/json/JSONException;
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 225
    .end local v18    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v18

    .line 226
    .local v18, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v18 .. v18}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 240
    .end local v18    # "e":Landroid/os/RemoteException;
    .restart local v22    # "status":Z
    .restart local v24    # "txId":I
    :cond_4
    const/16 v24, -0x1

    goto :goto_2
.end method
