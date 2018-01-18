.class public Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCurrentServiceState:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

.field private mManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

.field private mService:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

.field private mWaitLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "StateMachine"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)V
    .locals 1
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .param p2, "service"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mService:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mCurrentServiceState:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mWaitLock:Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 25
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mService:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 26
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mCurrentServiceState:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 27
    return-void
.end method

.method private checkIsAvailableCommand(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;II)Z
    .locals 7
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "command"    # I
    .param p3, "retryCount"    # I

    .prologue
    const/16 v6, 0x24

    const/16 v5, 0x16

    const/16 v4, 0x15

    .line 67
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mService:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mCurrentServiceState:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 69
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIsAvailableCommand state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mCurrentServiceState:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, "available":Z
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine$1;->$SwitchMap$com$samsung$android$hostmanager$connectionmanager$Event$ServiceState:[I

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mCurrentServiceState:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 126
    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command available is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return v0

    .line 78
    :pswitch_0
    if-ne p2, v4, :cond_1

    .line 79
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :cond_1
    if-ne p2, v5, :cond_2

    .line 81
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :cond_2
    if-ne p2, v6, :cond_0

    .line 84
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    :pswitch_1
    if-ne p2, v4, :cond_3

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :cond_3
    if-ne p2, v5, :cond_4

    .line 96
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :cond_4
    if-ne p2, v6, :cond_0

    .line 99
    const/4 v0, 0x1

    goto :goto_0

    .line 107
    :pswitch_2
    if-lez p3, :cond_5

    .line 109
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->TAG:Ljava/lang/String;

    const-string v2, "checkIsAvailableCommand retry after 2sec.."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/16 v1, 0x7d0

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->waitForResult(I)V

    .line 112
    add-int/lit8 p3, p3, -0x1

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->checkIsAvailableCommand(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;II)Z

    move-result v0

    goto :goto_0

    .line 117
    :cond_5
    const/4 v0, 0x1

    .line 119
    goto :goto_0

    .line 121
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private waitForResult(I)V
    .locals 6
    .param p1, "millisecond"    # I

    .prologue
    .line 132
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mWaitLock:Ljava/lang/Object;

    monitor-enter v2

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mWaitLock:Ljava/lang/Object;

    int-to-long v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 140
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Catched * "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized checkIsAvailableCommand(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;IZZ)Z
    .locals 6
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "command"    # I
    .param p3, "isSCSType"    # Z
    .param p4, "isSupplement"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 31
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mService:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_1

    .line 32
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->TAG:Ljava/lang/String;

    const-string v3, "[jdub] checkIsAvailableCommand, service type is PAN!!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 36
    :cond_1
    if-eqz p4, :cond_3

    .line 37
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mService:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mCurrentServiceState:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 38
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v0

    .line 39
    .local v0, "sppServiceState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[wifip2p] checkIsAvailableCommand, service type is supplement. ServiceType.SPP sppServiceState is  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    if-ne v0, v3, :cond_0

    .line 42
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->mCurrentServiceState:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    if-eq v3, v4, :cond_2

    const/16 v3, 0x15

    if-eq p2, v3, :cond_2

    .line 43
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->TAG:Ljava/lang/String;

    const-string v3, "[wifip2p] Permit disconnect even though ServiceType.SPP is disconnected"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 31
    .end local v0    # "sppServiceState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0    # "sppServiceState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    :cond_2
    move v1, v2

    .line 46
    goto :goto_0

    .line 53
    .end local v0    # "sppServiceState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    :cond_3
    if-nez p3, :cond_4

    .line 55
    :try_start_2
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->TAG:Ljava/lang/String;

    const-string v2, "[jdub] checkIsAvailableCommand, service type is not SCS. retry Count is 1!!"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->checkIsAvailableCommand(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;II)Z

    move-result v1

    goto :goto_0

    .line 59
    :cond_4
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->TAG:Ljava/lang/String;

    const-string v2, "[jdub] checkIsAvailableCommand, service type is SCS. retry Count is 0!"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/StateMachine;->checkIsAvailableCommand(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method
