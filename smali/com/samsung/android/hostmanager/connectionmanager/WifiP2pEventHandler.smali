.class public Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pEventHandler.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private ControlCallbackListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final EventHandler:Landroid/os/Handler;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

.field private mWifiP2pHandler:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "WifiP2pEventHandler"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V
    .locals 1
    .param p1, "connectionManager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .param p2, "wifiP2pManager"    # Landroid/net/wifi/p2p/WifiP2pManager;
    .param p3, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p4, "p2pHandler"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 26
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->ControlCallbackListeners:Ljava/util/HashMap;

    .line 80
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->EventHandler:Landroid/os/Handler;

    .line 35
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 37
    iput-object p3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 38
    iput-object p4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->mWifiP2pHandler:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->ControlCallbackListeners:Ljava/util/HashMap;

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->registerReceiver()V

    .line 42
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/Bundle;
    .param p4, "x4"    # Landroid/content/Intent;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->notifyEvent(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->mWifiP2pHandler:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    return-object v0
.end method

.method private notifyEvent(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V
    .locals 3
    .param p1, "controlType"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 138
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->ControlCallbackListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;

    .line 140
    .local v0, "listener":Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;
    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, p2, p3, p4}, Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;->onReceivedEvent(ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->TAG:Ljava/lang/String;

    const-string v2, "ControlCallback listener is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "action":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent msg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .end local v0    # "action":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "EventHandler : onReceive().."

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 76
    .local v1, "msg":Landroid/os/Message;
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->EventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    return-void

    .line 70
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "intent is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerCallback(Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;
    .param p2, "controlType"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->ControlCallbackListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public terminate()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->unregisterReceiver()V

    .line 135
    return-void
.end method
