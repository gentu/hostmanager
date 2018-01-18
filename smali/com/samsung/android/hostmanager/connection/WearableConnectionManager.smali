.class public Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;
.super Ljava/lang/Object;
.source "WearableConnectionManager.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/connection/IWConnectionManager;
.implements Lcom/samsung/android/hostmanager/connection/IWSocketManager;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mLogoutHandler:Landroid/os/Handler;

.field private static mLogoutRunnable:Ljava/lang/Runnable;


# instance fields
.field private final KEY_DEVICE_ID:Ljava/lang/String;

.field private final KEY_STATE:Ljava/lang/String;

.field private final MSG_INVOKE_LISTENERS:I

.field private isConnectedWithCM:Z

.field private logOutBtAddress:Ljava/lang/String;

.field private final mCMEventListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

.field private final mCMResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

.field private mConnectedWearableList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/android/hostmanager/connection/ISAPConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAddress:Ljava/lang/String;

.field mPendingConnection:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;

.field private mPendingConnectionType:I

.field private mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

.field private mProxyHandler:Landroid/os/Handler;

.field private mProxyRunnable:Ljava/lang/Runnable;

.field private final mSASocketHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    .line 731
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mLogoutHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->MSG_INVOKE_LISTENERS:I

    .line 62
    const-string v1, "device_id"

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->KEY_DEVICE_ID:Ljava/lang/String;

    .line 63
    const-string v1, "device_state"

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->KEY_STATE:Ljava/lang/String;

    .line 68
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mListeners:Ljava/util/Vector;

    .line 75
    iput-object v3, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxyHandler:Landroid/os/Handler;

    .line 77
    iput-object v3, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnection:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;

    .line 78
    iput-object v3, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingAddress:Ljava/lang/String;

    .line 79
    iput v4, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnectionType:I

    .line 655
    new-instance v1, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$4;-><init>(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mCMResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    .line 733
    iput-object v3, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->logOutBtAddress:Ljava/lang/String;

    .line 735
    new-instance v1, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;-><init>(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mCMEventListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    .line 89
    sget-object v1, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "WearableConnectionManager()"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mContext:Landroid/content/Context;

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mConnectedWearableList:Ljava/util/Map;

    .line 92
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "WearableConnectionManager"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 93
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 94
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 96
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 97
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mHandler:Landroid/os/Handler;

    .line 105
    .end local v0    # "looper":Landroid/os/Looper;
    :goto_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SASocketHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mSASocketHandlerThread:Landroid/os/HandlerThread;

    .line 106
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mSASocketHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 108
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->proxyInit(Ljava/lang/String;I)I

    .line 109
    return-void

    .line 99
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_0
    iput-object v3, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 102
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    iput-object v3, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxyHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->changeTypeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxyHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->changeStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mLogoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;

    .prologue
    .line 57
    sput-object p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mLogoutHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mLogoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1302(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 57
    sput-object p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mLogoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->logOutBtAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->logOutBtAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mConnectedWearableList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->sendGearDisconnectedBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->changeBondStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxyRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Lcom/samsung/android/sdk/connectionmanager/ScmController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Lcom/samsung/android/sdk/connectionmanager/ScmController;)Lcom/samsung/android/sdk/connectionmanager/ScmController;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;
    .param p1, "x1"    # Lcom/samsung/android/sdk/connectionmanager/ScmController;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mCMEventListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mCMResponseListener:Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->isConnectedWithCM:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    .prologue
    .line 57
    iget v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnectionType:I

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnectionType:I

    return p1
.end method

.method private buildScmWearableDevice(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 538
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice$Builder;-><init>()V

    .line 539
    .local v0, "builder":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice$Builder;
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice$Builder;->setBTAddress(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice$Builder;

    .line 540
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice$Builder;->build()Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    move-result-object v1

    return-object v1
.end method

.method private changeBondStateToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "bondState"    # I

    .prologue
    .line 1257
    const/4 v0, 0x0

    .line 1258
    .local v0, "bondState_result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown bondState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1272
    :goto_0
    return-object v0

    .line 1260
    :pswitch_0
    const-string v0, "BLUETOOTH_BOND_STATE_NONE"

    .line 1261
    goto :goto_0

    .line 1263
    :pswitch_1
    const-string v0, "BLUETOOTH_BOND_STATE_BONDING"

    .line 1264
    goto :goto_0

    .line 1266
    :pswitch_2
    const-string v0, "BLUETOOTH_BOND_STATE_BONDED"

    .line 1267
    goto :goto_0

    .line 1258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private changeStateToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1276
    const/4 v0, 0x0

    .line 1277
    .local v0, "state_result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1300
    :goto_0
    return-object v0

    .line 1279
    :pswitch_0
    const-string v0, "STATE_CONNECTING"

    .line 1280
    goto :goto_0

    .line 1282
    :pswitch_1
    const-string v0, "STATE_CONNECTED"

    .line 1283
    goto :goto_0

    .line 1285
    :pswitch_2
    const-string v0, "STATE_DISCONNECTING"

    .line 1286
    goto :goto_0

    .line 1288
    :pswitch_3
    const-string v0, "STATE_DISCONNECTED"

    .line 1289
    goto :goto_0

    .line 1291
    :pswitch_4
    const-string v0, "STATE_LOGGED_IN"

    .line 1292
    goto :goto_0

    .line 1294
    :pswitch_5
    const-string v0, "STATE_LOGGED_OUT"

    .line 1295
    goto :goto_0

    .line 1277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private changeTypeToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1304
    const/4 v0, 0x0

    .line 1305
    .local v0, "type_result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1331
    :goto_0
    return-object v0

    .line 1307
    :pswitch_0
    const-string v0, "BLUETOOTH_SERVICE_TYPE_HFP"

    .line 1308
    goto :goto_0

    .line 1310
    :pswitch_1
    const-string v0, "BLUETOOTH_SERVICE_TYPE_PAN"

    .line 1311
    goto :goto_0

    .line 1313
    :pswitch_2
    const-string v0, "BLUETOOTH_SERVICE_TYPE_SPP"

    .line 1314
    goto :goto_0

    .line 1316
    :pswitch_3
    const-string v0, "BLUETOOTH_SERVICE_TYPE_GATT"

    .line 1317
    goto :goto_0

    .line 1319
    :pswitch_4
    const-string v0, "BLUETOOTH_SERVICE_TYPE_ALL"

    .line 1320
    goto :goto_0

    .line 1322
    :pswitch_5
    const-string v0, "SCS_SERVICE_TYPE_ALL"

    .line 1323
    goto :goto_0

    .line 1325
    :pswitch_6
    const-string v0, "WIFI_SERVICE_TYPE_P2P"

    .line 1326
    goto :goto_0

    .line 1305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private invokeListeners(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1237
    const-string v4, "device_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1238
    .local v0, "btAddr":Ljava/lang/String;
    const-string v4, "device_state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1240
    .local v3, "state":I
    sget-object v4, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invokeListeners::onConnectStateChanged deviceId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", messageID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mListeners:Ljava/util/Vector;

    if-eqz v4, :cond_2

    .line 1242
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1244
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/hostmanager/connection/ISAPConnectionListener;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1245
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/connection/ISAPConnectionListener;

    .line 1246
    .local v2, "listener":Lcom/samsung/android/hostmanager/connection/ISAPConnectionListener;
    if-eqz v2, :cond_0

    .line 1247
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1248
    invoke-interface {v2, v0}, Lcom/samsung/android/hostmanager/connection/ISAPConnectionListener;->onSAPConnected(Ljava/lang/String;)V

    goto :goto_0

    .line 1249
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1250
    invoke-interface {v2, v0}, Lcom/samsung/android/hostmanager/connection/ISAPConnectionListener;->onSAPDisconnected(Ljava/lang/String;)V

    goto :goto_0

    .line 1254
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/hostmanager/connection/ISAPConnectionListener;>;"
    .end local v2    # "listener":Lcom/samsung/android/hostmanager/connection/ISAPConnectionListener;
    :cond_2
    return-void
.end method

.method private sendGearDisconnectedBroadcast(Ljava/lang/String;)V
    .locals 5
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 629
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 630
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.hostmanager.action.GEAR_DEVICE_DISCONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 633
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 634
    sget-object v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, "CM::sendGearConnectedBroadcast()::com.samsung.android.hostmanager.action.GEAR_DEVICE_DISCONNECTED"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 640
    .local v0, "commonDisconnectIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.wearable.action.WEARABLE_DEVICE_DISCONNECTED"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    :try_start_0
    const-string v3, "device_address"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    const-string v3, "device_name"

    invoke-static {p1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    const-string v3, "device_connect_type"

    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getConnectedType(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 650
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 651
    sget-object v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, "CM::sendGearConnectedBroadcast()::com.samsung.android.wearable.action.WEARABLE_DEVICE_DISCONNECTED"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :cond_1
    return-void

    .line 645
    :catch_0
    move-exception v1

    .line 646
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendMessageToHandler(Ljava/lang/String;I)V
    .locals 4
    .param p1, "btAddr"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 1335
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1336
    .local v1, "obtainMessage":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1337
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "device_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    const-string v2, "device_state"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1339
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1340
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1341
    return-void
.end method


# virtual methods
.method public addWearableSocket(Ljava/lang/String;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)I
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "socket"    # Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
        }
    .end annotation

    .prologue
    .line 1169
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM::addWearableSocket()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    invoke-static {p1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->validateBTAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1171
    new-instance v0, Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;

    invoke-direct {v0, p1}, Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mSASocketHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->setLooper(Landroid/os/Looper;)V

    .line 1174
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mConnectedWearableList:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    const/4 v0, 0x0

    return v0
.end method

.method public broadcastSAPConnectionStatus(Ljava/lang/String;I)V
    .locals 0
    .param p1, "btAddr"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 1344
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->sendMessageToHandler(Ljava/lang/String;I)V

    .line 1345
    return-void
.end method

.method public cancelConnect(Ljava/lang/String;I)I
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "connType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
        }
    .end annotation

    .prologue
    .line 621
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM::cancelConnect()::deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-static {p1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->validateBTAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    new-instance v0, Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;

    invoke-direct {v0, p1}, Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public checkBondedList(Ljava/lang/String;)Z
    .locals 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 137
    sget-object v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkBondedList()::mProxy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    if-eqz v3, :cond_2

    .line 140
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->getBondedDeviceList()Ljava/util/ArrayList;

    move-result-object v1

    .line 141
    .local v1, "sbcBondedWearableDeviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    sget-object v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkBondedList()::sbcBondedWearableDeviceList.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 144
    .local v0, "connectedDevice":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    sget-object v4, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkBondedList()::address = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 145
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    sget-object v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkBondedList()::connectedDevice.getBTAddress() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 148
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v2, 0x1

    .line 157
    .end local v0    # "connectedDevice":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .end local v1    # "sbcBondedWearableDeviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    :cond_1
    :goto_0
    return v2

    .line 154
    :cond_2
    sget-object v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, "CM::checkBondedList() - mProxy is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public connectWearable(Ljava/lang/String;I)I
    .locals 13
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "connType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 475
    sget-object v9, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CM::connectWearable()::deviceId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    sget-object v9, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CM::connectWearable()::connType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v9, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    if-nez v9, :cond_0

    .line 479
    sget-object v8, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v9, "CM::mProxy is null"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :goto_0
    return v7

    .line 482
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->validateBTAddress(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 483
    new-instance v7, Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;

    invoke-direct {v7, p1}, Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 485
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->buildScmWearableDevice(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    move-result-object v6

    .line 487
    .local v6, "scmDevice":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    iget-object v9, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->getBondedDeviceList()Ljava/util/ArrayList;

    move-result-object v1

    .line 488
    .local v1, "BondedDevice":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 489
    .local v5, "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    sget-object v10, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CM::manageConnectionInfo():: Bonded device = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 490
    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 489
    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 492
    .end local v5    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    .line 493
    invoke-virtual {v9, v8}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 494
    .local v2, "HFPDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 495
    .restart local v5    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    sget-object v10, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CM::manageConnectionInfo():: HFP device = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 496
    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 495
    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 499
    .end local v5    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    const/4 v10, 0x2

    .line 500
    invoke-virtual {v9, v10}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 501
    .local v4, "SPPDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 502
    .restart local v5    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    sget-object v10, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CM::manageConnectionInfo():: SPP device = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 503
    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 502
    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 506
    .end local v5    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    const/4 v10, 0x4

    .line 507
    invoke-virtual {v9, v10}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 508
    .local v0, "BT_ALLDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 509
    .restart local v5    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    sget-object v10, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CM::manageConnectionInfo():: BT ALL device = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 510
    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 509
    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 513
    .end local v5    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    const/4 v10, 0x5

    .line 514
    invoke-virtual {v9, v10}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 515
    .local v3, "SCS_ALLDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 516
    .restart local v5    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    sget-object v10, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CM::manageConnectionInfo():: SCS ALL device = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 517
    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 516
    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 520
    .end local v5    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    if-eqz v9, :cond_8

    .line 521
    sget-object v9, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v10, "CM::=================================================="

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    if-eqz v6, :cond_7

    .line 523
    sget-object v7, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CM::mProxy.connect("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    sget-object v7, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v9, "CM::=================================================="

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    invoke-virtual {v7, v6, p2}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->connect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    :goto_6
    move v7, v8

    .line 534
    goto/16 :goto_0

    .line 525
    :cond_7
    sget-object v8, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v9, "CM::mProxy.connect( ) fail"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 531
    :cond_8
    sget-object v7, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v9, "CM::mProxy is null"

    invoke-static {v7, v9}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public deleteController()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "CM::deleteController(mProxy)"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    invoke-static {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmConnector;->deleteController(Lcom/samsung/android/sdk/connectionmanager/ScmController;)Z

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    .line 117
    :cond_0
    return-void
.end method

.method public disconnectWearable(Ljava/lang/String;I)I
    .locals 12
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "connType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
        }
    .end annotation

    .prologue
    .line 544
    sget-object v8, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CM::disconnectWearable()::deviceId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    if-nez v8, :cond_0

    .line 547
    sget-object v8, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v9, "CM::mProxy is null"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const/4 v8, -0x1

    .line 616
    :goto_0
    return v8

    .line 551
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->validateBTAddress(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 552
    new-instance v8, Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;

    invoke-direct {v8, p1}, Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 554
    :cond_1
    const/4 v6, 0x0

    .line 556
    .local v6, "isConnectedState":Z
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->buildScmWearableDevice(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    move-result-object v7

    .line 558
    .local v7, "scmDevice":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->getBondedDeviceList()Ljava/util/ArrayList;

    move-result-object v1

    .line 559
    .local v1, "BondedDevice":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 560
    .local v5, "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    sget-object v9, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CM::manageConnectionInfo():: Bonded device = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 562
    .end local v5    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    const/4 v9, 0x0

    .line 563
    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 564
    .local v2, "HFPDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 565
    .restart local v5    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    if-eqz p1, :cond_3

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 566
    sget-object v9, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CM::deviceID("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") is connected with HFP."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const/4 v6, 0x1

    .line 569
    :cond_3
    sget-object v9, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CM::manageConnectionInfo():: HFP device = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 572
    .end local v5    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    const/4 v9, 0x2

    .line 573
    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 574
    .local v4, "SPPDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 575
    .restart local v5    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    if-eqz p1, :cond_5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 576
    sget-object v9, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CM::deviceID("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") is connected with SPP."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const/4 v6, 0x1

    .line 579
    :cond_5
    sget-object v9, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CM::manageConnectionInfo():: SPP device = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 582
    .end local v5    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :cond_6
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    const/4 v9, 0x4

    .line 583
    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 584
    .local v0, "BT_ALLDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 585
    .restart local v5    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    if-eqz p1, :cond_7

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 586
    sget-object v9, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CM::deviceID("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") is connected with BT_ALL."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const/4 v6, 0x1

    .line 589
    :cond_7
    sget-object v9, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CM::manageConnectionInfo():: BT ALL device = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 592
    .end local v5    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :cond_8
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    const/4 v9, 0x5

    .line 593
    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 594
    .local v3, "SCS_ALLDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;

    .line 595
    .restart local v5    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    if-eqz p1, :cond_9

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 596
    sget-object v9, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CM::deviceID("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") is connected with SCS_ALL."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const/4 v6, 0x1

    .line 599
    :cond_9
    sget-object v9, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CM::manageConnectionInfo():: SCS ALL device = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 602
    .end local v5    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    :cond_a
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    if-eqz v8, :cond_c

    .line 603
    sget-object v8, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v9, "CM::=================================================="

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    if-eqz v7, :cond_b

    .line 605
    sget-object v8, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CM::mProxy.disconnect("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    sget-object v8, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v9, "CM::=================================================="

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    invoke-virtual {v8, v7, p2}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->disconnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    .line 616
    :goto_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 607
    :cond_b
    sget-object v8, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v9, "CM::mProxy.disconnect( ) fail"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 613
    :cond_c
    sget-object v8, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v9, "CM::mProxy is null"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public getBondedDeviceList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "CM::getBondedDeviceList()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->getBondedDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 131
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "CM::getBondedDeviceList() mProxy is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectedDeviceList(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "serviceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "CM::getConnectedDeviceList()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
    .locals 5
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 337
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mConnectedWearableList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    .line 338
    .local v0, "socket":Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
    if-nez v0, :cond_0

    .line 339
    new-instance v1, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mSASocketHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;-><init>(Landroid/os/Looper;)V

    .line 340
    .local v1, "tempSocket":Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
    sget-object v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSASocket()::deviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tempSocket = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .end local v1    # "tempSocket":Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
    :goto_0
    return-object v1

    .line 343
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSASocket()::deviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", socket = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 344
    goto :goto_0
.end method

.method public getSASockets()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mConnectedWearableList:Ljava/util/Map;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1202
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1209
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1205
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->invokeListeners(Landroid/os/Bundle;)V

    .line 1206
    const/4 v0, 0x1

    goto :goto_0

    .line 1202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public hasProxy()Z
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "hasProxy()::proxy is not null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    .line 198
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "hasProxy()::proxy is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public manageConnectionInfo(Ljava/lang/String;I)I
    .locals 9
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "connType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x4

    const/4 v2, 0x0

    .line 364
    if-nez p1, :cond_1

    .line 365
    sget-object v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v3, "***** manageConnectionInfo() deviceID is null!!!!! *****"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/4 v2, -0x2

    .line 466
    :cond_0
    :goto_0
    return v2

    .line 369
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->validateBTAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 370
    new-instance v2, Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;

    invoke-direct {v2, p1}, Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 372
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    if-nez v4, :cond_3

    .line 373
    sget-object v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v3, "***** manageConnectionInfo() mProxy is null!!!!! Connection will be retried after mProxy created *****"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingAddress:Ljava/lang/String;

    .line 376
    iput p2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnectionType:I

    .line 377
    const/4 v2, -0x3

    goto :goto_0

    .line 380
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnection:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    if-eqz v4, :cond_7

    .line 381
    :cond_4
    sget-object v4, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v5, "CM::startManageConnectionInfo() mPendingConnection is safe"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnection:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;

    .line 400
    :goto_1
    if-eq p2, v3, :cond_5

    if-eq p2, v8, :cond_5

    const/4 v4, 0x5

    if-ne p2, v4, :cond_a

    .line 404
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    .line 405
    invoke-virtual {v4, v8}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->getConnectedDeviceList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 407
    .local v1, "mConnectedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    if-eqz v1, :cond_0

    .line 408
    sget-object v4, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CM::manageConnectionInfo::mConnectedDevices() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8

    .line 410
    if-eq p2, v3, :cond_6

    if-ne p2, v8, :cond_0

    .line 412
    :cond_6
    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->connectWearable(Ljava/lang/String;I)I
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;->printStackTrace()V

    goto :goto_0

    .line 385
    .end local v0    # "e":Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
    .end local v1    # "mConnectedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    :cond_7
    sget-object v4, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v5, "CM::startManageConnectionInfo() mPendingConnection - creating proxy for CM!"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    sget-object v4, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v5, "CM::startManageConnectionInfo() - start timer 3s"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    new-instance v5, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$3;-><init>(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    .line 420
    .restart local v1    # "mConnectedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    :cond_8
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getConnectManager()Lcom/samsung/android/hostmanager/connection/IWSocketManager;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/samsung/android/hostmanager/connection/IWSocketManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v4

    iget-boolean v4, v4, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isConnecting:Z

    if-eqz v4, :cond_9

    .line 421
    sget-object v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, "CM::connection request while already connected"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    :cond_9
    sget-object v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM::already connected, device = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    sget-object v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM::Skip connect request!!!!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 426
    goto/16 :goto_0

    .line 429
    .end local v1    # "mConnectedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;>;"
    :cond_a
    const/4 v3, 0x2

    if-ne p2, v3, :cond_b

    .line 430
    sget-object v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM::Request disconnect device by Connection Manager. Address : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    sget-object v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, "CM::==============================="

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    sget-object v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, "CM::mProxy.disconnect "

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    sget-object v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, "CM::==============================="

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v3, 0x4

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->disconnectWearable(Ljava/lang/String;I)I
    :try_end_1
    .catch Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 437
    :catch_1
    move-exception v0

    .line 439
    .restart local v0    # "e":Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;->printStackTrace()V

    goto/16 :goto_0

    .line 442
    .end local v0    # "e":Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
    :cond_b
    const/4 v3, 0x7

    if-ne p2, v3, :cond_c

    .line 443
    sget-object v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM::Request p2pConnect device by Connection Manager. Address : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    sget-object v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, "CM::==============================="

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    sget-object v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, "CM::mProxy.connect(ScmController.WIFI_SERVICE_TYPE_P2P) "

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    sget-object v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, "CM::==============================="

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/4 v3, 0x6

    :try_start_2
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->connectWearable(Ljava/lang/String;I)I
    :try_end_2
    .catch Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 449
    :catch_2
    move-exception v0

    .line 450
    .restart local v0    # "e":Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;->printStackTrace()V

    goto/16 :goto_0

    .line 453
    .end local v0    # "e":Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
    :cond_c
    const/16 v3, 0x8

    if-ne p2, v3, :cond_0

    .line 454
    sget-object v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM::Request p2p Disconnect device by Connection Manager. Address : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    sget-object v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, "CM::==============================="

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    sget-object v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, "CM::mProxy.disconnect(ScmController.WIFI_SERVICE_TYPE_P2P) "

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    sget-object v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v4, "CM::==============================="

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/4 v3, 0x6

    :try_start_3
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->disconnectWearable(Ljava/lang/String;I)I
    :try_end_3
    .catch Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 461
    :catch_3
    move-exception v0

    .line 462
    .restart local v0    # "e":Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public proxyInit(Ljava/lang/String;I)I
    .locals 6
    .param p1, "btAddress"    # Ljava/lang/String;
    .param p2, "connType"    # I

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    if-nez v2, :cond_4

    .line 214
    sget-object v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v3, "CM::mProxy = null, try to create proxy!!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->isConnectedWithCM:Z

    if-nez v2, :cond_2

    .line 218
    sget-object v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v3, "CM::request createController"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;-><init>(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)V

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/connectionmanager/ScmConnector;->createController(Landroid/content/Context;Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorListener;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->isConnectedWithCM:Z

    .line 288
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->isConnectedWithCM:Z

    if-eqz v2, :cond_0

    .line 289
    sget-object v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM::proxyInit()::set reconnect value : btAddress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " conntype = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;-><init>(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;)V

    iput-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnection:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;

    .line 292
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnection:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;->isPending:Z

    .line 293
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnection:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;

    iput-object p1, v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;->btAddress:Ljava/lang/String;

    .line 294
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnection:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;

    iput p2, v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;->connType:I

    .line 296
    new-instance v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$2;-><init>(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)V

    iput-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxyRunnable:Ljava/lang/Runnable;

    .line 307
    :try_start_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxyHandler:Landroid/os/Handler;

    .line 308
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxyHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxyRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :cond_0
    :goto_0
    sget-object v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM::proxyInit, isConnectedWithCM = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->isConnectedWithCM:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->isConnectedWithCM:Z

    if-eqz v2, :cond_1

    .line 325
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->isConnectedWithCM:Z

    if-eqz v2, :cond_3

    .line 332
    :goto_1
    return v1

    .line 309
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 318
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v3, "CM::proxy is creating... on other path!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_3
    const/4 v1, -0x4

    goto :goto_1

    .line 331
    :cond_4
    sget-object v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v3, "CM::mProxy != null, do not need create proxy!!"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public registerSAPListener(Lcom/samsung/android/hostmanager/connection/ISAPConnectionListener;)I
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/hostmanager/connection/ISAPConnectionListener;

    .prologue
    .line 1216
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSAPListener()::listener= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    if-nez p1, :cond_0

    .line 1218
    const/4 v0, -0x1

    .line 1222
    :goto_0
    return v0

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1221
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSAPListener()::mListeners.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendDataInSocket(Ljava/lang/String;[B)I
    .locals 5
    .param p1, "btAddr"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/hostmanager/exception/InvalidSocketException;,
            Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
        }
    .end annotation

    .prologue
    .line 1180
    sget-object v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDataInSocket()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const/16 v0, 0x64

    .line 1182
    .local v0, "result":I
    invoke-static {p1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->validateBTAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1183
    new-instance v2, Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;

    invoke-direct {v2, p1}, Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1185
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mConnectedWearableList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1186
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mConnectedWearableList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    .line 1187
    .local v1, "socket":Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
    if-eqz v1, :cond_1

    .line 1188
    const/16 v2, 0x67

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->send(I[B)V

    .line 1189
    const/4 v0, 0x0

    .line 1197
    :cond_1
    return v0

    .line 1192
    .end local v1    # "socket":Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
    :cond_2
    const/4 v0, -0x1

    .line 1193
    new-instance v2, Lcom/samsung/android/hostmanager/exception/InvalidSocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Socket not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/hostmanager/exception/InvalidSocketException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 12
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "targetAppId"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "cc"    # Ljava/lang/String;
    .param p6, "email"    # Ljava/lang/String;
    .param p7, "appSecret"    # Ljava/lang/String;
    .param p8, "dataNetwork"    # Z
    .param p9, "mcc"    # I
    .param p10, "tokenSecret"    # Ljava/lang/String;

    .prologue
    .line 720
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    if-eqz v0, :cond_0

    .line 723
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->_getMNC(Landroid/content/Context;)I

    move-result v10

    .line 725
    .local v10, "mnc":I
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V

    .line 729
    .end local v10    # "mnc":I
    :goto_0
    return-void

    .line 727
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "CM::scs::setAccount mProxy si null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setScsPreference(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Z)V
    .locals 3
    .param p1, "device"    # Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .param p2, "value"    # Z

    .prologue
    .line 352
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScsPreference()::device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    if-nez p1, :cond_0

    .line 355
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->setScsPreference(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Z)Z

    goto :goto_0
.end method

.method public shutdown()Z
    .locals 3

    .prologue
    .line 162
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutdown()::mProxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->shutDown()Z

    move-result v0

    .line 167
    :goto_0
    return v0

    .line 166
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "shutdown()::mProxy is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startGetConnectdCMProxyState()Z
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    if-nez v0, :cond_0

    .line 182
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "startGetConnectdCMProxyState()::proxy is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->proxyInit(Ljava/lang/String;I)I

    .line 184
    const/4 v0, 0x0

    .line 187
    :goto_0
    return v0

    .line 186
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "startGetConnectdCMProxyState()::proxy is not null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startScan()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "CM::startScan()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mProxy:Lcom/samsung/android/sdk/connectionmanager/ScmController;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->startScan()V

    .line 124
    :cond_0
    return-void
.end method

.method public unregisterSAPListener(Lcom/samsung/android/hostmanager/connection/ISAPConnectionListener;)I
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/hostmanager/connection/ISAPConnectionListener;

    .prologue
    const/4 v1, -0x1

    .line 1227
    sget-object v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterSAPListener()::listener= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    if-nez p1, :cond_1

    .line 1233
    :cond_0
    :goto_0
    return v1

    .line 1231
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1232
    .local v0, "isRemoved":Z
    sget-object v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterSAPListener()::isRemoved="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method
