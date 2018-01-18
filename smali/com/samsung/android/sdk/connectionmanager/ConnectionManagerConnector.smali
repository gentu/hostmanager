.class final Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;
.super Ljava/lang/Object;
.source "ConnectionManagerConnector.java"

# interfaces
.implements Lcom/samsung/android/sdk/connectionmanager/IConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;
    }
.end annotation


# static fields
.field public static final INVALID_REQUEST_ID:J = -0x1L

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mConnectionCallback:Landroid/os/Handler$Callback;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHandlerSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;",
            ">;"
        }
    .end annotation
.end field

.field private mIConnectionManager:Lcom/sec/android/api/iface/IConnectionManager;

.field private mID:Ljava/lang/String;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "ConnectionManagerConnector"

    sput-object v0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 31
    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mID:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    .line 35
    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mEventHandlerSet:Ljava/util/HashSet;

    .line 37
    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mComponentName:Landroid/content/ComponentName;

    .line 39
    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mIConnectionManager:Lcom/sec/android/api/iface/IConnectionManager;

    .line 121
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$1;-><init>(Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mID:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mEventHandlerSet:Ljava/util/HashSet;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mComponentName:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;Lcom/sec/android/api/iface/IConnectionManager;)Lcom/sec/android/api/iface/IConnectionManager;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;
    .param p1, "x1"    # Lcom/sec/android/api/iface/IConnectionManager;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mIConnectionManager:Lcom/sec/android/api/iface/IConnectionManager;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->onConnected()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->onDisconnected()V

    return-void
.end method

.method private addHandlerToHashSet(ILandroid/os/Bundle;Lcom/samsung/android/sdk/connectionmanager/EventHandler;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "handler"    # Lcom/samsung/android/sdk/connectionmanager/EventHandler;

    .prologue
    .line 203
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;-><init>(Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;ILandroid/os/Bundle;Lcom/samsung/android/sdk/connectionmanager/EventHandler;)V

    .line 204
    .local v0, "value":Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mEventHandlerSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method private bindConnectionManagerService()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 76
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v3

    .line 80
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.android.hostmanager.connectionmanager.ConnectionManager.START_SERVICE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "bind_service":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 83
    .local v0, "bindResult":Z
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 86
    if-eqz v0, :cond_0

    .line 91
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private onConnected()V
    .locals 3

    .prologue
    .line 148
    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    if-eqz v2, :cond_0

    .line 149
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 151
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;->SERVICE_CONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

    .line 152
    .local v1, "state":Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    invoke-interface {v2, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 155
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "state":Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;
    :cond_0
    return-void
.end method

.method private onDisconnected()V
    .locals 3

    .prologue
    .line 159
    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    if-eqz v2, :cond_0

    .line 160
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 162
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;->SERVICE_DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;

    .line 163
    .local v1, "state":Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    invoke-interface {v2, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 166
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "state":Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorState;
    :cond_0
    return-void
.end method

.method private removeHandlerFromHashSet(ILandroid/os/Bundle;Lcom/samsung/android/sdk/connectionmanager/EventHandler;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "handler"    # Lcom/samsung/android/sdk/connectionmanager/EventHandler;

    .prologue
    .line 208
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;-><init>(Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;ILandroid/os/Bundle;Lcom/samsung/android/sdk/connectionmanager/EventHandler;)V

    .line 209
    .local v0, "value":Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mEventHandlerSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method private startConnectionManagerService()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 57
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v2

    .line 61
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.hostmanager.connectionmanager.ConnectionManager.START_SERVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "start_service":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 69
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private unbindConnectionManagerService()Z
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_0

    .line 97
    const/4 v1, 0x0

    .line 118
    :goto_0
    return v1

    .line 101
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 103
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 118
    .end local v0    # "context":Landroid/content/Context;
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 106
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 112
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mServiceConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 114
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private unsubscribeAll()V
    .locals 7

    .prologue
    .line 214
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mIConnectionManager:Lcom/sec/android/api/iface/IConnectionManager;

    if-nez v4, :cond_0

    .line 237
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mEventHandlerSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 220
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;

    .line 225
    .local v1, "data":Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;
    :try_start_0
    new-instance v0, Lcom/sec/android/api/iface/CVMessage;

    const/4 v4, 0x4

    iget v5, v1, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;->mEventId:I

    iget-object v6, v1, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v4, v5, v6}, Lcom/sec/android/api/iface/CVMessage;-><init>(IILandroid/os/Bundle;)V

    .line 227
    .local v0, "cvm":Lcom/sec/android/api/iface/CVMessage;
    new-instance v3, Landroid/os/Messenger;

    iget-object v4, v1, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;->mHanlder:Lcom/samsung/android/sdk/connectionmanager/EventHandler;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 228
    .local v3, "messenger":Landroid/os/Messenger;
    invoke-virtual {v0, v3}, Lcom/sec/android/api/iface/CVMessage;->setMessenger(Landroid/os/Messenger;)V

    .line 230
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mIConnectionManager:Lcom/sec/android/api/iface/IConnectionManager;

    iget-object v5, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mID:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Lcom/sec/android/api/iface/IConnectionManager;->unsubscribeEvent(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 231
    .end local v0    # "cvm":Lcom/sec/android/api/iface/CVMessage;
    .end local v3    # "messenger":Landroid/os/Messenger;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 236
    .end local v1    # "data":Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mEventHandlerSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->startConnectionManagerService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->bindConnectionManagerService()Z

    goto :goto_0
.end method

.method public destroyInstance()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->unsubscribeAll()V

    .line 263
    invoke-direct {p0}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->unbindConnectionManagerService()Z

    goto :goto_0
.end method

.method public isServiceConnected()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mIConnectionManager:Lcom/sec/android/api/iface/IConnectionManager;

    if-nez v0, :cond_0

    .line 390
    const/4 v0, 0x0

    .line 393
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mIConnectionManager:Lcom/sec/android/api/iface/IConnectionManager;

    invoke-interface {v0}, Lcom/sec/android/api/iface/IConnectionManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    goto :goto_0
.end method

.method public requestAsync(Lcom/sec/android/api/iface/CVMessage;Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;)J
    .locals 7
    .param p1, "message"    # Lcom/sec/android/api/iface/CVMessage;
    .param p2, "handler"    # Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;

    .prologue
    const-wide/16 v4, -0x1

    .line 274
    const-wide/16 v2, -0x1

    .line 276
    .local v2, "req_id":J
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mIConnectionManager:Lcom/sec/android/api/iface/IConnectionManager;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-wide v4

    .line 281
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    .line 282
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sec/android/api/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 286
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 287
    invoke-virtual {p1, v2, v3}, Lcom/sec/android/api/iface/CVMessage;->setMsgID(J)V

    .line 290
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/sec/android/api/iface/CVMessage;->setMsgType(I)V

    .line 291
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1, v1}, Lcom/sec/android/api/iface/CVMessage;->setMessenger(Landroid/os/Messenger;)V

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mIConnectionManager:Lcom/sec/android/api/iface/IConnectionManager;

    iget-object v6, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mID:Ljava/lang/String;

    invoke-interface {v1, v6, p1}, Lcom/sec/android/api/iface/IConnectionManager;->requestAsync(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    move-wide v4, v2

    .line 302
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public requestSync(Lcom/sec/android/api/iface/CVMessage;)Lcom/sec/android/api/iface/CVMessage;
    .locals 5
    .param p1, "messgage"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 307
    iget-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mIConnectionManager:Lcom/sec/android/api/iface/IConnectionManager;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 308
    :cond_0
    new-instance v2, Lcom/sec/android/api/iface/CVMessage;

    invoke-direct {v2}, Lcom/sec/android/api/iface/CVMessage;-><init>()V

    .line 329
    :goto_0
    return-object v2

    .line 312
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    .line 313
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v3}, Lcom/sec/android/api/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 317
    :cond_2
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/sec/android/api/iface/CVMessage;->setMsgType(I)V

    .line 320
    const/4 v2, 0x0

    .line 322
    .local v2, "res":Lcom/sec/android/api/iface/CVMessage;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mIConnectionManager:Lcom/sec/android/api/iface/IConnectionManager;

    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mID:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Lcom/sec/android/api/iface/IConnectionManager;->requestSync(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Lcom/sec/android/api/iface/CVMessage;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/sec/android/api/iface/CVMessage;

    .end local v2    # "res":Lcom/sec/android/api/iface/CVMessage;
    invoke-direct {v2}, Lcom/sec/android/api/iface/CVMessage;-><init>()V

    .line 327
    .restart local v2    # "res":Lcom/sec/android/api/iface/CVMessage;
    goto :goto_0

    .line 325
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 326
    .local v1, "e1":Ljava/lang/NullPointerException;
    new-instance v2, Lcom/sec/android/api/iface/CVMessage;

    .end local v2    # "res":Lcom/sec/android/api/iface/CVMessage;
    invoke-direct {v2}, Lcom/sec/android/api/iface/CVMessage;-><init>()V

    .restart local v2    # "res":Lcom/sec/android/api/iface/CVMessage;
    goto :goto_0
.end method

.method public setCallback(Landroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    .line 51
    return-void
.end method

.method public subscribeEvent(ILandroid/os/Bundle;Lcom/samsung/android/sdk/connectionmanager/EventHandler;)Z
    .locals 6
    .param p1, "event"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "handler"    # Lcom/samsung/android/sdk/connectionmanager/EventHandler;

    .prologue
    .line 335
    const/4 v2, 0x0

    .line 337
    .local v2, "res":Z
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mIConnectionManager:Lcom/sec/android/api/iface/IConnectionManager;

    if-nez v4, :cond_0

    move v3, v2

    .line 359
    .end local v2    # "res":Z
    .local v3, "res":I
    :goto_0
    return v3

    .line 342
    .end local v3    # "res":I
    .restart local v2    # "res":Z
    :cond_0
    if-nez p2, :cond_1

    .line 343
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "bundle":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 346
    .restart local p2    # "bundle":Landroid/os/Bundle;
    :cond_1
    new-instance v0, Lcom/sec/android/api/iface/CVMessage;

    const/4 v4, 0x4

    invoke-direct {v0, v4, p1, p2}, Lcom/sec/android/api/iface/CVMessage;-><init>(IILandroid/os/Bundle;)V

    .line 347
    .local v0, "cvm":Lcom/sec/android/api/iface/CVMessage;
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 348
    .local v1, "messenger":Landroid/os/Messenger;
    invoke-virtual {v0, v1}, Lcom/sec/android/api/iface/CVMessage;->setMessenger(Landroid/os/Messenger;)V

    .line 351
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->addHandlerToHashSet(ILandroid/os/Bundle;Lcom/samsung/android/sdk/connectionmanager/EventHandler;)V

    .line 354
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mIConnectionManager:Lcom/sec/android/api/iface/IConnectionManager;

    iget-object v5, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mID:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Lcom/sec/android/api/iface/IConnectionManager;->subscribeEvent(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v3, v2

    .line 359
    .restart local v3    # "res":I
    goto :goto_0

    .line 355
    .end local v3    # "res":I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public unsubscribeEvent(ILandroid/os/Bundle;Lcom/samsung/android/sdk/connectionmanager/EventHandler;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "handler"    # Lcom/samsung/android/sdk/connectionmanager/EventHandler;

    .prologue
    .line 364
    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mIConnectionManager:Lcom/sec/android/api/iface/IConnectionManager;

    if-nez v2, :cond_0

    .line 384
    :goto_0
    return-void

    .line 369
    :cond_0
    if-nez p2, :cond_1

    .line 370
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "bundle":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 373
    .restart local p2    # "bundle":Landroid/os/Bundle;
    :cond_1
    new-instance v0, Lcom/sec/android/api/iface/CVMessage;

    const/4 v2, 0x4

    invoke-direct {v0, v2, p1, p2}, Lcom/sec/android/api/iface/CVMessage;-><init>(IILandroid/os/Bundle;)V

    .line 374
    .local v0, "cvm":Lcom/sec/android/api/iface/CVMessage;
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 375
    .local v1, "messenger":Landroid/os/Messenger;
    invoke-virtual {v0, v1}, Lcom/sec/android/api/iface/CVMessage;->setMessenger(Landroid/os/Messenger;)V

    .line 377
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->removeHandlerFromHashSet(ILandroid/os/Bundle;Lcom/samsung/android/sdk/connectionmanager/EventHandler;)V

    .line 380
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mIConnectionManager:Lcom/sec/android/api/iface/IConnectionManager;

    iget-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->mID:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/sec/android/api/iface/IConnectionManager;->unsubscribeEvent(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v2

    goto :goto_0
.end method
