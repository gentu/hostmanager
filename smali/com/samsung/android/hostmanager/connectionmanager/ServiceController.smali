.class public Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
.super Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;
.source "ServiceController.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;,
        Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;,
        Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SPPConnectionRetryTask;,
        Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;,
        Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SppConnectTask;,
        Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SppDisconnectTask;,
        Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;,
        Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;
    }
.end annotation


# static fields
.field private static final HFP_CONNECTION_RECOVERY_WAITING_TIME:I = 0xbb8

.field private static final SAP_CONNECTION_RECOVERY_WAITING_TIME:I = 0x2710

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mDataExchangeEventListener:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$IDataExchangeEventListener;

.field private mDelayedNotifyHandler:Landroid/os/Handler;

.field private mDisconnectCancelResponse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

.field private mHFPConnRetryTask:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;",
            ">;"
        }
    .end annotation
.end field

.field private mHFPReconnectHandler:Landroid/os/Handler;

.field private mHFPRetryPerformed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifyEventTask:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

.field private mProfileHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;",
            "Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryFindPeerCounterMap:Ljava/util/HashMap;
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

.field private mSCSFindPeerHandler:Landroid/os/Handler;

.field private mSCSFindPeerRetryTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSCSWaitingConnectionInfoMap:Ljava/util/HashMap;
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

.field private mSPPConnRetryTask:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SPPConnectionRetryTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSPPConnectHandler:Landroid/os/Handler;

.field private mSPPDisconnectHandler:Landroid/os/Handler;

.field private mSPPReconnectHandler:Landroid/os/Handler;

.field private mSppWaitingConnectionInfoMap:Ljava/util/HashMap;
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

.field private mSppWaitingConnectionInfoMutex:Ljava/lang/Object;

.field private mWaitingConnectionInfoMap:Ljava/util/HashMap;
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

.field private mWaitingConnectionInfoMutex:Ljava/lang/Object;

.field private mWaitingDisconnectionInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/api/iface/CVMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "ServiceController"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 3
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    .line 43
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mProfileHandlers:Ljava/util/HashMap;

    .line 45
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .line 47
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mDelayedNotifyHandler:Landroid/os/Handler;

    .line 49
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mNotifyEventTask:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    .line 51
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSPPConnRetryTask:Ljava/util/HashMap;

    .line 53
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSPPReconnectHandler:Landroid/os/Handler;

    .line 55
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSPPDisconnectHandler:Landroid/os/Handler;

    .line 56
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSPPConnectHandler:Landroid/os/Handler;

    .line 59
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSFindPeerHandler:Landroid/os/Handler;

    .line 61
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mRetryFindPeerCounterMap:Ljava/util/HashMap;

    .line 63
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSFindPeerRetryTaskMap:Ljava/util/HashMap;

    .line 65
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mHFPConnRetryTask:Ljava/util/HashMap;

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mHFPRetryPerformed:Ljava/util/HashMap;

    .line 69
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mHFPReconnectHandler:Landroid/os/Handler;

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mDisconnectCancelResponse:Ljava/util/HashMap;

    .line 113
    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;)V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mDataExchangeEventListener:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$IDataExchangeEventListener;

    .line 287
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMutex:Ljava/lang/Object;

    .line 289
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSppWaitingConnectionInfoMutex:Ljava/lang/Object;

    .line 291
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMap:Ljava/util/HashMap;

    .line 293
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingDisconnectionInfoMap:Ljava/util/HashMap;

    .line 296
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSWaitingConnectionInfoMap:Ljava/util/HashMap;

    .line 299
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSppWaitingConnectionInfoMap:Ljava/util/HashMap;

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getEventHandler()Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .line 77
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    const-string v2, "SERVICECONTROLLER"

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->registerCallback(Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v0

    .line 80
    .local v0, "de":Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mDataExchangeEventListener:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$IDataExchangeEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->addEventListener(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$IDataExchangeEventListener;)V

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mProfileHandlers:Ljava/util/HashMap;

    .line 84
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mDelayedNotifyHandler:Landroid/os/Handler;

    .line 86
    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    invoke-direct {v1, p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;)V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mNotifyEventTask:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSPPConnRetryTask:Ljava/util/HashMap;

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mHFPConnRetryTask:Ljava/util/HashMap;

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSFindPeerRetryTaskMap:Ljava/util/HashMap;

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mRetryFindPeerCounterMap:Ljava/util/HashMap;

    .line 93
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSPPReconnectHandler:Landroid/os/Handler;

    .line 95
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSPPDisconnectHandler:Landroid/os/Handler;

    .line 97
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSPPConnectHandler:Landroid/os/Handler;

    .line 99
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mHFPReconnectHandler:Landroid/os/Handler;

    .line 101
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSFindPeerHandler:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method private DisconnectALLforOtherDevices(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 8
    .param p1, "CurDevice"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 2806
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    .line 2807
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr()Ljava/util/Set;

    move-result-object v2

    .line 2808
    .local v2, "addrSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2810
    .local v0, "AddrIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 2811
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2812
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 2813
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 2814
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v3, :cond_0

    .line 2815
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_0

    .line 2817
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2818
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v7, "[WS] disconnect ALL for other devices....."

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2820
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2821
    .local v4, "discBundle":Landroid/os/Bundle;
    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v5

    .line 2822
    .local v5, "itemBundle":Landroid/os/Bundle;
    const-string v6, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2823
    const-string v6, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2824
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    const/16 v7, 0x16

    invoke-virtual {v6, v7, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 2831
    .end local v1    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "discBundle":Landroid/os/Bundle;
    .end local v5    # "itemBundle":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
    .param p1, "x1"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->retryFindPeer(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mDelayedNotifyHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
    .param p1, "x1"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->requestFindPeer(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
    .param p1, "x1"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->requestFeatureExchange(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->setRssi(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->notify2Subscriber(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->setAutoConnectionDeviceList(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Z
    .param p9, "x9"    # I
    .param p10, "x10"    # I
    .param p11, "x11"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p11}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
    .param p1, "x1"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->setConnectionReqeustedDevice(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->setWaitingConnectionInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
    .param p1, "x1"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->DisconnectALLforOtherDevices(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingDisconnectionInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
    .param p1, "x1"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->disconnectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;)Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mNotifyEventTask:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    return-object v0
.end method

.method private connectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 2870
    if-nez p1, :cond_0

    .line 2871
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v3, "connect SCS device is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2884
    :goto_0
    return-void

    .line 2875
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2877
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 2878
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2879
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2881
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v3, "[CMAC] connection with SCS"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2883
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private convertStringToServiceState(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    .locals 3
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 2606
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 2608
    .local v0, "res":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    if-nez p1, :cond_1

    .line 2609
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v2, "Error - convertStringToServiceState: state is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    :cond_0
    :goto_0
    return-object v0

    .line 2610
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2611
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    goto :goto_0

    .line 2612
    :cond_2
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2613
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    goto :goto_0

    .line 2614
    :cond_3
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2615
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    goto :goto_0

    .line 2616
    :cond_4
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2617
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    goto :goto_0
.end method

.method private convertStringToServiceType(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    .locals 3
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 2623
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 2625
    .local v0, "res":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    if-nez p1, :cond_1

    .line 2626
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v2, "Error - convertStringToServiceType: type is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    :cond_0
    :goto_0
    return-object v0

    .line 2627
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2628
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    goto :goto_0

    .line 2629
    :cond_2
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2630
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    goto :goto_0

    .line 2631
    :cond_3
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2632
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    goto :goto_0

    .line 2633
    :cond_4
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->GATT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2634
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->GATT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    goto :goto_0

    .line 2635
    :cond_5
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2636
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    goto :goto_0
.end method

.method private disconnectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 5
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2893
    if-nez p1, :cond_1

    .line 2894
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v4, "disconnect SCS device is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2911
    :cond_0
    :goto_0
    return v2

    .line 2898
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->isEnableSCSServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2899
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2901
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 2902
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2903
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2905
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v4, "[CMAC] disconnection with SCS"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2907
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    const/16 v4, 0x24

    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    move v2, v3

    .line 2908
    goto :goto_0
.end method

.method private isEnableSCSServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 2921
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v0

    .line 2922
    .local v0, "state":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->LOGGED_OUT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2923
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WS] SCS Service State is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2924
    const/4 v1, 0x1

    .line 2927
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isError(Ljava/lang/String;)Z
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1265
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMSC] SAP Error reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const-string v0, "SPP_CLOSE_FAILED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SPP_CONNECT_FAILED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SPP_CREATION_FAILED"

    .line 1268
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SPP_READ_WRITE_FAILED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SPP_ALREADY_CONNECTED"

    .line 1269
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DEVICE_NOT_PAIRED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SAP_FRAMEWORK_INCOMPATIBLE"

    .line 1270
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ERROR_FATAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ANOTHER_TRANSPORT_IS_ACTIVE"

    .line 1271
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1273
    :cond_0
    const/4 v0, 0x1

    .line 1276
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notify2Subscriber(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2570
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v1, "Notify2Subscriber for service connection event..."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->publishEvent(ILandroid/os/Bundle;)V

    .line 2572
    return-void
.end method

.method private notifyEvent2ProfileHandlers(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "wDevice"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1250
    const-string v2, "RECONNECTION_STRING_STEP"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1251
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "MSG_SAACCESSORY_ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1252
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v3, "[CMSC] Error Event is not notified to service handlers"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    :cond_0
    :goto_0
    return-void

    .line 1257
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v0

    .line 1258
    .local v0, "handler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    if-eqz v0, :cond_0

    .line 1259
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->onConnectionEventReceived(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)Z

    goto :goto_0
.end method

.method private notifyScsConnectionEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .param p1, "deviceBundle"    # Landroid/os/Bundle;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 2932
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/os/Bundle;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v2

    .line 2933
    .local v2, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-nez v2, :cond_0

    .line 2969
    :goto_0
    return-void

    .line 2936
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2937
    .local v1, "resBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2938
    const-string v3, "CM_DEVICE_ADDRESS"

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2939
    const-string v3, "CM_DEVICE_NAME"

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    const-string v3, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    const-string v3, "BUNDLE_CMKEY_STRING_SERVICESTATE"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2944
    const/4 v0, 0x0

    .line 2946
    .local v0, "isRequestedDevice":Z
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    .line 2947
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isRequestedDeviceList(Ljava/lang/String;)Z

    move-result v0

    .line 2949
    if-nez v0, :cond_1

    .line 2950
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMSC] this device is not requested through HM..skip CM Service : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2952
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2950
    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2956
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMSC] Connection scs event notify : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2957
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2956
    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2958
    const/16 v3, 0x215

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->notify2Subscriber(ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private requestFeatureExchange(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 2982
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2983
    .local v1, "reqBundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v0

    .line 2984
    .local v0, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2986
    const-string v2, "BUNDLE_BOOLEAN_FEATURE_EXCHANGE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2987
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 2989
    return-void
.end method

.method private requestFindPeer(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 2973
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2974
    .local v1, "reqBundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v0

    .line 2975
    .local v0, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2977
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    const/16 v3, 0x21

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 2978
    return-void
.end method

.method private retryFindPeer(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 8
    .param p1, "wDevice"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 3272
    const-wide/16 v2, 0x0

    .line 3273
    .local v2, "delay":J
    const/4 v0, 0x0

    .line 3275
    .local v0, "counter":I
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mRetryFindPeerCounterMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3276
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mRetryFindPeerCounterMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3279
    :cond_0
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FindPeerTask counter value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3281
    const/4 v5, 0x3

    if-gt v0, v5, :cond_2

    .line 3282
    const v5, 0xea60

    const/4 v6, 0x1

    shl-int/2addr v6, v0

    mul-int/2addr v5, v6

    int-to-long v2, v5

    .line 3283
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mRetryFindPeerCounterMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3288
    :goto_0
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " retryFindPeer, postDelay findPeer for SCS after delay "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3290
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSFindPeerRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 3292
    new-instance v4, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    .line 3293
    .local v4, "temp":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSFindPeerRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3296
    .end local v4    # "temp":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;
    :cond_1
    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " retryFindPeer, postDelay findPeer for SCS after delay "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3298
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSFindPeerRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;

    .line 3299
    .local v1, "task":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSFindPeerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3300
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSFindPeerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3301
    return-void

    .line 3285
    .end local v1    # "task":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;
    :cond_2
    const-wide/32 v2, 0xea600

    goto :goto_0
.end method

.method private setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)I
    .locals 14
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "targetAppId"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "cc"    # Ljava/lang/String;
    .param p6, "email"    # Ljava/lang/String;
    .param p7, "appSecret"    # Ljava/lang/String;
    .param p8, "dataNetwork"    # Z
    .param p9, "mcc"    # I
    .param p10, "mnc"    # I
    .param p11, "tokenSecret"    # Ljava/lang/String;

    .prologue
    .line 3003
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v12

    .line 3005
    .local v12, "handler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    if-nez v12, :cond_0

    .line 3006
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v2, "[CMSCS]scs profile handler is not exist!"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3008
    const/4 v13, -0x1

    .line 3022
    :goto_0
    return v13

    .line 3011
    :cond_0
    instance-of v1, v12, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    if-nez v1, :cond_1

    .line 3012
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v2, "[CMSCS]not instance of scs profile handler!"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3014
    const/4 v13, -0x1

    goto :goto_0

    :cond_1
    move-object v0, v12

    .line 3017
    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    .local v0, "scsHandler":Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;
    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    .line 3019
    invoke-virtual/range {v0 .. v11}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)I

    move-result v13

    .line 3022
    .local v13, "res":I
    goto :goto_0
.end method

.method private setAutoConnectionDeviceList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x18

    .line 2500
    if-nez p1, :cond_1

    .line 2501
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v4, "[CMAC] setAutoConnectionDeviceList - address is null.."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2566
    :cond_0
    :goto_0
    return-void

    .line 2505
    :cond_1
    const-string v3, "CONNECTED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2508
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCompanyName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2510
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v4, "[CMAC] putLastConnectedDeviceAddr & putDeviceMacForACDeviceSet"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2519
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putLastConnectedDeviceAddr(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2520
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WS-SP] FAIL: putLastConnectedDeviceAddr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2525
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isContainDeviceSet(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2526
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v4, "[CMAC] putDeviceMacForACDeviceSet.."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putDeviceMacForACDeviceSet(Ljava/lang/String;)V

    .line 2535
    :cond_3
    :goto_1
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v4, "[CMAC] putLastConnectedDeviceAddr bleAcs when both Connected .."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    .line 2537
    invoke-virtual {v3, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putLastConnectedDeviceAddr_bleAcs(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2538
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WS-SP] FAIL: putLastConnectedDeviceAddr_bleAcs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2543
    :cond_4
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v4, "[CMAC] SPP & HFP is connected..."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 2545
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->removeAutoConnecter(Landroid/bluetooth/BluetoothDevice;)V

    .line 2549
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isSppRetryRecoveried()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2550
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2551
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 2552
    .local v2, "itemBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2553
    const-string v3, "RECONNECTION_STRING_STEP"

    const-string v4, "INIT_RECOVERY_RETRY_CNT_SPP"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 2557
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "itemBundle":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isScsRetryRecoveried()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2558
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2559
    .restart local v0    # "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 2560
    .restart local v2    # "itemBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2561
    const-string v3, "RECONNECTION_STRING_STEP"

    const-string v4, "INIT_RECOVERY_RETRY_CNT_SCS"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2529
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "itemBundle":Landroid/os/Bundle;
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->initDeviceSetForAC(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private setConnectionReqeustedDevice(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 3
    .param p1, "wDevice"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 477
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v1, "[CMSC] set Connection Request Device from HM "

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    .line 480
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isRequestedDeviceList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 482
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    .line 483
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putRequestedDeviceList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMSC] FAIL: put Requested Device List: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 485
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :goto_0
    return-void

    .line 488
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMSC] SUCCESS: putRequestedDeviceList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 489
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v1, "[CMSC] Already set !! "

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setManualRssi(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "min_rssi"    # I
    .param p3, "mid_rssi"    # I

    .prologue
    .line 2449
    move v5, p2

    .line 2450
    .local v5, "lowRssi":I
    move/from16 v7, p3

    .line 2451
    .local v7, "midRssi":I
    const/4 v3, -0x1

    .line 2455
    .local v3, "highRssi":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v10

    invoke-interface {v10}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getModelHighRssi()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 2463
    :goto_0
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 2464
    .local v8, "rn":Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/Random;->setSeed(J)V

    .line 2465
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/lit8 v9, v10, -0x1

    .line 2467
    .local v9, "rv":I
    const/4 v1, 0x0

    .line 2468
    .local v1, "hasValue":Z
    const/4 v4, -0x1

    .line 2469
    .local v4, "low":I
    const/4 v6, -0x1

    .line 2470
    .local v6, "mid":I
    const/4 v2, -0x1

    .line 2472
    .local v2, "high":I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_0

    const/16 v10, 0x7f

    if-gt v5, v10, :cond_0

    const/4 v10, -0x1

    if-eq v7, v10, :cond_0

    const/16 v10, 0x7f

    if-gt v7, v10, :cond_0

    const/4 v10, -0x1

    if-eq v3, v10, :cond_0

    const/16 v10, 0x7f

    if-le v3, v10, :cond_1

    .line 2474
    :cond_0
    const/4 v1, 0x0

    .line 2475
    add-int/lit8 v4, v9, -0x46

    .line 2476
    const/16 v6, -0x3f

    .line 2477
    const/16 v2, 0x7f

    .line 2485
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "monitorRawRssi("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V

    .line 2488
    :try_start_1
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v10

    invoke-interface {v10, p1, v4, v6, v2}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->monitorRawRssi(Landroid/bluetooth/BluetoothDevice;III)Z

    .line 2489
    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[jdub] monitorRawRssi("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "), from device : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 2496
    :goto_2
    return-void

    .line 2457
    .end local v1    # "hasValue":Z
    .end local v2    # "high":I
    .end local v4    # "low":I
    .end local v6    # "mid":I
    .end local v8    # "rn":Ljava/util/Random;
    .end local v9    # "rv":I
    :catch_0
    move-exception v0

    .line 2458
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[jdub] NoSuchMethodError: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2459
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 2460
    .local v0, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[jdub] Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2479
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "hasValue":Z
    .restart local v2    # "high":I
    .restart local v4    # "low":I
    .restart local v6    # "mid":I
    .restart local v8    # "rn":Ljava/util/Random;
    .restart local v9    # "rv":I
    :cond_1
    const/4 v1, 0x1

    .line 2480
    add-int v4, v5, v9

    .line 2481
    move v6, v7

    .line 2482
    move v2, v3

    goto/16 :goto_1

    .line 2490
    :catch_2
    move-exception v0

    .line 2491
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[jdub] NoSuchMethodError: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2492
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_3
    move-exception v0

    .line 2493
    .local v0, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[jdub] Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private setRssi(Landroid/bluetooth/BluetoothDevice;)V
    .locals 19
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2282
    const/4 v11, 0x0

    .line 2283
    .local v11, "offset_low":I
    const/4 v12, 0x0

    .line 2284
    .local v12, "offset_mid":I
    const/4 v10, 0x0

    .line 2287
    .local v10, "offset_high":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getRssiOffset(Ljava/lang/String;)[I

    move-result-object v15

    .line 2289
    .local v15, "wearableRssi":[I
    if-eqz v15, :cond_0

    .line 2290
    const/16 v16, 0x0

    aget v11, v15, v16

    .line 2291
    const/16 v16, 0x1

    aget v12, v15, v16

    .line 2292
    const/16 v16, 0x2

    aget v10, v15, v16

    .line 2294
    sget-object v16, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[jdub] setRssi, rssi offset: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget v18, v15, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    aget v18, v15, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x2

    aget v18, v15, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    :cond_0
    const/4 v7, -0x1

    .line 2299
    .local v7, "lowRssi":I
    const/4 v9, -0x1

    .line 2300
    .local v9, "midRssi":I
    const/4 v5, -0x1

    .line 2303
    .local v5, "highRssi":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getModelLowRssi()I

    move-result v7

    .line 2304
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getModelMidRssi()I

    move-result v9

    .line 2305
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getModelHighRssi()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 2315
    :goto_0
    new-instance v13, Ljava/util/Random;

    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    .line 2316
    .local v13, "rn":Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/util/Random;->setSeed(J)V

    .line 2317
    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v16

    add-int/lit8 v14, v16, -0x1

    .line 2319
    .local v14, "rv":I
    const/4 v3, 0x0

    .line 2320
    .local v3, "hasValue":Z
    const/4 v6, -0x1

    .line 2321
    .local v6, "low":I
    const/4 v8, -0x1

    .line 2322
    .local v8, "mid":I
    const/4 v4, -0x1

    .line 2324
    .local v4, "high":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v7, v0, :cond_1

    const/16 v16, 0x7f

    move/from16 v0, v16

    if-gt v7, v0, :cond_1

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v9, v0, :cond_1

    const/16 v16, 0x7f

    move/from16 v0, v16

    if-gt v9, v0, :cond_1

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v5, v0, :cond_1

    const/16 v16, 0x7f

    move/from16 v0, v16

    if-le v5, v0, :cond_3

    .line 2326
    :cond_1
    const/4 v3, 0x0

    .line 2327
    add-int/lit8 v6, v14, -0x46

    .line 2328
    const/16 v8, -0x3f

    .line 2329
    const/16 v4, 0x7f

    .line 2339
    :goto_1
    if-eqz v15, :cond_2

    .line 2340
    add-int/2addr v6, v11

    .line 2341
    add-int/2addr v8, v12

    .line 2342
    add-int/2addr v4, v10

    .line 2347
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v6, v8, v4}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->monitorRawRssi(Landroid/bluetooth/BluetoothDevice;III)Z

    .line 2348
    sget-object v16, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[jdub] monitorRawRssi("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "), from device : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 2354
    :goto_2
    return-void

    .line 2309
    .end local v3    # "hasValue":Z
    .end local v4    # "high":I
    .end local v6    # "low":I
    .end local v8    # "mid":I
    .end local v13    # "rn":Ljava/util/Random;
    .end local v14    # "rv":I
    :catch_0
    move-exception v2

    .line 2310
    .local v2, "e":Ljava/lang/NoSuchMethodError;
    sget-object v16, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[jdub] NoSuchMethodError: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2311
    .end local v2    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v2

    .line 2312
    .local v2, "e":Ljava/lang/Exception;
    sget-object v16, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[jdub] Exception: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2331
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "hasValue":Z
    .restart local v4    # "high":I
    .restart local v6    # "low":I
    .restart local v8    # "mid":I
    .restart local v13    # "rn":Ljava/util/Random;
    .restart local v14    # "rv":I
    :cond_3
    const/4 v3, 0x1

    .line 2332
    add-int v6, v7, v14

    .line 2333
    move v8, v9

    .line 2334
    move v4, v5

    goto/16 :goto_1

    .line 2349
    :catch_2
    move-exception v2

    .line 2350
    .local v2, "e":Ljava/lang/NoSuchMethodError;
    sget-object v16, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[jdub] NoSuchMethodError: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2351
    .end local v2    # "e":Ljava/lang/NoSuchMethodError;
    :catch_3
    move-exception v2

    .line 2352
    .local v2, "e":Ljava/lang/Exception;
    sget-object v16, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[jdub] Exception: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private setWaitingConnectionInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WS] set Waiting Connection Info ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :goto_0
    monitor-exit v1

    .line 317
    return-void

    .line 312
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WS] update Waiting Connection Info ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateWearableState(ILandroid/os/Bundle;)V
    .locals 10
    .param p1, "event"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2576
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v9, "update WearableState..."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    if-nez p2, :cond_0

    .line 2602
    :goto_0
    return-void

    .line 2581
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    .line 2584
    .local v7, "wearableState":Lcom/samsung/android/hostmanager/connectionmanager/WearableState;
    const-string v8, "BUNDLE_CMKEY_STRING_SERVICESTATE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2585
    .local v5, "strState":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->convertStringToServiceState(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v3

    .line 2588
    .local v3, "state":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    const-string v8, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2589
    .local v4, "strService":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->convertStringToServiceType(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-result-object v2

    .line 2592
    .local v2, "service":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    const-string v8, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 2594
    .local v1, "deviceBundle":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Landroid/os/Bundle;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2596
    .local v0, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v6

    .line 2599
    .local v6, "wearableDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual {v7, v6, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 2601
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->showState()V

    goto :goto_0
.end method


# virtual methods
.method public DisconnectAllForLastConnectedDevices()V
    .locals 9

    .prologue
    .line 2839
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v7, "[WS] disconnect ALL for last connected device..."

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2841
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    .line 2842
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr()Ljava/util/Set;

    move-result-object v2

    .line 2843
    .local v2, "addrSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2845
    .local v0, "AddrIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 2846
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2847
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 2848
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 2849
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v3, :cond_0

    .line 2850
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_0

    .line 2852
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WS] disconnect ALL for last connected device: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2854
    .local v4, "discBundle":Landroid/os/Bundle;
    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v5

    .line 2855
    .local v5, "itemBundle":Landroid/os/Bundle;
    const-string v6, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2856
    const-string v6, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2857
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    const/16 v7, 0x16

    invoke-virtual {v6, v7, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 2862
    .end local v1    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "discBundle":Landroid/os/Bundle;
    .end local v5    # "itemBundle":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public SendAutoLockServiceIntent(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Z)V
    .locals 26
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "autoLockService"    # Z

    .prologue
    .line 2358
    const/16 v16, 0x0

    .line 2359
    .local v16, "offset_low":I
    const/16 v17, 0x0

    .line 2360
    .local v17, "offset_mid":I
    const/4 v15, 0x0

    .line 2362
    .local v15, "offset_high":I
    const/4 v9, 0x3

    .line 2363
    .local v9, "in_margin":I
    const/16 v18, 0x0

    .line 2364
    .local v18, "out_margin":I
    const/4 v10, 0x1

    .line 2366
    .local v10, "isValid":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getRssiOffset(Ljava/lang/String;)[I

    move-result-object v22

    .line 2368
    .local v22, "wearableRssi":[I
    if-eqz v22, :cond_0

    .line 2369
    const/16 v23, 0x0

    aget v16, v22, v23

    .line 2370
    const/16 v23, 0x1

    aget v17, v22, v23

    .line 2371
    const/16 v23, 0x2

    aget v15, v22, v23

    .line 2372
    sget-object v23, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[jdub] SendAutoLockServiceIntent, rssi offset: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget v25, v22, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x1

    aget v25, v22, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x2

    aget v25, v22, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    :cond_0
    const/4 v12, -0x1

    .line 2376
    .local v12, "lowRssi":I
    const/4 v14, -0x1

    .line 2377
    .local v14, "midRssi":I
    const/4 v8, -0x1

    .line 2380
    .local v8, "highRssi":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getModelLowRssi()I

    move-result v12

    .line 2381
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getModelMidRssi()I

    move-result v14

    .line 2382
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getModelHighRssi()I

    move-result v8

    .line 2384
    sget-object v23, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[jdub] read rssi value: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2392
    :goto_0
    new-instance v19, Ljava/util/Random;

    invoke-direct/range {v19 .. v19}, Ljava/util/Random;-><init>()V

    .line 2393
    .local v19, "rn":Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 2394
    const/16 v23, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v23

    add-int/lit8 v20, v23, -0x1

    .line 2396
    .local v20, "rv":I
    const/4 v6, 0x0

    .line 2397
    .local v6, "hasValue":Z
    const/4 v11, -0x1

    .line 2398
    .local v11, "low":I
    const/4 v13, -0x1

    .line 2399
    .local v13, "mid":I
    const/4 v7, -0x1

    .line 2401
    .local v7, "high":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v12, v0, :cond_1

    const/16 v23, 0x7f

    move/from16 v0, v23

    if-gt v12, v0, :cond_1

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v14, v0, :cond_1

    const/16 v23, 0x7f

    move/from16 v0, v23

    if-gt v14, v0, :cond_1

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v8, v0, :cond_1

    const/16 v23, 0x7f

    move/from16 v0, v23

    if-le v8, v0, :cond_3

    .line 2403
    :cond_1
    const/4 v6, 0x0

    .line 2404
    add-int/lit8 v11, v20, -0x46

    .line 2405
    const/16 v13, -0x3f

    .line 2406
    const/16 v7, 0x7f

    .line 2414
    :goto_1
    if-eqz v22, :cond_2

    .line 2415
    add-int v11, v11, v16

    .line 2416
    add-int v13, v13, v17

    .line 2417
    add-int/2addr v7, v15

    .line 2420
    :cond_2
    new-instance v21, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getActionAutoLockService()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2421
    .local v21, "sendIntent":Landroid/content/Intent;
    const-string v23, "android.bluetooth.device.extra.DEVICE"

    .line 2422
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v24

    .line 2421
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2423
    const-string v5, "com.sec.android.service.connectionmanager.extra.AUTO_LOCK_SERVICE"

    .line 2424
    .local v5, "flag":Ljava/lang/String;
    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2426
    const-string v23, "extra.AUTO_LOCK_SERVICE_VALID"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2428
    const-string v23, "extra.AUTO_LOCK_SERVICE_IN_CRITERIA"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2431
    const-string v23, "extra.AUTO_LOCK_SERVICE_OUT_CRITERIA"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2434
    const-string v23, "extra.AUTO_LOCK_SERVICE_IN_MARGIN"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2437
    const-string v23, "extra.AUTO_LOCK_SERVICE_OUT_MARGIN"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2439
    sget-object v23, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[jdub] SendAutoLockServiceIntent, new extra Values in order (1 bolean & 4 int): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "com.sec.android.permission.SMART_UNLOCK"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2444
    return-void

    .line 2386
    .end local v5    # "flag":Ljava/lang/String;
    .end local v6    # "hasValue":Z
    .end local v7    # "high":I
    .end local v11    # "low":I
    .end local v13    # "mid":I
    .end local v19    # "rn":Ljava/util/Random;
    .end local v20    # "rv":I
    .end local v21    # "sendIntent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 2387
    .local v4, "e":Ljava/lang/NoSuchMethodError;
    sget-object v23, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[jdub] NoSuchMethodError: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v4}, Ljava/lang/NoSuchMethodError;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2388
    .end local v4    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v4

    .line 2389
    .local v4, "e":Ljava/lang/Exception;
    sget-object v23, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[jdub] Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2408
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "hasValue":Z
    .restart local v7    # "high":I
    .restart local v11    # "low":I
    .restart local v13    # "mid":I
    .restart local v19    # "rn":Ljava/util/Random;
    .restart local v20    # "rv":I
    :cond_3
    const/4 v6, 0x1

    .line 2409
    add-int v11, v12, v20

    .line 2410
    move v13, v14

    .line 2411
    move v7, v8

    goto/16 :goto_1
.end method

.method protected clearRetryFindPeerTask(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 3
    .param p1, "wDevice"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 3261
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mRetryFindPeerCounterMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3262
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mRetryFindPeerCounterMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3264
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSFindPeerRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3266
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSFindPeerRetryTaskMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;

    .line 3267
    .local v0, "task":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSFindPeerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3269
    .end local v0    # "task":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;
    :cond_1
    return-void
.end method

.method public clearSCSWaitingConnectionInfo()V
    .locals 2

    .prologue
    .line 415
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSWaitingConnectionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 417
    monitor-exit v1

    .line 418
    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearSPPSWaitingConnectionInfo()V
    .locals 2

    .prologue
    .line 462
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSppWaitingConnectionInfoMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSppWaitingConnectionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 464
    monitor-exit v1

    .line 465
    return-void

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearWaitingConnectionInfo()V
    .locals 2

    .prologue
    .line 369
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 371
    monitor-exit v1

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected createWorker()Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;
    .locals 1

    .prologue
    .line 504
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;)V

    return-object v0
.end method

.method public getNotifyEventTask()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;
    .locals 1

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mNotifyEventTask:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    if-nez v0, :cond_0

    .line 2035
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mNotifyEventTask:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    .line 2038
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mNotifyEventTask:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    return-object v0
.end method

.method public getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1220
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 1223
    .local v1, "serviceType":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1228
    :goto_0
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$2;->$SwitchMap$com$samsung$android$hostmanager$connectionmanager$Event$ServiceType:[I

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1239
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 1224
    :catch_0
    move-exception v0

    .line 1225
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Catched *"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1236
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mProfileHandlers:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    goto :goto_1

    .line 1228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getSCSWaitingConnectionInfo()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 422
    :try_start_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v2, "[WS] get SCS Waiting Connection Info"

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSWaitingConnectionInfoMap:Ljava/util/HashMap;

    monitor-exit v1

    return-object v0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSPPWaitingConnectionInfo()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSppWaitingConnectionInfoMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 469
    :try_start_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v2, "[WS] get SPP Waiting Connection Info"

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSppWaitingConnectionInfoMap:Ljava/util/HashMap;

    monitor-exit v1

    return-object v0

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWaitingConnectionInfo()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    :try_start_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v2, "[WS] get Waiting Connection Info"

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMap:Ljava/util/HashMap;

    monitor-exit v1

    return-object v0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initProfileHandler()V
    .locals 8

    .prologue
    .line 250
    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    .line 251
    .local v1, "hfpHandler":Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;
    new-instance v2, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    .line 252
    .local v2, "panHandler":Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;
    new-instance v4, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    .line 253
    .local v4, "sppHandler":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/GATTHandler;

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/GATTHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    .line 254
    .local v0, "gattHandler":Lcom/samsung/android/hostmanager/connectionmanager/GATTHandler;
    new-instance v3, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    .line 255
    .local v3, "scsHandler":Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;
    new-instance v5, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    .line 258
    .local v5, "wifiP2pHandler":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->initialize()V

    .line 259
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->initialize()V

    .line 261
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->initialize()V

    .line 262
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->initialize()V

    .line 264
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/GATTHandler;->initialize()V

    .line 265
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->initialize()V

    .line 268
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mProfileHandlers:Ljava/util/HashMap;

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mProfileHandlers:Ljava/util/HashMap;

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mProfileHandlers:Ljava/util/HashMap;

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mProfileHandlers:Ljava/util/HashMap;

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->GATT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mProfileHandlers:Ljava/util/HashMap;

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mProfileHandlers:Ljava/util/HashMap;

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    return-void
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v1, "[jdub] initialize"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->initProfileHandler()V

    .line 111
    return-void
.end method

.method public isDisconnectCancelResponce(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3313
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mDisconnectCancelResponse:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3321
    :goto_0
    return v0

    .line 3316
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mDisconnectCancelResponse:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3317
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v2, "[CMWS] mDisconnectCancelResponse.get is null "

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3321
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mDisconnectCancelResponse:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isHFPRetryperformed(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2705
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mHFPRetryPerformed:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2713
    :goto_0
    return v0

    .line 2708
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mHFPRetryPerformed:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2709
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v2, "[CMWS] mHFPRetryPerformed.get is null "

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2713
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mHFPRetryPerformed:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public onReceivedEvent(ILandroid/os/Bundle;Landroid/content/Intent;)V
    .locals 36
    .param p1, "event"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1282
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "onReceivedEvent()"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->updateWearableState(ILandroid/os/Bundle;)V

    .line 1289
    const/4 v8, 0x0

    .line 1290
    .local v8, "bDevice":Landroid/bluetooth/BluetoothDevice;
    const/4 v10, 0x0

    .line 1292
    .local v10, "deviceBundle":Landroid/os/Bundle;
    if-eqz p2, :cond_0

    .line 1293
    const-string v32, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    .end local v10    # "deviceBundle":Landroid/os/Bundle;
    check-cast v10, Landroid/os/Bundle;

    .line 1295
    .restart local v10    # "deviceBundle":Landroid/os/Bundle;
    :cond_0
    if-eqz v10, :cond_1

    .line 1296
    invoke-static {v10}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Landroid/os/Bundle;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    .line 1298
    :cond_1
    if-eqz v8, :cond_2

    .line 1300
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    .line 1301
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    .line 1300
    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isRequestedDeviceList(Ljava/lang/String;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_7

    .line 1304
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->notify2Subscriber(ILandroid/os/Bundle;)V

    .line 1316
    :cond_2
    const/16 v32, 0x215

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_1d

    .line 1318
    if-eqz v8, :cond_1d

    if-eqz p2, :cond_1d

    .line 1320
    const-string v32, "BUNDLE_CMKEY_STRING_SERVICESTATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1321
    .local v26, "state":Ljava/lang/String;
    const-string v32, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1323
    .local v25, "service":Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/os/Bundle;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v29

    .line 1329
    .local v29, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3

    .line 1331
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    const/16 v33, 0x0

    .line 1333
    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1339
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->notifyEvent2ProfileHandlers(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Landroid/os/Bundle;)V

    .line 1348
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v32

    const-string v33, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_b

    .line 1350
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 1352
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isFindPeerComplete(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_4

    .line 1353
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMSC] Request Find Peer after SCS connection."

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v32

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->setAddress(Ljava/lang/String;)V

    .line 1355
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->requestFindPeer(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    .line 1412
    :cond_4
    :goto_0
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 1413
    const/16 v32, 0x1

    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_d

    .line 1415
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->scsConnectionErrorHandler(Landroid/os/Bundle;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v32

    if-nez v32, :cond_20

    .line 1419
    const/16 v32, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v33

    .line 1420
    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v34

    .line 1419
    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isRemoteflagEnable(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_d

    .line 1421
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isAutoConnectionRunning(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v32

    if-nez v32, :cond_5

    .line 1423
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] AutoConnection not running, trigger BT Connection"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->connectAllBTProfile(Landroid/bluetooth/BluetoothDevice;)V

    .line 1435
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getACDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v11

    .line 1436
    .local v11, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v11, :cond_c

    .line 1437
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] deviceSet is null"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    .end local v11    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v25    # "service":Ljava/lang/String;
    .end local v26    # "state":Ljava/lang/String;
    .end local v29    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_6
    :goto_1
    return-void

    .line 1307
    :cond_7
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "(Unknown device) Not notified to subscriber"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1357
    .restart local v25    # "service":Ljava/lang/String;
    .restart local v26    # "state":Ljava/lang/String;
    .restart local v29    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_8
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 1361
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setFindPeerComplete(Ljava/lang/String;Z)V

    .line 1363
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMSC] SCS DISCONNECTED, Reset FindPeer Task "

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->clearRetryFindPeerTask(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto/16 :goto_0

    .line 1366
    :cond_9
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->LOGGED_OUT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 1367
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v34, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->LOGGED_OUT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 1370
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMSC] SCS LOGGED_OUT, Remove FindPeer task "

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->clearRetryFindPeerTask(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto/16 :goto_0

    .line 1373
    :cond_a
    const-string v32, "LOGGED_IN"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 1375
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v34, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 1377
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isFindPeerComplete(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_4

    .line 1378
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMSC] Request Find Peer after SCS connection."

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->retryFindPeer(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto/16 :goto_0

    .line 1388
    :cond_b
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMSC] Notify event for BT connection."

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mNotifyEventTask:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v10, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->setEventData(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mDelayedNotifyHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mNotifyEventTask:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1441
    .restart local v11    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_c
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v11, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRemoteFlag(Z)V

    .line 1442
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->updateACdeviceSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1454
    .end local v11    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_d
    :goto_2
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_f

    .line 1456
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_f

    .line 1459
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMSC][jdub] SPP connected. set address to DataExchanger"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getRequestedDeviceList()Ljava/util/Set;

    move-result-object v4

    .line 1464
    .local v4, "HmDeviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    .line 1466
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v32

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->setAddress(Ljava/lang/String;)V

    .line 1470
    :cond_e
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMSC][jdub] write address in Settings"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    sget v32, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v33, 0x17

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_21

    .line 1472
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v32

    .line 1473
    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "samsung_gear"

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v34

    .line 1472
    invoke-static/range {v32 .. v34}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    .end local v4    # "HmDeviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    :goto_3
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 1486
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_10

    .line 1488
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[jdub] EVENT_SERVICE_STATE_CHANGED, setFindPeerComplete: false"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    .line 1491
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    .line 1490
    invoke-virtual/range {v32 .. v34}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setFindPeerComplete(Ljava/lang/String;Z)V

    .line 1498
    :cond_10
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 1500
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_11

    .line 1502
    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v6

    .line 1503
    .local v6, "WDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v5

    .line 1504
    .local v5, "SCSState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_11

    .line 1506
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[jdub] EVENT_SERVICE_STATE_CHANGED, SPP Connected. So, SCS state must be Disconnected"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v34, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 1510
    const/16 v32, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isRemoteflagEnable(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_11

    .line 1512
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[jdub] EVENT_SERVICE_STATE_CHANGED, SPP Connected. So, Set remote flag to false"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->setRemoteflag(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Z)V

    .line 1526
    .end local v5    # "SCSState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    .end local v6    # "WDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_11
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_13

    .line 1528
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_13

    .line 1530
    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v6

    .line 1531
    .restart local v6    # "WDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v5

    .line 1532
    .restart local v5    # "SCSState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_12

    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_13

    .line 1534
    :cond_12
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[jdub] EVENT_SERVICE_STATE_CHANGED, SPP Disconnected. So, SCS state can not be in unknown or Disconnecting"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v34, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 1538
    const/16 v32, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isRemoteflagEnable(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_13

    .line 1540
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[jdub] EVENT_SERVICE_STATE_CHANGED, SPP Connected. So, Set remote flag to false"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->setRemoteflag(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Z)V

    .line 1553
    .end local v5    # "SCSState":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    .end local v6    # "WDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_13
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_14

    .line 1555
    const-string v32, "HFP"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v14

    .line 1556
    .local v14, "hfpHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    if-eqz v14, :cond_14

    .line 1568
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_22

    check-cast v14, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    .line 1569
    .end local v14    # "hfpHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->isHfpConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_22

    .line 1570
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "Both SPP and HFP are connected"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 1574
    .local v13, "hfpBundle":Landroid/os/Bundle;
    const-string v32, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1576
    const-string v32, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 1577
    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v33

    .line 1576
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    const-string v32, "BUNDLE_CMKEY_STRING_SERVICESTATE"

    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 1579
    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v33

    .line 1578
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->updateWearableState(ILandroid/os/Bundle;)V

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mNotifyEventTask:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v10, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->setEventData(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mDelayedNotifyHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mNotifyEventTask:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1588
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMSC] Request Connection after SERVICE CONNECTED"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->requestWaitingConnection(Landroid/os/Bundle;)V

    .line 1604
    .end local v13    # "hfpBundle":Landroid/os/Bundle;
    :cond_14
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    .line 1605
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    .line 1604
    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isLastConnectedDevice_bleAcs(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_17

    .line 1607
    if-eqz v25, :cond_17

    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_17

    .line 1610
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_17

    .line 1611
    if-eqz v29, :cond_17

    .line 1612
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v32

    if-nez v32, :cond_23

    .line 1614
    const/16 v23, 0x0

    .line 1617
    .local v23, "remoteFlag":Z
    const/16 v32, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isRunningBleAutoConnectService()Z

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_16

    .line 1619
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMSC] isRunningBleAutoConnectService is true, Request SCS Disconnect"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->isEnableSCSServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_16

    .line 1623
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getACDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v11

    .line 1625
    .restart local v11    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-eqz v11, :cond_15

    .line 1626
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] deviceSet is not null, setting remote flag to true"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v11, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRemoteFlag(Z)V

    .line 1628
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->updateACdeviceSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1629
    const/16 v23, 0x1

    .line 1632
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->disconnectSCS(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    .line 1636
    .end local v11    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_16
    if-nez v23, :cond_17

    .line 1638
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] remote flag is false, Connect SPP "

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    new-instance v27, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SppConnectTask;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SppConnectTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Landroid/bluetooth/BluetoothDevice;)V

    .line 1640
    .local v27, "task":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SppConnectTask;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSPPConnectHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1653
    .end local v23    # "remoteFlag":Z
    .end local v27    # "task":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SppConnectTask;
    :cond_17
    :goto_5
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_18

    .line 1655
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_18

    .line 1656
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] HFP Connected, So Set flag to false"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->setHFPRetryPerformed(Ljava/lang/String;Z)V

    .line 1667
    :cond_18
    if-eqz v25, :cond_19

    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_19

    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 1668
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_19

    .line 1670
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMSC] HFP Disconnected"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    const-string v32, "android.bluetooth.profile.extra.STATE"

    const/high16 v33, -0x80000000

    .line 1675
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    if-nez v32, :cond_28

    .line 1679
    const-string v32, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/high16 v33, -0x80000000

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_24

    .line 1682
    new-instance v27, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SppDisconnectTask;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SppDisconnectTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Landroid/bluetooth/BluetoothDevice;)V

    .line 1683
    .local v27, "task":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SppDisconnectTask;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSPPDisconnectHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    const-wide/16 v34, 0x7d0

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1684
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->setHFPRetryPerformed(Ljava/lang/String;Z)V

    .line 1729
    .end local v27    # "task":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SppDisconnectTask;
    :cond_19
    :goto_6
    if-eqz v25, :cond_1b

    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1b

    .line 1730
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "SPP Event"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1b

    .line 1733
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v32

    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_1b

    .line 1736
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "HFP connected - Schedule SPP connection"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSPPConnRetryTask:Ljava/util/HashMap;

    move-object/from16 v32, v0

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    if-nez v32, :cond_1a

    .line 1740
    new-instance v28, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SPPConnectionRetryTask;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SPPConnectionRetryTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    .line 1741
    .local v28, "temp":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SPPConnectionRetryTask;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSPPConnRetryTask:Ljava/util/HashMap;

    move-object/from16 v32, v0

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1744
    .end local v28    # "temp":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SPPConnectionRetryTask;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSPPConnRetryTask:Ljava/util/HashMap;

    move-object/from16 v32, v0

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SPPConnectionRetryTask;

    .line 1745
    .local v27, "task":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SPPConnectionRetryTask;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSPPReconnectHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSPPReconnectHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    const-wide/16 v34, 0x2710

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1754
    .end local v27    # "task":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SPPConnectionRetryTask;
    :cond_1b
    if-eqz v25, :cond_1c

    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1c

    .line 1755
    const-string v32, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/16 v33, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1c

    const-string v32, "android.bluetooth.profile.extra.STATE"

    const/16 v33, 0x2

    .line 1757
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    if-nez v32, :cond_1c

    .line 1760
    if-eqz v8, :cond_1c

    .line 1761
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    .line 1762
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getACDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v11

    .line 1763
    .restart local v11    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-eqz v11, :cond_29

    .line 1765
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[CMAC] Received HFP State (connecting->disconnected), AC Flag is "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 1767
    invoke-virtual {v11}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnectionFlag()Z

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1765
    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    const/16 v32, 0x1

    invoke-virtual {v11}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->getAutoConnectionFlag()Z

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1c

    .line 1770
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v11, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setAutoConnectionFlag(Z)V

    .line 1771
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    .line 1772
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    .line 1771
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->updateACdeviceSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    .line 1774
    const-string v32, "AUTO_CONNECTION_STRING_STEP"

    const-string v33, "HFP_CONNECTION_FAIL"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    const/16 v33, 0x17

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 1791
    .end local v11    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_1c
    :goto_7
    const-string v32, "RECONNECTION_STRING_STEP"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1793
    .local v22, "recovery":Ljava/lang/String;
    if-eqz v22, :cond_1d

    .line 1795
    const-string v32, "MSG_SAACCESSORY_DISCONNECT"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2a

    .line 1797
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[RECOVERY] Request Reconnect(MSG_SAACCESSORY_DISCONNECT)..."

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    const/16 v33, 0x18

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 1825
    .end local v22    # "recovery":Ljava/lang/String;
    .end local v25    # "service":Ljava/lang/String;
    .end local v26    # "state":Ljava/lang/String;
    .end local v29    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_1d
    :goto_8
    const/16 v32, 0x226

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_1e

    .line 1826
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCompanyName()Ljava/lang/String;

    move-result-object v32

    sget-object v33, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 1828
    .local v15, "isOurProduct":Z
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[jdub] isOurProduct: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    if-eqz v15, :cond_1e

    .line 1830
    if-eqz v8, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    .line 1831
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    .line 1830
    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isRequestedDeviceList(Ljava/lang/String;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1e

    .line 1835
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[jdub] send Weak RSSI alert"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    :try_start_0
    new-instance v24, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getActionOutOfRangeAlert()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1839
    .local v24, "sendIntent":Landroid/content/Intent;
    const-string v32, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1840
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v32

    const-string v33, "com.sec.android.permission.SMART_UNLOCK"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1848
    .end local v24    # "sendIntent":Landroid/content/Intent;
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->setRssi(Landroid/bluetooth/BluetoothDevice;)V

    .line 1856
    .end local v15    # "isOurProduct":Z
    :cond_1e
    const/16 v32, 0x227

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_1f

    .line 1858
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[jdub] send Strong RSSI alert"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    :try_start_1
    new-instance v24, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getActionInRangeAlert()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1862
    .restart local v24    # "sendIntent":Landroid/content/Intent;
    const-string v32, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1863
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v32

    const-string v33, "com.sec.android.permission.SMART_UNLOCK"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1874
    .end local v24    # "sendIntent":Landroid/content/Intent;
    :cond_1f
    :goto_a
    const/16 v32, 0x244

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 1875
    const/16 v19, -0x1

    .line 1876
    .local v19, "min_rssi":I
    const/16 v17, -0x1

    .line 1877
    .local v17, "mid_rssi":I
    if-nez p3, :cond_2c

    .line 1878
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] MSG_SET_MANUAL_AUTO_LOCK_RSSI - intent is null"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1446
    .end local v17    # "mid_rssi":I
    .end local v19    # "min_rssi":I
    .restart local v25    # "service":Ljava/lang/String;
    .restart local v26    # "state":Ljava/lang/String;
    .restart local v29    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_20
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMSC][jdub] Handle SCS Errors in reconnectHandler..."

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1475
    .restart local v4    # "HmDeviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_21
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v32

    .line 1476
    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "samsung_gear"

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v34

    .line 1475
    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1594
    .end local v4    # "HmDeviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_22
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMSC] Request Connection after SERVICE CONNECTED"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->requestWaitingConnection(Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 1644
    :cond_23
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] SPP already connected for Old Auto Connection(HFP)..."

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1687
    :cond_24
    if-eqz v29, :cond_19

    .line 1689
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v16

    .line 1691
    .local v16, "isSPPConnected":Z
    const/16 v32, 0x1

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_26

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->isHFPRetryperformed(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_26

    .line 1693
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->setHFPRetryPerformed(Ljava/lang/String;Z)V

    .line 1694
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "HFP Disconnected abnormally - Schedule HFP connection Again"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mHFPConnRetryTask:Ljava/util/HashMap;

    move-object/from16 v32, v0

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    if-nez v32, :cond_25

    .line 1698
    new-instance v28, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    .line 1699
    .local v28, "temp":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mHFPConnRetryTask:Ljava/util/HashMap;

    move-object/from16 v32, v0

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    .end local v28    # "temp":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mHFPConnRetryTask:Ljava/util/HashMap;

    move-object/from16 v32, v0

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;

    .line 1703
    .local v27, "task":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mHFPReconnectHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mHFPReconnectHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    const-wide/16 v34, 0xbb8

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6

    .line 1707
    .end local v27    # "task":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;
    :cond_26
    const/16 v32, 0x1

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_27

    .line 1709
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "HFP Disconnected abnormally - HFP connection already retried. Unset BR/EDR flag."

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1713
    :cond_27
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->setHFPRetryPerformed(Ljava/lang/String;Z)V

    .line 1714
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "HFP Disconnected abnormally - Either SPP is already disconnected or HFP connection already retried. Ignore this time"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1720
    .end local v16    # "isSPPConnected":Z
    :cond_28
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMSC] Disconnected as AC condition"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->setHFPRetryPerformed(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 1780
    .restart local v11    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    :cond_29
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] STATE_CONNECTING -> STATE_DISCONNECTED : deviceSet is null.."

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1801
    .end local v11    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .restart local v22    # "recovery":Ljava/lang/String;
    :cond_2a
    const-string v32, "MSG_SAACCESSORY_ERROR"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1d

    .line 1803
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[RECOVERY] Request Reconnect(MSG_SAACCESSORY_ERROR)..."

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    const-string v32, "BUNDLE_CMKEY_STRING_ERRORCODE"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1808
    .local v21, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->isError(Ljava/lang/String;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2b

    .line 1809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mNotifyEventTask:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v10, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->setEventData(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mDelayedNotifyHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mNotifyEventTask:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1816
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    const/16 v33, 0x18

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto/16 :goto_8

    .line 1813
    :cond_2b
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[CMSC] Ignore this SAP error("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1842
    .end local v21    # "reason":Ljava/lang/String;
    .end local v22    # "recovery":Ljava/lang/String;
    .end local v25    # "service":Ljava/lang/String;
    .end local v26    # "state":Ljava/lang/String;
    .end local v29    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .restart local v15    # "isOurProduct":Z
    :catch_0
    move-exception v12

    .line 1843
    .local v12, "e":Ljava/lang/Exception;
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "send  intent fail - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1865
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v15    # "isOurProduct":Z
    :catch_1
    move-exception v12

    .line 1866
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "send  intent fail - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1882
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v17    # "mid_rssi":I
    .restart local v19    # "min_rssi":I
    :cond_2c
    const-string v32, "IN_RANGE"

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1883
    .local v20, "min_rssi_string":Ljava/lang/String;
    const-string v32, "MID_RANGE"

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1886
    .local v18, "mid_rssi_string":Ljava/lang/String;
    :try_start_2
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v19

    .line 1893
    :try_start_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v17

    .line 1899
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[jdub] MSG_SET_MANUAL_AUTO_LOCK_RSSI : RSSI Values :"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " and "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getConnectedDevices()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v31

    .line 1904
    .local v31, "wearableDevices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_2d
    :goto_c
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_6

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 1906
    .local v30, "wd":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 1908
    .local v7, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v33

    if-nez v33, :cond_2e

    .line 1910
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v33, "[CMAC] MSG_SET_MANUAL_AUTO_LOCK_RSSI - BT not enabled"

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1887
    .end local v7    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v30    # "wd":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .end local v31    # "wearableDevices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    :catch_2
    move-exception v12

    .line 1888
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[CMAC] MSG_SET_MANUAL_AUTO_LOCK_RSSI - min_rssi exception : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1894
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v12

    .line 1895
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-object v32, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[CMAC] MSG_SET_MANUAL_AUTO_LOCK_RSSI - mid_rssi exception : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1914
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v7    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v30    # "wd":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .restart local v31    # "wearableDevices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    :cond_2e
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 1915
    .local v9, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v9, :cond_2d

    .line 1916
    sget-object v33, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[jdub] Call setRSSI for device address :"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-direct {v0, v9, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->setManualRssi(Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_c
.end method

.method public removeSCSWaitingConnectionInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 394
    if-nez p1, :cond_0

    .line 395
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v1, "[WS] removeSCSWaitingConnectionInfo - invalid request (address is null)"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSWaitingConnectionInfoMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 401
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v1, "[WS] mSCSWaitingConnectionInfoMap is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 406
    :try_start_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WS] remove SCS Waiting Connection Info ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSWaitingConnectionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 408
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSWaitingConnectionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeSPPWaitingConnectionInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 441
    if-nez p1, :cond_0

    .line 442
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v1, "[WS] removeSSPPWaitingConnectionInfo - invalid request (address is null)"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSppWaitingConnectionInfoMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 448
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v1, "[WS] mSppWaitingConnectionInfoMap is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSppWaitingConnectionInfoMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 453
    :try_start_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WS] remove SPP Waiting Connection Info ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSppWaitingConnectionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 455
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSppWaitingConnectionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeWaitingConnectionInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 320
    if-nez p1, :cond_0

    .line 321
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v1, "[WS] removeWaitingConnectionInfo - invalid request (address is null)"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 327
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v1, "[WS] mWaitingConnectionInfoMap is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WS] remove Waiting Connection Info ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 334
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeWaitingConnectionInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 341
    if-nez p1, :cond_0

    .line 342
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v1, "[WS] removeWaitingConnectionInfo - invalid request (address is null)"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 348
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v1, "[WS] mWaitingConnectionInfoMap is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 355
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 357
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WS] remove Waiting Connection Info ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 360
    :cond_3
    :try_start_1
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WS] remove Waiting Connection Info failed as not same type ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " type :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", Waiting type :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMap:Ljava/util/HashMap;

    .line 361
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-static {v2, v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public requestWaitingConnection(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1962
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v9, "[CMSC] Request Waiting Connection"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    if-nez p1, :cond_1

    .line 1965
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v9, "[CMSC] RequestWaitingConnection - bundle is null"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    :cond_0
    :goto_0
    return-void

    .line 1969
    :cond_1
    const-string v8, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1971
    .local v3, "deviceBundle":Landroid/os/Bundle;
    if-nez v3, :cond_2

    .line 1972
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v9, "[CMSC] RequestWaitingConnection - deviceBundle is null"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1976
    :cond_2
    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Landroid/os/Bundle;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1978
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v2, :cond_3

    .line 1979
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v9, "[CMSC] RequestWaitingConnection - device is null"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1983
    :cond_3
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1984
    .local v1, "address":Ljava/lang/String;
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v6

    .line 1986
    .local v6, "serviceType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getWaitingConnectionInfo()Ljava/util/HashMap;

    move-result-object v0

    .line 1989
    .local v0, "WaitingConnectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 1991
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "serviceType":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1992
    .restart local v6    # "serviceType":Ljava/lang/String;
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CMSC] Waiting Connection Info ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    if-nez v6, :cond_4

    .line 1996
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v9, "[CMSC] RequestWaitingConnection - no waiting connection request"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2001
    :cond_4
    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v7

    .line 2002
    .local v7, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v8, v7, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v4

    .line 2005
    .local v4, "isALLConnected":Z
    if-nez v4, :cond_5

    .line 2007
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2008
    .local v5, "reqBundle":Landroid/os/Bundle;
    const-string v8, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {p1, v8, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2009
    const-string v8, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v9, "[CMSC] Request Waiting Connection"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    const/16 v9, 0x15

    invoke-virtual {v8, v9, v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2017
    .end local v5    # "reqBundle":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isFindPeerComplete(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 2018
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v9, "[CMSC] find peer is still not completed. call the find peer!!"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    invoke-direct {p0, v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->requestFindPeer(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto/16 :goto_0

    .line 2020
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isFeatureExchangeItemValid(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 2022
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v9, "[CMSC] feature exchange is still not completed. call the feature exchange!!"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    invoke-direct {p0, v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->requestFeatureExchange(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto/16 :goto_0

    .line 2025
    :cond_7
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v9, "[CMSC] Request Waiting Connection: Already ALL connected!!"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    invoke-virtual {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->removeWaitingConnectionInfo(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public scsConnectionErrorHandler(Landroid/os/Bundle;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "wDevice"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    const/4 v1, 0x0

    .line 1928
    const-string v2, "BUNDLE_CMKEY_STRING_SAACCESSORY_DISCONNECT_REASON"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1930
    .local v0, "reason":I
    const/16 v2, 0x102

    if-eq v0, v2, :cond_0

    const v2, -0x4fffffff

    if-eq v0, v2, :cond_0

    const v2, -0x4ffffffa

    if-eq v0, v2, :cond_0

    const v2, -0x4ffffff9

    if-ne v0, v2, :cond_1

    .line 1936
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v2, "[CMSC] Notify event for 3G connection:SAP Error."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->notifyScsConnectionEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1940
    const/4 v1, 0x1

    .line 1958
    :cond_1
    return v1
.end method

.method public setDisconnectCancelResponse(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 3308
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mDisconnectCancelResponse:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3309
    return-void
.end method

.method public setHFPRetryPerformed(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 2700
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mHFPRetryPerformed:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2701
    return-void
.end method

.method public setSCSWaitingConnectionInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 382
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mWaitingConnectionInfoMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSWaitingConnectionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WS] set SCS Waiting Connection Info ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSCSWaitingConnectionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_0
    monitor-exit v1

    .line 391
    return-void

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSPPSWaitingConnectionInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 429
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSppWaitingConnectionInfoMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSppWaitingConnectionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WS] set SPP Waiting Connection Info ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mSppWaitingConnectionInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_0
    monitor-exit v1

    .line 438
    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public terminate()V
    .locals 0

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->terminateProfileHandler()V

    .line 247
    return-void
.end method

.method public terminateProfileHandler()V
    .locals 4

    .prologue
    .line 278
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->mProfileHandlers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 280
    .local v1, "handlers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    .line 281
    .local v0, "handler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->terminate()V

    goto :goto_0

    .line 284
    .end local v0    # "handler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 285
    return-void
.end method

.method public updateSPPConnectedDevices(Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;)V
    .locals 4
    .param p1, "accessoryManager"    # Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    .prologue
    .line 2993
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->TAG:Ljava/lang/String;

    const-string v3, "[CMWS] init Wearable State (SAP)"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2995
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;)V

    .line 2996
    .local v0, "task":Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2997
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2998
    return-void
.end method
