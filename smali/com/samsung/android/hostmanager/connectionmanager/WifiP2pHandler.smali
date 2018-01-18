.class public Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
.super Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
.source "WifiP2pHandler.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GetIPTask;,
        Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;,
        Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;,
        Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;,
        Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x9c40

.field private static final DISCONNECTION_TIMEOUT:I = 0x4e20

.field private static final EMPTY_ADDRESS:Ljava/lang/String; = ""

.field private static final ERROR_BUSY:Ljava/lang/String; = "WIFIP2P_CONNECT_BUSY"

.field private static final ERROR_NO_ERROR:Ljava/lang/String; = "WIFIP2P_CONNECT_NO_ERROR"

.field private static final ERROR_P2P_MANAGER:Ljava/lang/String; = "WIFIP2P_CONNECT_ERROR"

.field private static final ERROR_P2P_NOT_SUPPORTED:Ljava/lang/String; = "WIFIP2P_CONNECT_NOT_SUPPORTED"

.field private static final ERROR_TIMEOUT:Ljava/lang/String; = "WIFIP2P_CONNECT_TIMEOUT"

.field private static final MAX_CONNECTE_REQUEST_RETRY:I = 0x1

.field public static final MAX_WIFI_SOCKET_CON_RETRY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WifiP2pHandler"

.field private static final WATING_CANCEL_TIMEOUT:I = 0x2710

.field private static final WATING_CONNECT_TIMEOUT:I = 0x7530

.field private static curWifiP2pState:Z

.field private static mDeviceIdIpMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRefCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final mCommandList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectRequestRetryCount:I

.field private mConnectionTimerHandler:Landroid/os/Handler;

.field private mConnectionTimerTask:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;

.field private mControlCallback:Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;

.field private mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

.field private mCurrentWifiP2pGroupInfo:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

.field private mHandlerState:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

.field private mLastCommandStatus:Ljava/lang/String;

.field private mManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWiFiSocketConRetryCount:I

.field private mWifiP2pEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

.field private prevWifiP2pState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->curWifiP2pState:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 3
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    const/4 v2, 0x0

    .line 100
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)V

    .line 84
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCommandList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->prevWifiP2pState:Z

    .line 89
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mConnectionTimerHandler:Landroid/os/Handler;

    .line 90
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mConnectionTimerTask:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;

    .line 93
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_IDLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mHandlerState:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    .line 94
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;->UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurrentWifiP2pGroupInfo:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mConnectionTimerHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$1;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mConnectionTimerTask:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mRefCount:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mDeviceIdIpMap:Ljava/util/HashMap;

    .line 105
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->disconnectSAP(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->stopDiscovery()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mConnectRequestRetryCount:I

    return v0
.end method

.method static synthetic access$1308(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mConnectRequestRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mConnectRequestRetryCount:I

    return v0
.end method

.method static synthetic access$1400()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mRefCount:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setTimer(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->cancelConnection(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->removeGroup()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->startDiscovery()V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 48
    sput-boolean p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->curWifiP2pState:Z

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->notifyWifiP2pConnectFailedEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->resetHandler()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setWearableConnectedState(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    return-void
.end method

.method private addCommand(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;)Z
    .locals 8
    .param p1, "command"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    .prologue
    .line 1101
    if-nez p1, :cond_1

    .line 1102
    const-string v3, "WifiP2pHandler"

    const-string v4, "addCommand  Command is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const/4 v2, 0x0

    .line 1119
    :cond_0
    return v2

    .line 1105
    :cond_1
    const-string v3, "WifiP2pHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addCommand  btAddress : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCommandList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1109
    .local v2, "ret":Z
    const/4 v1, 0x0

    .line 1110
    .local v1, "i":I
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCommandList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    .line 1111
    .local v0, "cmd":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;
    const-string v3, "WifiP2pHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--------------------- Command ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ---------------------"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    const-string v3, "WifiP2pHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BtAddress : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const-string v3, "WifiP2pHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wifiP2pAddress : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getWifiP2pAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const-string v5, "WifiP2pHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Command : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getCommand()I

    move-result v3

    const/16 v7, 0x15

    if-ne v3, v7, :cond_2

    const-string v3, "CONNECT"

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    const-string v3, "WifiP2pHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--------------------- Command ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ---------------------"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    add-int/lit8 v1, v1, 0x1

    .line 1117
    goto/16 :goto_0

    .line 1114
    :cond_2
    const-string v3, "DISCONNECT"

    goto :goto_1
.end method

.method private addRef(Ljava/lang/String;)V
    .locals 4
    .param p1, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 181
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mRefCount:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mRefCount:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 183
    .local v0, "count":I
    add-int/lit8 v0, v0, 0x1

    .line 187
    :goto_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mRefCount:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "WifiP2pHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addRef] btAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void

    .line 185
    .end local v0    # "count":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "count":I
    goto :goto_0
.end method

.method private cancelConnection(Ljava/lang/String;)V
    .locals 3
    .param p1, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 797
    const-string v1, "WifiP2pHandler"

    const-string v2, "cancelConnection"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setWearableConnectedState(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 800
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$8;->$SwitchMap$com$samsung$android$hostmanager$connectionmanager$WifiP2pHandler$State:[I

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 828
    const-string v1, "WifiP2pHandler"

    const-string v2, "Shouldn\'t be here!"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    :cond_0
    :goto_0
    :pswitch_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_IDLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setHandlerState(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;)V

    .line 832
    :pswitch_1
    return-void

    .line 802
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendCancelConnectWifiP2p()V

    .line 803
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->restoreWifiP2p()V

    goto :goto_0

    .line 807
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendCancelConnectWifiP2p()V

    .line 809
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getConnectedDevices(Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 810
    .local v0, "connectedDevices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 811
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->restoreWifiP2p()V

    goto :goto_0

    .line 816
    .end local v0    # "connectedDevices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendCancelConnectWifiP2p()V

    .line 817
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->disconnect(Ljava/lang/String;)Z

    goto :goto_0

    .line 800
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private cancelTimer()V
    .locals 2

    .prologue
    .line 428
    const-string v0, "WifiP2pHandler"

    const-string v1, "cancelTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mConnectionTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mConnectionTimerTask:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 430
    return-void
.end method

.method private checkConnection(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 680
    .local p1, "clientList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    if-nez v2, :cond_1

    .line 692
    :cond_0
    return-void

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    .line 685
    .local v0, "command":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 686
    .local v1, "wifiP2pDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getWifiP2pAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 688
    const-string v3, "P2p Connected!"

    invoke-virtual {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->showToast(Ljava/lang/String;)V

    .line 689
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->doNextStep(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkDisconnection(Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 745
    .local p1, "clientList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 748
    .local v1, "clientListSize":I
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getConnectedDevices(Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    .line 750
    .local v2, "connectedDevices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 751
    .local v3, "wd":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    const/4 v0, 0x0

    .line 752
    .local v0, "clientIndex":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 753
    .local v4, "wifiP2pDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getWifiP2pMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 754
    .local v5, "wifiP2pMacAddress":Ljava/lang/String;
    if-eqz v5, :cond_2

    iget-object v8, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 755
    const-string v7, "WifiP2pHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Device found btAddress:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    .end local v4    # "wifiP2pDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v5    # "wifiP2pMacAddress":Ljava/lang/String;
    :cond_1
    if-ne v1, v0, :cond_0

    .line 764
    const-string v7, "P2p disconnected!"

    invoke-virtual {p0, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->showToast(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->doNextStep(Ljava/lang/String;)V

    goto :goto_0

    .line 758
    .restart local v4    # "wifiP2pDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v5    # "wifiP2pMacAddress":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 759
    goto :goto_1

    .line 768
    .end local v0    # "clientIndex":I
    .end local v3    # "wd":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .end local v4    # "wifiP2pDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v5    # "wifiP2pMacAddress":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private connect(Ljava/lang/String;)Z
    .locals 10
    .param p1, "btAddress"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 359
    const-string v7, "WifiP2pHandler"

    const-string v8, "connect()"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v3

    .line 362
    .local v3, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v3, :cond_1

    .line 363
    invoke-direct {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->isAllConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v2

    .line 364
    .local v2, "isAllConnected":Z
    if-nez v2, :cond_1

    .line 365
    const-string v6, "WifiP2pHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[wifip2p] HFP, SPP not connected for device("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v6, "WIFIP2P_CONNECT_ERROR"

    invoke-direct {p0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->notifyWifiP2pConnectFailedEvent(Ljava/lang/String;)V

    .line 414
    .end local v2    # "isAllConnected":Z
    :cond_0
    :goto_0
    return v5

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getConnectedDevices(Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 372
    .local v0, "connectedDevices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 373
    .local v4, "wd":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 374
    const-string v7, "WifiP2pHandler"

    const-string v8, "[wifip2p] Already connected"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-direct {p0, p1, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->notifyWifiP2pConnectState(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 376
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCurrentCommand()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getCommandFrom()I

    move-result v7

    if-eq v7, v6, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCurrentCommand()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->addRef(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    .end local v4    # "wd":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_3
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-direct {p0, p1, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setWearableConnectedState(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 384
    const v7, 0x9c40

    invoke-direct {p0, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setTimer(I)V

    .line 386
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v7, :cond_5

    .line 387
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->initializeP2p()V

    .line 391
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    if-eqz v7, :cond_0

    .line 392
    sget-boolean v7, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->curWifiP2pState:Z

    if-nez v7, :cond_6

    .line 393
    iput-boolean v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->prevWifiP2pState:Z

    .line 394
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_ENABLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    invoke-virtual {p0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setHandlerState(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;)V

    .line 395
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->enable()V

    :goto_1
    move v5, v6

    .line 414
    goto :goto_0

    .line 398
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCurrentCommand()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getCommandFrom()I

    move-result v5

    if-nez v5, :cond_7

    .line 399
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendConnectCmdWifiP2p(I)V

    .line 401
    :cond_7
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_DISCOVERY:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    invoke-virtual {p0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setHandlerState(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;)V

    .line 402
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 403
    .local v1, "handler":Landroid/os/Handler;
    new-instance v5, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V

    const-wide/16 v8, 0x64

    invoke-virtual {v1, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private disable()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 451
    const-string v3, "WifiP2pHandler"

    const-string v4, "[wifip2p] disable()"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v3, "WifiP2pHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "State is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v3, :cond_1

    .line 454
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->initializeP2p()V

    .line 459
    :cond_1
    const/4 v2, 0x0

    .line 460
    .local v2, "wifiP2pMethod":Ljava/lang/reflect/Method;
    new-array v1, v7, [Ljava/lang/Class;

    const-class v3, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    aput-object v3, v1, v6

    .line 462
    .local v1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "disableP2p"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 467
    :goto_0
    if-eqz v2, :cond_2

    .line 469
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 480
    :goto_1
    return-void

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 470
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 472
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 474
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 478
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    const-string v3, "WifiP2pHandler"

    const-string v4, "wifiP2pMethod is null !!"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private disconnect(Ljava/lang/String;)Z
    .locals 2
    .param p1, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 554
    const-string v0, "WifiP2pHandler"

    const-string v1, "disconnect()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->releaseRef(Ljava/lang/String;)V

    .line 556
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getRefCount(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 557
    const/4 v0, 0x0

    .line 564
    :goto_0
    return v0

    .line 560
    :cond_0
    const/16 v0, 0x4e20

    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setTimer(I)V

    .line 561
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_DISCONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setHandlerState(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;)V

    .line 562
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendDisconnectWifiP2p()V

    .line 564
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private disconnectSAP(Ljava/lang/String;)V
    .locals 4
    .param p1, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 865
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mDeviceIdIpMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 866
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 867
    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->disconnectSAPByIpAddr(Ljava/lang/String;)V

    .line 871
    :goto_0
    return-void

    .line 869
    :cond_0
    const-string v1, "WifiP2pHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IP Address in BT, IP Map is null for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private disconnectSAPByIpAddr(Ljava/lang/String;)V
    .locals 5
    .param p1, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 874
    const-string v2, "WifiP2pHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnectSAPByIpAddr ipAddress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const/4 v1, 0x0

    .line 878
    .local v1, "mAccessoryManager":Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    .line 879
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 880
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getEventHandler()Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->getAccessoryEventCallback()Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    move-result-object v3

    .line 878
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 888
    :goto_0
    if-eqz v1, :cond_0

    .line 890
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->disconnect(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 895
    :cond_0
    :goto_1
    return-void

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    const-string v2, "WifiP2pHandler"

    const-string v3, "[wifip2p] SsdkUnsupportedException: SamAccessoryManager.getDefaultInstance"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 884
    .end local v0    # "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    :catch_1
    move-exception v0

    .line 885
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiP2pHandler"

    const-string v3, "[wifip2p] Exception: SamAccessoryManager.getDefaultInstance"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 891
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 892
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private enable()V
    .locals 3

    .prologue
    .line 443
    const-string v0, "WifiP2pHandler"

    const-string v1, "[wifip2p] enable()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_1

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->initializeP2p()V

    .line 447
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/wifi/WifiP2pManagerFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/wifi/WifiP2pManagerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/wifi/WifiP2pManagerInterface;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 448
    return-void
.end method

.method private fetchNextCommand()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 918
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    .line 919
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCommandList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCommandList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 920
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCommandList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    .line 921
    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->removeCommand(I)Z

    .line 922
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getCommand()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 923
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->connect(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->fetchNextCommand()V

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getCommand()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 927
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->isWifiP2pConnected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->disconnect(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 929
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->fetchNextCommand()V

    goto :goto_0
.end method

.method private getCommandList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCommandList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private getConnectListener()Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .locals 1

    .prologue
    .line 580
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$3;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V

    return-object v0
.end method

.method private getControlCallback()Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mControlCallback:Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$2;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mControlCallback:Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mControlCallback:Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;

    return-object v0
.end method

.method private getDiscoveryListener()Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .locals 1

    .prologue
    .line 600
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$4;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V

    return-object v0
.end method

.method public static getPeerIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p0, "peerMac"    # Ljava/lang/String;

    .prologue
    .line 1162
    const-string v16, "WifiP2pHandler"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getPeerIP()  peerMac= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    const-string v17, "getprop dhcp.wlan0.gateway"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v13

    .line 1171
    .local v13, "p":Ljava/lang/Process;
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/InputStreamReader;

    .line 1172
    invoke-virtual {v13}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1173
    .local v10, "input":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, "line":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 1174
    invoke-static {v12}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    .line 1175
    .local v8, "gatewayAddr":Ljava/net/InetAddress;
    const/16 v16, 0x1f4

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/net/InetAddress;->isReachable(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1178
    .end local v8    # "gatewayAddr":Ljava/net/InetAddress;
    .end local v10    # "input":Ljava/io/BufferedReader;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "p":Ljava/lang/Process;
    :catch_0
    move-exception v7

    .line 1179
    .local v7, "err":Ljava/lang/Exception;
    const-string v16, "WifiP2pHandler"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    .end local v7    # "err":Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    .line 1185
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/FileReader;

    const-string v17, "/proc/net/arp"

    invoke-direct/range {v16 .. v17}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1187
    .end local v3    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "line":Ljava/lang/String;
    if-eqz v12, :cond_5

    .line 1188
    const-string v16, " +"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1192
    .local v15, "splitted":[Ljava/lang/String;
    if-eqz v15, :cond_0

    array-length v0, v15

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    .line 1193
    const-string v16, ":"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1194
    .local v14, "peerMacBytes":[Ljava/lang/String;
    const/16 v16, 0x3

    aget-object v16, v15, v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1196
    .local v2, "arpMacBytes":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1200
    const/4 v5, 0x0

    .line 1201
    .local v5, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    array-length v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v9, v0, :cond_3

    .line 1202
    aget-object v16, v14, v9

    aget-object v17, v2, v9

    .line 1203
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v16

    if-eqz v16, :cond_1

    .line 1204
    add-int/lit8 v5, v5, 0x1

    .line 1201
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1177
    .end local v2    # "arpMacBytes":[Ljava/lang/String;
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "count":I
    .end local v9    # "i":I
    .end local v14    # "peerMacBytes":[Ljava/lang/String;
    .end local v15    # "splitted":[Ljava/lang/String;
    .restart local v10    # "input":Ljava/io/BufferedReader;
    .restart local v13    # "p":Ljava/lang/Process;
    :cond_2
    :try_start_3
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1207
    .end local v10    # "input":Ljava/io/BufferedReader;
    .end local v13    # "p":Ljava/lang/Process;
    .restart local v2    # "arpMacBytes":[Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v9    # "i":I
    .restart local v14    # "peerMacBytes":[Ljava/lang/String;
    .restart local v15    # "splitted":[Ljava/lang/String;
    :cond_3
    const/16 v16, 0x3

    move/from16 v0, v16

    if-lt v5, v0, :cond_0

    .line 1209
    const/16 v16, 0x0

    :try_start_4
    aget-object v11, v15, v16

    .line 1210
    .local v11, "ip":Ljava/lang/String;
    const-string v16, "^\\d+\\.\\d+\\.\\d+\\.\\d+$"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v16

    if-eqz v16, :cond_0

    .line 1220
    if-eqz v4, :cond_4

    .line 1221
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_3
    move-object v3, v4

    .line 1227
    .end local v2    # "arpMacBytes":[Ljava/lang/String;
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "count":I
    .end local v9    # "i":I
    .end local v11    # "ip":Ljava/lang/String;
    .end local v12    # "line":Ljava/lang/String;
    .end local v14    # "peerMacBytes":[Ljava/lang/String;
    .end local v15    # "splitted":[Ljava/lang/String;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :goto_4
    return-object v11

    .line 1222
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "arpMacBytes":[Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v9    # "i":I
    .restart local v11    # "ip":Ljava/lang/String;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v14    # "peerMacBytes":[Ljava/lang/String;
    .restart local v15    # "splitted":[Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 1223
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1220
    .end local v2    # "arpMacBytes":[Ljava/lang/String;
    .end local v5    # "count":I
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "i":I
    .end local v11    # "ip":Ljava/lang/String;
    .end local v14    # "peerMacBytes":[Ljava/lang/String;
    .end local v15    # "splitted":[Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_6

    .line 1221
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_6
    move-object v3, v4

    .line 1227
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v12    # "line":Ljava/lang/String;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :cond_7
    :goto_5
    const-string v11, ""

    goto :goto_4

    .line 1222
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v12    # "line":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 1223
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 1225
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 1216
    .end local v6    # "e":Ljava/io/IOException;
    .end local v12    # "line":Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 1217
    .local v6, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1220
    if-eqz v3, :cond_7

    .line 1221
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    .line 1222
    :catch_4
    move-exception v6

    .line 1223
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1219
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    .line 1220
    :goto_7
    if-eqz v3, :cond_8

    .line 1221
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1224
    :cond_8
    :goto_8
    throw v16

    .line 1222
    :catch_5
    move-exception v6

    .line 1223
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 1219
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v16

    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .line 1216
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v6

    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_6
.end method

.method private getRefCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 209
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mRefCount:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mRefCount:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 214
    .local v0, "count":I
    :goto_0
    const-string v1, "WifiP2pHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getRefCount] btAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return v0

    .line 212
    .end local v0    # "count":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "count":I
    goto :goto_0
.end method

.method private getRemoveGroupListener()Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .locals 1

    .prologue
    .line 616
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$5;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V

    return-object v0
.end method

.method private getWifiP2pConfig(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 433
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 434
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 435
    const-string v1, "WifiP2pHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config.deviceAddress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 437
    const/16 v1, 0xf

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 439
    return-object v0
.end method

.method private getWifiP2pMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 941
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getWifiP2pMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "wifiP2pMac":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 943
    const-string v1, "WifiP2pHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiP2pMacAddress from WearableState Failed! btAddress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    :cond_0
    return-object v0
.end method

.method private initializeP2p()V
    .locals 5

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 348
    .local v0, "context":Landroid/content/Context;
    const-string v1, "WifiP2pHandler"

    const-string v2, "initializeP2p()"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 350
    const-string v1, "WifiP2pHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mManager : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 352
    const-string v1, "WifiP2pHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mChannel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mWifiP2pEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    .line 355
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mWifiP2pEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getControlCallback()Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;

    move-result-object v2

    const-string v3, "SERVICECONTROLLER"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->registerCallback(Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method private initializeRetryCount()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 989
    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mConnectRequestRetryCount:I

    .line 990
    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mWiFiSocketConRetryCount:I

    .line 991
    return-void
.end method

.method private isAllConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 6
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getConnectedDevices()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    .line 170
    .local v2, "wearableDevices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    const/4 v0, 0x0

    .line 171
    .local v0, "isAllConnected":Z
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 172
    .local v1, "wd":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    const/4 v0, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "wd":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_1
    return v0
.end method

.method private isWifiP2pConnected(Ljava/lang/String;)Z
    .locals 6
    .param p1, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 568
    const/4 v1, 0x0

    .line 569
    .local v1, "isConnected":Z
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getConnectedDevices(Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 570
    .local v0, "connectedDevices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 571
    .local v2, "wd":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 572
    const/4 v1, 0x1

    goto :goto_0

    .line 575
    .end local v2    # "wd":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_1
    const-string v3, "WifiP2pHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WiFi P2P of Device("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") connection : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return v1
.end method

.method private notifyWifiP2pConnectFailedEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorcode"    # Ljava/lang/String;

    .prologue
    .line 949
    const-string v0, "WifiP2pHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyWifiP2pConnectFailedEvent reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    if-nez v0, :cond_0

    .line 952
    const-string v0, "WifiP2pHandler"

    const-string v1, "mCurCommand is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :goto_0
    return-void

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->notifyWifiP2pConnectFailedEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyWifiP2pConnectFailedEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "errorcode"    # Ljava/lang/String;
    .param p2, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 960
    const-string v4, "WifiP2pHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyWifiP2pConnectFailedEvent reason : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->initializeRetryCount()V

    .line 964
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v4

    invoke-direct {p0, p2, v4, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setLastCommandStatus(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;Ljava/lang/String;)V

    .line 966
    if-nez p2, :cond_1

    .line 967
    const-string v4, "WifiP2pHandler"

    const-string v5, "btAddress is null"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :cond_0
    return-void

    .line 970
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 972
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 973
    .local v2, "deviceBundle":Landroid/os/Bundle;
    const-string v4, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 974
    const-string v4, "BUNDLE_CMKEY_STRING_ERRORCODE"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    const/16 v5, 0x242

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->publishEvent(ILandroid/os/Bundle;)V

    .line 977
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCommandList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 978
    .local v1, "commandList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;>;"
    if-eqz v1, :cond_0

    .line 979
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    .line 980
    .local v3, "info":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 981
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getCommand()I

    move-result v5

    const/16 v6, 0x15

    if-ne v5, v6, :cond_2

    .line 982
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private notifyWifiP2pConnectState(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V
    .locals 4
    .param p1, "btAddress"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .prologue
    .line 1008
    const-string v2, "WifiP2pHandler"

    const-string v3, "notifyWifiP2pConnectState"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    if-nez p1, :cond_0

    .line 1011
    const-string v2, "WifiP2pHandler"

    const-string v3, "btAddress is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :goto_0
    return-void

    .line 1015
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1017
    .local v1, "resBundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1018
    .local v0, "deviceBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1019
    const-string v2, "CM_DEVICE_ADDRESS"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    const-string v3, "WIFIP2P"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICESTATE"

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    const/16 v3, 0x215

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->publishEvent(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private releaseRef(Ljava/lang/String;)V
    .locals 4
    .param p1, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "count":I
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mRefCount:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mRefCount:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 195
    add-int/lit8 v0, v0, -0x1

    .line 196
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mRefCount:Ljava/util/HashMap;

    if-gez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_0
    const-string v1, "WifiP2pHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[releaseRef] btAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void

    :cond_1
    move v1, v0

    .line 196
    goto :goto_0
.end method

.method private removeCommand(I)Z
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1091
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCommandList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    .line 1092
    .local v0, "cmd":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;
    const-string v1, "WifiP2pHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeCommand  index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    if-eqz v0, :cond_0

    .line 1094
    const-string v1, "WifiP2pHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeCommand  btaddress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    const/4 v1, 0x1

    .line 1097
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeGroup()V
    .locals 3

    .prologue
    .line 501
    const-string v0, "WifiP2pHandler"

    const-string v1, "removeGroup()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_1

    .line 503
    :cond_0
    const-string v0, "WifiP2pHandler"

    const-string v1, "removeGroup() wifiP2pManager is not initialized!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getRemoveGroupListener()Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private removeQueuedDisconnectCmd(Ljava/lang/String;)V
    .locals 4
    .param p1, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 856
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCommandList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    .line 857
    .local v0, "cmd":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 858
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getCommand()I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_0

    .line 859
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCommandList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 862
    .end local v0    # "cmd":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;
    :cond_1
    return-void
.end method

.method private resetHandler()V
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->prevWifiP2pState:Z

    .line 547
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCommandList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 548
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mRefCount:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 549
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->cancelTimer()V

    .line 550
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_IDLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setHandlerState(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;)V

    .line 551
    return-void
.end method

.method private resetRef()V
    .locals 2

    .prologue
    .line 203
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mRefCount:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 204
    const-string v0, "WifiP2pHandler"

    const-string v1, "[resetRef] clearAll"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method private restoreWifiP2p()V
    .locals 1

    .prologue
    .line 835
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->prevWifiP2pState:Z

    if-nez v0, :cond_0

    .line 836
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->prevWifiP2pState:Z

    .line 837
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->disable()V

    .line 839
    :cond_0
    return-void
.end method

.method private setIPAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "btAddr"    # Ljava/lang/String;
    .param p2, "ipAddr"    # Ljava/lang/String;

    .prologue
    .line 219
    const-string v0, "WifiP2pHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setIPAddress] btAddr : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ipAddr : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mDeviceIdIpMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-void
.end method

.method private setLastCommandStatus(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;Ljava/lang/String;)V
    .locals 2
    .param p1, "btAddress"    # Ljava/lang/String;
    .param p2, "handlerState"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;
    .param p3, "errorcode"    # Ljava/lang/String;

    .prologue
    .line 998
    const-string v0, "*************** WiFi P2p Handler Last Command Status ***************"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mLastCommandStatus:Ljava/lang/String;

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mLastCommandStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nDeviceId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nWifiP2pHandler State : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nerrorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mLastCommandStatus:Ljava/lang/String;

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mLastCommandStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n*******************************************************************\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mLastCommandStatus:Ljava/lang/String;

    .line 1001
    return-void
.end method

.method private setTimer(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 418
    const-string v0, "WifiP2pHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimer time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    if-nez p1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mConnectionTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mConnectionTimerTask:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mConnectionTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mConnectionTimerTask:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 423
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mConnectionTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mConnectionTimerTask:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setWearableConnectedState(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V
    .locals 4
    .param p1, "btAddress"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .prologue
    .line 842
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v1

    .line 843
    .local v1, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v0

    .line 844
    .local v0, "prevState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    if-eq v0, p2, :cond_0

    .line 845
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v2, v1, v3, p2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 846
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->notifyWifiP2pConnectState(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 849
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    if-ne p2, v2, :cond_0

    .line 850
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->removeQueuedDisconnectCmd(Ljava/lang/String;)V

    .line 853
    :cond_0
    return-void
.end method

.method private startDiscovery()V
    .locals 3

    .prologue
    .line 483
    const-string v0, "WifiP2pHandler"

    const-string v1, "startDiscovery()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_1

    .line 485
    :cond_0
    const-string v0, "WifiP2pHandler"

    const-string v1, "startDiscovery() wifiP2pManager is not initialized!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getDiscoveryListener()Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private stopDiscovery()V
    .locals 3

    .prologue
    .line 492
    const-string v0, "WifiP2pHandler"

    const-string v1, "stopDiscovery()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_1

    .line 494
    :cond_0
    const-string v0, "WifiP2pHandler"

    const-string v1, "stopDiscovery() wifiP2pManager is not initialized!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getDiscoveryListener()Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method


# virtual methods
.method public connectSAP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "btAddress"    # Ljava/lang/String;
    .param p2, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 228
    const-string v2, "WifiP2pHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectSAP() btAddress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ipAddress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v1, 0x0

    .line 231
    .local v1, "mAccessoryManager":Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;
    if-nez p2, :cond_1

    .line 232
    const-string v2, "WifiP2pHandler"

    const-string v3, "connectSAP() ipAddress is NULL!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    if-nez p1, :cond_2

    .line 238
    invoke-virtual {p0, p2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 239
    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mWiFiSocketConRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mWiFiSocketConRetryCount:I

    .line 242
    :cond_2
    if-nez p1, :cond_3

    .line 243
    const-string v2, "WifiP2pHandler"

    const-string v3, "connectSAP() btAddress is NULL!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getEventHandler()Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->getAccessoryEventCallback()Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    move-result-object v3

    .line 248
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 258
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setIPAddress(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    if-eqz v1, :cond_0

    .line 262
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v1, p2, v2}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->connect(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 251
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 252
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    const-string v2, "WifiP2pHandler"

    const-string v3, "[wifip2p] SsdkUnsupportedException: SamAccessoryManager.getDefaultInstance"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 254
    .end local v0    # "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    :catch_2
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiP2pHandler"

    const-string v3, "[wifip2p] Exception: SamAccessoryManager.getDefaultInstance"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public doNextStep(Ljava/lang/String;)V
    .locals 7
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 695
    const-string v2, "WifiP2pHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doNextStep() state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$8;->$SwitchMap$com$samsung$android$hostmanager$connectionmanager$WifiP2pHandler$State:[I

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 740
    const-string v2, "WifiP2pHandler"

    const-string v3, "Shouldn\'t be here!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 698
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->cancelTimer()V

    .line 699
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->fetchNextCommand()V

    goto :goto_0

    .line 702
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->connect(Ljava/lang/String;)Z

    goto :goto_0

    .line 705
    :pswitch_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 706
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$6;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 712
    const/16 v2, 0x7530

    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setTimer(I)V

    .line 713
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getWifiP2pConfig(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectListener()Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 714
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_CONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setHandlerState(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;)V

    goto :goto_0

    .line 717
    .end local v0    # "handler":Landroid/os/Handler;
    :pswitch_3
    new-instance v2, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GetIPTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GetIPTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$1;)V

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCurrentCommand()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getWifiP2pAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GetIPTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 718
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_SAP_CONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setHandlerState(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;)V

    .line 720
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCurrentCommand()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getCommandFrom()I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCurrentCommand()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->addRef(Ljava/lang/String;)V

    goto :goto_0

    .line 725
    :pswitch_4
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v1

    .line 726
    .local v1, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 727
    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 728
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_IDLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setHandlerState(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;)V

    goto/16 :goto_0

    .line 732
    .end local v1    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->cancelTimer()V

    .line 733
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setWearableConnectedState(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 734
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->disconnectSAP(Ljava/lang/String;)V

    .line 735
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 736
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_IDLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setHandlerState(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;)V

    goto/16 :goto_0

    .line 696
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getCurrentCommand()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    return-object v0
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 1070
    const/4 v0, 0x0

    .line 1071
    .local v0, "btAddress":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mDeviceIdIpMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1073
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1074
    .local v1, "key":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mDeviceIdIpMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1075
    .local v3, "savedIpAddress":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1076
    move-object v0, v1

    .line 1080
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "savedIpAddress":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mHandlerState:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    return-object v0
.end method

.method public getLastCommandStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mLastCommandStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getWiFiSocketConRetryCount()I
    .locals 1

    .prologue
    .line 994
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mWiFiSocketConRetryCount:I

    return v0
.end method

.method public handleCancelConnection(Ljava/lang/String;)V
    .locals 3
    .param p1, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 906
    const-string v1, "WifiP2pHandler"

    const-string v2, "handleCancelConnection"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCurrentCommand()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v0

    .line 908
    .local v0, "currentCommand":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;
    iget v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mConnectRequestRetryCount:I

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 910
    const-string v1, "WifiP2pHandler"

    const-string v2, "Current command BT address and canceled BT Address is mismatched."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 912
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->connect(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 109
    const-string v0, "WifiP2pHandler"

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->initializeP2p()V

    .line 111
    return-void
.end method

.method public isPermitDisconnect(Ljava/lang/String;)Z
    .locals 4
    .param p1, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 270
    const/4 v0, 0x1

    .line 271
    .local v0, "ret":Z
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getRefCount(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCurrentCommand()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCurrentCommand()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getCommandFrom()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 273
    :cond_0
    const/4 v0, 0x0

    .line 276
    :cond_1
    const-string v1, "WifiP2pHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[wifip2p] isPermitDisconnect for device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return v0
.end method

.method public notifyDisconnectResponse(ILjava/lang/String;)V
    .locals 8
    .param p1, "result"    # I
    .param p2, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_DISCONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    if-ne v0, v1, :cond_3

    .line 282
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 283
    invoke-static {p2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v7

    .line 284
    .local v7, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v6

    .line 285
    .local v6, "prevState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    if-ne v6, v0, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->cancelTimer()V

    .line 287
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_IDLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setHandlerState(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;)V

    .line 302
    .end local v6    # "prevState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    .end local v7    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_0
    :goto_0
    return-void

    .line 289
    .restart local v6    # "prevState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    .restart local v7    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setWearableConnectedState(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 290
    invoke-direct {p0, p2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getWifiP2pMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "wifiP2pMacAddress":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 292
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    const/16 v4, 0x16

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$1;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    goto :goto_0

    .line 295
    .end local v3    # "wifiP2pMacAddress":Ljava/lang/String;
    .end local v6    # "prevState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    .end local v7    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->cancelTimer()V

    .line 297
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_IDLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setHandlerState(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;)V

    goto :goto_0

    .line 300
    :cond_3
    const-string v0, "WifiP2pHandler"

    const-string v1, "Received disconnect response but handler state is not \"WAITING_DISCONNECT\"."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCancelRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 306
    const-string v0, "WifiP2pHandler"

    const-string v1, "[wifip2p] onCancelRequested"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 308
    :cond_0
    const-string v0, "WifiP2pHandler"

    const-string v1, "Device information is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    .line 311
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->isWifiP2pConnected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 312
    const-string v0, "WifiP2pHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFi P2P of Device("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->cancelConnection(Ljava/lang/String;)V

    .line 317
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->onDisconnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z

    goto :goto_1
.end method

.method public onConnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 121
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getWifiP2pMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "wifiP2pMacAddress":Ljava/lang/String;
    const-string v1, "WifiP2pHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConnectRequested()::device = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " wifiP2p = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$1;)V

    .line 126
    .local v0, "command":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;
    const-string v1, "BUNDLE_CMKEY_STRING_CALLER"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "caller":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v1, "WEARABLE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->setCommandFrom(I)V

    .line 131
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    :cond_1
    const-string v1, "WIFIP2P_CONNECT_NOT_SUPPORTED"

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->notifyWifiP2pConnectFailedEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "WifiP2pHandler"

    const-string v2, "[wifip2p] wifi P2p address is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getCommandFrom()I

    move-result v1

    if-ne v1, v8, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendConnectCmdWifiP2p(I)V

    :cond_2
    move v1, v7

    .line 165
    :goto_0
    return v1

    .line 141
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurrentWifiP2pGroupInfo:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;->GROUP_CLIENT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurrentWifiP2pGroupInfo:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;->GROUP_OWNER:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    if-ne v1, v2, :cond_6

    .line 142
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getRefCount(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 143
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_DISCONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    if-eq v1, v2, :cond_6

    .line 144
    const-string v1, "WifiP2pHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[wifip2p] Already occupied. Can not proceed. GroupInfo : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurrentWifiP2pGroupInfo:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "WIFIP2P_CONNECT_BUSY"

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->notifyWifiP2pConnectFailedEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getCommandFrom()I

    move-result v1

    if-ne v1, v8, :cond_5

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendConnectCmdWifiP2p(I)V

    :cond_5
    move v1, v7

    .line 149
    goto :goto_0

    .line 152
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getCommandFrom()I

    move-result v1

    if-ne v1, v8, :cond_7

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendConnectCmdWifiP2p(I)V

    .line 156
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_IDLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    if-eq v1, v2, :cond_8

    .line 157
    const-string v1, "WifiP2pHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[wifip2p] Handler is busy right now : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->addCommand(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;)Z

    move v1, v8

    .line 160
    goto/16 :goto_0

    .line 163
    :cond_8
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    .line 164
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->connect(Ljava/lang/String;)Z

    move v1, v8

    .line 165
    goto/16 :goto_0
.end method

.method public onConnectionEventReceived(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public onDisconnectRequested(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 322
    const-string v0, "WifiP2pHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[wifip2p] onDisconnectRequested for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->isWifiP2pConnected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    const-string v0, "WifiP2pHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[wifip2p] WifiP2p is not connected for device("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v0, 0x0

    .line 338
    :goto_0
    return v0

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_IDLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    if-eq v0, v1, :cond_1

    .line 330
    const-string v0, "WifiP2pHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[wifip2p] Handler is busy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getWifiP2pMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "wifiP2pMacAddress":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x16

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$1;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->addCommand(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;)Z

    move v0, v6

    .line 333
    goto :goto_0

    .line 336
    .end local v3    # "wifiP2pMacAddress":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->disconnect(Ljava/lang/String;)Z

    move v0, v6

    .line 338
    goto :goto_0
.end method

.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 6
    .param p1, "wifiP2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 647
    const-string v3, "WifiP2pHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGroupInfoAvailable WifiP2pGroup : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    if-nez p1, :cond_4

    .line 649
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->resetRef()V

    .line 651
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getBondedDevices()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 652
    .local v1, "connectedDevices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 653
    .local v2, "wd":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setWearableConnectedState(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 654
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->disconnectSAP(Ljava/lang/String;)V

    goto :goto_0

    .line 656
    .end local v2    # "wd":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_DISCONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    if-ne v3, v4, :cond_1

    .line 657
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->cancelTimer()V

    .line 658
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_IDLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    invoke-virtual {p0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setHandlerState(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;)V

    .line 660
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_IDLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    if-ne v3, v4, :cond_2

    .line 661
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->restoreWifiP2p()V

    .line 663
    :cond_2
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;->UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    iput-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurrentWifiP2pGroupInfo:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    .line 676
    .end local v1    # "connectedDevices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    :cond_3
    :goto_1
    return-void

    .line 664
    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 665
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v0

    .line 666
    .local v0, "clientList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_CONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    if-ne v3, v4, :cond_6

    .line 667
    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->checkConnection(Ljava/util/Collection;)V

    .line 671
    :cond_5
    :goto_2
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;->GROUP_OWNER:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    iput-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurrentWifiP2pGroupInfo:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    goto :goto_1

    .line 668
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_DISCONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    if-ne v3, v4, :cond_5

    .line 669
    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->checkDisconnection(Ljava/util/Collection;)V

    goto :goto_2

    .line 672
    .end local v0    # "clientList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    :cond_7
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v3

    if-nez v3, :cond_3

    .line 673
    const-string v3, "WifiP2pHandler"

    const-string v4, "I\'m not a group owner"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;->GROUP_CLIENT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    iput-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurrentWifiP2pGroupInfo:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$GroupInfo;

    goto :goto_1
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 5
    .param p1, "deviceList"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 631
    const-string v2, "WifiP2pHandler"

    const-string v3, "onPeersAvailable() success"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 634
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 635
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 636
    .local v1, "wifiP2pDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string v2, "WifiP2pHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPeersAvailable list : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_DISCOVERY:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mCurCommand:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    .line 638
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getWifiP2pAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    const-string v2, "WifiP2pHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  -> Addr matched connect to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->doNextStep(Ljava/lang/String;)V

    goto :goto_0

    .line 643
    .end local v1    # "wifiP2pDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    return-void
.end method

.method public processConnectionFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1045
    const/4 v0, 0x0

    .line 1047
    .local v0, "btAddress":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1048
    const-string v2, "WifiP2pHandler"

    const-string v3, "processConnectionFail  ipAddress is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    :goto_0
    return-void

    .line 1052
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1054
    const-string v2, "WIFIP2P_CONNECT_ERROR"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->notifyWifiP2pConnectFailedEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCurrentCommand()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1056
    const-string v2, "WifiP2pHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection Failed! btAddress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCurrentCommand()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCurrentCommand()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->cancelConnection(Ljava/lang/String;)V

    .line 1060
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1061
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$7;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$7;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public processConnectionSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "connectedDeviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1028
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->initializeRetryCount()V

    .line 1030
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCurrentCommand()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v0

    .line 1031
    .local v0, "curCommand":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;
    if-nez v0, :cond_0

    .line 1032
    const-string v1, "WifiP2pHandler"

    const-string v2, "[Accessory] curCommand is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :goto_0
    return-void

    .line 1035
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v2

    const-string v3, "WIFIP2P_CONNECT_NO_ERROR"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setLastCommandStatus(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->notifyWifiP2pConnectState(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 1039
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->removeQueuedDisconnectCmd(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->doNextStep(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setHandlerState(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;)V
    .locals 3
    .param p1, "handlerState"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    .prologue
    .line 898
    const-string v0, "WifiP2pHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHandlerState  handlerState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mHandlerState:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    .line 900
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_IDLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    if-ne p1, v0, :cond_0

    .line 901
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->doNextStep(Ljava/lang/String;)V

    .line 903
    :cond_0
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1084
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1087
    :cond_0
    const-string v0, "WifiP2pHandler"

    invoke-static {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    return-void
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mWifiP2pEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->terminate()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->mWifiP2pEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    .line 117
    return-void
.end method
