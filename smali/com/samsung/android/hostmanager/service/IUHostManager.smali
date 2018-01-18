.class public Lcom/samsung/android/hostmanager/service/IUHostManager;
.super Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;
.source "IUHostManager.java"


# static fields
.field private static final PM_TAG:Ljava/lang/String; = "HMPackageManager"

.field private static final TAG:Ljava/lang/String;

.field private static mConnectListenerMapList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/ConnectListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mConnectListenerMapListLock:Ljava/lang/Object;

.field private static volatile mIUHostManager:Lcom/samsung/android/hostmanager/service/IUHostManager;


# instance fields
.field private mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

.field private mIEXAPPHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mConnectListenerMapList:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mConnectListenerMapListLock:Ljava/lang/Object;

    .line 66
    const-class v0, Lcom/samsung/android/hostmanager/service/IUHostManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIUHostManager:Lcom/samsung/android/hostmanager/service/IUHostManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface$Stub;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIEXAPPHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;
    .locals 3

    .prologue
    .line 71
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIUHostManager:Lcom/samsung/android/hostmanager/service/IUHostManager;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/samsung/android/hostmanager/service/IUHostManager;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/service/IUHostManager;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIUHostManager:Lcom/samsung/android/hostmanager/service/IUHostManager;

    .line 74
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value mIUHostManager:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIUHostManager:Lcom/samsung/android/hostmanager/service/IUHostManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIUHostManager:Lcom/samsung/android/hostmanager/service/IUHostManager;

    return-object v0
.end method

.method private sendCMBondStateChangedToEXApp(Ljava/lang/String;II)V
    .locals 5
    .param p1, "BTAddress"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "state"    # I

    .prologue
    .line 1841
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCMBondStateChangedToEXApp() BTAddress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIEXAPPHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIEXAPPHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1843
    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    .line 1845
    :cond_0
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 1846
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIEXAPPHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1848
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;->onReceiveDeviceConnected(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1849
    :catch_0
    move-exception v0

    .line 1850
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1853
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;>;"
    :cond_1
    const/4 v2, 0x3

    if-ne p3, v2, :cond_3

    .line 1854
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIEXAPPHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1856
    .restart local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;>;"
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;->onReceiveDeviceDisconnected(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1857
    :catch_1
    move-exception v0

    .line 1858
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1864
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;>;"
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIEXAPPHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_4

    .line 1865
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v3, "mIAPPHostManagerListener is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    :cond_3
    :goto_2
    return-void

    .line 1866
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIEXAPPHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 1867
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v3, "mIAPPHostManagerListener is zero"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public backupWearable(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "appPackage"    # Ljava/lang/String;
    .param p3, "appVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 109
    .local v1, "res":Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    const/4 v2, 0x0

    .line 116
    :goto_0
    return v2

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HostManager;->startBackupWearable(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 116
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public cancelFileonSending(ILjava/lang/String;)V
    .locals 2
    .param p1, "transferID"    # I
    .param p2, "hPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 512
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "cancelFileonSending(transferID, hPackageName) called"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->cancelFileonSending(ILjava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "mHostManager is null, can\'t call cancelFileonSending()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cloudBackup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "deviceID"    # Ljava/lang/String;
    .param p4, "appPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 907
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 913
    :goto_0
    return-void

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/service/HostManager;->cloudBackup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cloudRestore(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "deviceID"    # Ljava/lang/String;
    .param p4, "appID"    # Ljava/lang/String;
    .param p5, "appVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 918
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 923
    :goto_0
    return-void

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/hostmanager/service/HostManager;->cloudRestore(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public connectWifiDirect(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/ConnectListener;)Z
    .locals 6
    .param p1, "BTAddress"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/hostmanager/aidl/ConnectListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1987
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2008
    :goto_0
    return v2

    .line 1990
    :cond_0
    if-eqz p2, :cond_2

    .line 1991
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->mConnectListenerMapListLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1992
    :try_start_0
    sget-object v4, Lcom/samsung/android/hostmanager/service/IUHostManager;->mConnectListenerMapList:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1993
    .local v0, "connectListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectListener;>;"
    if-nez v0, :cond_1

    .line 1994
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "connectListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1996
    .restart local v0    # "connectListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectListener;>;"
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1997
    sget-object v4, Lcom/samsung/android/hostmanager/service/IUHostManager;->mConnectListenerMapList:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1998
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2000
    .end local v0    # "connectListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectListener;>;"
    :cond_2
    const/4 v3, 0x7

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/hostmanager/service/IUHostManager;->manageConnectionInfo(Ljava/lang/String;I)I

    move-result v1

    .line 2001
    .local v1, "result":I
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM::connectWifiP2p  CallingUid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " listener : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    if-nez v1, :cond_3

    .line 2004
    const/4 v2, 0x1

    goto :goto_0

    .line 1998
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2006
    .restart local v1    # "result":I
    :cond_3
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "CM::manageConnectionInfo for WIFI_P2P failed."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    const/4 v3, 0x6

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendConnectFailResult(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public createInstallStateObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "apkFilePath"    # Ljava/lang/String;

    .prologue
    .line 454
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v3, "createInstallStateObject(packageName, apkFilePath) called"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 459
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :try_start_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU: createInstallStateObject Listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->createInstallStateObject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Remote Exception at createInstallStateobject()"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 468
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v3, "mIHostManagerListener is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_1
    return-void
.end method

.method public disconnectWifiDirect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "BTAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2014
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2023
    :cond_0
    :goto_0
    return v1

    .line 2017
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/hostmanager/service/IUHostManager;->manageConnectionInfo(Ljava/lang/String;I)I

    move-result v0

    .line 2018
    .local v0, "result":I
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM::disconnectWifiP2p  CallingUid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    if-nez v0, :cond_0

    .line 2021
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public forceConnectWifiDirect(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/ConnectListener;)V
    .locals 5
    .param p1, "BTAddress"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/hostmanager/aidl/ConnectListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2138
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2174
    :goto_0
    return-void

    .line 2142
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM::forceConnectWifiDirect  CallingUid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifip2p"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 2145
    .local v1, "mManager":Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 2146
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    .line 2145
    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    .line 2147
    .local v0, "mChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    new-instance v2, Lcom/samsung/android/hostmanager/service/IUHostManager$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/hostmanager/service/IUHostManager$1;-><init>(Lcom/samsung/android/hostmanager/service/IUHostManager;Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/ConnectListener;)V

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method public getAllBondedWearableDevices()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1301
    const/4 v0, 0x0

    .line 1302
    .local v0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;>;"
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    .line 1303
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1304
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllBondedWearableDevices()::mHostManager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetAllBondedWearableDevices()Ljava/util/ArrayList;

    move-result-object v0

    .line 1308
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getAllBondedWearableDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getAllBondedWearableDevices()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllWearableStatus()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/DeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 353
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    :goto_0
    return-object v0

    .line 357
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "IU::ST::getAllWearableStatus()"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    .line 359
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetAllWearableStatus()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 361
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "IU::ST::getAllWearableStatus : mHostManager is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic getAllWearableStatus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getAllWearableStatus()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAppSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "settingFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1438
    :cond_0
    const/4 v0, 0x0

    .line 1441
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetAppSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppsData(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1600
    :cond_0
    const/4 v0, 0x0

    .line 1603
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetAppsData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppsOrderSetup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 605
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    const/4 v0, 0x0

    .line 609
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetAppsOrderSetup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getAppsOrderSetup(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getAppsOrderSetup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getBackupFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1261
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1267
    :cond_0
    :goto_0
    return-object v0

    .line 1264
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getBackupFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBackupList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/BackupInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    const/4 v0, 0x0

    .line 408
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getBackupList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getClocksSetup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/ClocksSetup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    const/4 v0, 0x0

    .line 569
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetClockSetup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getClocksSetup(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getClocksSetup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedCMProxyState()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1358
    const/4 v0, 0x0

    .line 1359
    .local v0, "state":Z
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    .line 1360
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1361
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetConnectdCMProxyState()Z

    move-result v0

    .line 1364
    :cond_0
    return v0
.end method

.method public getConnectedType(Ljava/lang/String;)I
    .locals 3
    .param p1, "BTAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 1659
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1667
    :goto_0
    return v0

    .line 1663
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    .line 1664
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetConnectedWearableType(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1666
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "getConnectedType()::mHostManager is null."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getConnectedWearableDevices()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1289
    const/4 v0, 0x0

    .line 1290
    .local v0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;>;"
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    .line 1291
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1292
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectedWearableDevices()::mHostManager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetConnectedWearableDevices()Ljava/util/ArrayList;

    move-result-object v0

    .line 1296
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getConnectedWearableDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getConnectedWearableDevices()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultClockPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1381
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1389
    :goto_0
    return-object v0

    .line 1385
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    .line 1386
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getDefaultClockPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1388
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "getDefaultClockPkgName : mHostManager is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDefaultPDClassName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1368
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1376
    :goto_0
    return-object v0

    .line 1372
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    .line 1373
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->getDefaultPDClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1375
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "getDefaultPDClassName : mHostManager is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDeviceType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "BTaddress"    # Ljava/lang/String;

    .prologue
    .line 1672
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1673
    const/4 v0, 0x0

    .line 1679
    :goto_0
    return-object v0

    .line 1676
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1678
    .local v0, "deviceType":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceType()::deviceType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDevicesToSend(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 985
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v6

    if-nez v6, :cond_1

    .line 986
    const/4 v4, 0x0

    .line 1029
    :cond_0
    :goto_0
    return-object v4

    .line 989
    :cond_1
    sget-object v6, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDevicesToSend ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const/4 v4, 0x0

    .line 992
    .local v4, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x7

    .line 995
    .local v3, "flag":I
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getAllWearableStatus()Ljava/util/ArrayList;

    move-result-object v5

    .line 996
    .local v5, "wearableList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 998
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    .line 999
    .local v1, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getNotification()Ljava/util/HashMap;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1000
    const/4 v0, 0x0

    .line 1002
    .local v0, "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1003
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v7

    invoke-interface {v7, p1, v3}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->isExistAndMarked(Ljava/lang/String;I)Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1008
    :cond_2
    :goto_2
    if-eqz v0, :cond_4

    .line 1009
    sget-object v7, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is allowed for device("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    if-nez v4, :cond_3

    .line 1011
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    .restart local v4    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1005
    :catch_0
    move-exception v2

    .line 1006
    .local v2, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_2

    .line 1015
    .end local v2    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    :cond_4
    sget-object v7, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "there is no ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] in the device("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1018
    .end local v0    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :cond_5
    sget-object v7, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v8, "deviceInfo.getNotification() == NULL"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1022
    .end local v1    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :cond_6
    sget-object v6, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v7, "we do not have connected devices"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :cond_7
    if-nez v4, :cond_0

    .line 1026
    sget-object v6, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notification for application ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] is not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getFavoriteOrderSetup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 596
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    const/4 v0, 0x0

    .line 600
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetFavoriteOrderSetup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getFavoriteOrderSetup(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getFavoriteOrderSetup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getFontsSetup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FontsSetup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1726
    :cond_0
    const/4 v0, 0x0

    .line 1729
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetFontsSetup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getFontsSetup(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getFontsSetup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getHomeBGImageNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1477
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1484
    :cond_0
    :goto_0
    return-object v0

    .line 1481
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getHomeBGImageNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHomeBGImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1489
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1495
    :cond_0
    :goto_0
    return-object v0

    .line 1492
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    .line 1493
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getHomeBGImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHostStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 381
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    :goto_0
    return-object v0

    .line 385
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "IU::ST::getHostStatus()"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    .line 387
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetHostStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v0

    goto :goto_0

    .line 389
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "IU::ST::getHostStatus : mHostManager is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getIMESetup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/IMESetup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1766
    :cond_0
    const/4 v0, 0x0

    .line 1769
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetIMESetup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getIMESetup(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getIMESetup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getImageByteArray(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "imgFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1407
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1408
    const/4 v0, 0x0

    .line 1415
    :cond_0
    :goto_0
    return-object v0

    .line 1411
    :cond_1
    const/4 v0, 0x0

    .line 1412
    .local v0, "ret":[B
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    .line 1413
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetImageByteArray(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getIsEulaPassed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1148
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1156
    :goto_0
    return v0

    .line 1152
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    .line 1153
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->getIsEulaPassed()Z

    move-result v0

    goto :goto_0

    .line 1155
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "getIsEulaPassed : mHostManager is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getIsRestoreEulaPassNeededDevice(Ljava/lang/String;)Z
    .locals 6
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1234
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1254
    :cond_0
    :goto_0
    return v2

    .line 1239
    :cond_1
    const/4 v0, 0x0

    .line 1241
    .local v0, "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v0

    .line 1242
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MGR_STATUS_EXCHANGE_DONE deviceManager = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    :goto_1
    if-eqz v0, :cond_0

    .line 1248
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getDeviceManagerType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Blink"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1251
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getIsRestoreEulaPassNeededDevice(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 1243
    :catch_0
    move-exception v1

    .line 1244
    .local v1, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_1
.end method

.method public getIsfirstConnection()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1566
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1567
    const/4 v0, 0x0

    .line 1572
    :goto_0
    return v0

    .line 1570
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "HOSTMANAGER_GLOBAL_PREFERENCE"

    const-string v3, "isFirstConnection"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->getPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1571
    .local v0, "isFirstConnection":Z
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsfirstConnection() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLimitNotificationSetting(Ljava/lang/String;)Z
    .locals 8
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1035
    const/4 v2, 0x1

    .line 1037
    .local v2, "ret":Z
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1038
    const/4 v5, 0x0

    .line 1062
    :goto_0
    return v5

    .line 1043
    :cond_0
    if-nez p1, :cond_2

    .line 1044
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getAllWearableStatus()Ljava/util/ArrayList;

    move-result-object v4

    .line 1046
    .local v4, "wearableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1047
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    .line 1048
    .local v0, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getNotification()Ljava/util/HashMap;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1049
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object p1

    .line 1055
    .end local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .end local v4    # "wearableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->getNotificationSettings()Lcom/samsung/android/hostmanager/aidl/NotificationSettings;

    move-result-object v3

    .line 1056
    .local v3, "setting":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isUltraPowerSavingMode()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    .line 1058
    :goto_1
    sget-object v5, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLimitNotificationSetting() deviceId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  ret : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "setting":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :goto_2
    move v5, v2

    .line 1062
    goto :goto_0

    .line 1056
    .restart local v3    # "setting":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->getLimitNotification()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 1059
    .end local v3    # "setting":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :catch_0
    move-exception v1

    .line 1060
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v6, "Exception while getNotificationSettings"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getListenerByBTAddress(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 7
    .param p1, "btAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Listener::IU:: getListenerByBTAddress() btAddress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    if-nez p1, :cond_1

    .line 329
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 348
    :cond_0
    :goto_0
    return-object v0

    .line 332
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 333
    .local v0, "copyListener":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 334
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v3, :cond_3

    .line 335
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/hostmanager/service/HostManager;->getPackageNameByDeviceID(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "packageName":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Listener::IU:: getListenerByBTAddress() packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 338
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 339
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "com.samsung.android.app.watchmanager"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 340
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listener::IU:: getListenerByBTAddress() removed listener packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 347
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Listener::IU:: mHostManager is null."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    goto/16 :goto_0
.end method

.method public getMyAppsSetup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-nez v0, :cond_2

    .line 584
    :cond_1
    const/4 v0, 0x0

    .line 587
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetMyAppsSetup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getMyAppsSetup(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getMyAppsSetup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2065
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2066
    const/4 v14, 0x0

    .line 2133
    :cond_0
    :goto_0
    return-object v14

    .line 2069
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNotificationInfo ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    const/4 v14, 0x0

    .line 2072
    .local v14, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationInfo;>;"
    const/4 v13, 0x7

    .line 2074
    .local v13, "notiType":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getAllWearableStatus()Ljava/util/ArrayList;

    move-result-object v15

    .line 2076
    .local v15, "wearableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    if-eqz v15, :cond_b

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 2078
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    .line 2079
    .local v9, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getNotification()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2080
    const/4 v8, 0x0

    .line 2082
    .local v8, "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    if-nez v8, :cond_3

    .line 2084
    :try_start_0
    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2085
    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v1, v0, v13}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->isExistAndMarked(Ljava/lang/String;I)Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 2091
    :cond_3
    :goto_2
    if-eqz v8, :cond_2

    .line 2092
    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getNotification()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "DeviceBTNotificationAttributePriority"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/notification/Utils;->parseComponents(Ljava/lang/String;)[I

    move-result-object v6

    .line 2094
    .local v6, "components":[I
    if-eqz v6, :cond_4

    array-length v1, v6

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x4

    new-array v6, v1, [I

    .end local v6    # "components":[I
    fill-array-data v6, :array_0

    .line 2096
    .restart local v6    # "components":[I
    :cond_5
    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getNotification()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "DeviceBTNotificationSize"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2098
    .local v11, "maxByteDevice":I
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getMaxByte()I

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_6

    move v5, v11

    .line 2101
    .local v5, "maxByte":I
    :goto_3
    const/4 v12, 0x0

    .line 2103
    .local v12, "nSettings":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :try_start_1
    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->getNotificationSettings()Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :try_end_1
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 2107
    :goto_4
    if-nez v12, :cond_7

    .line 2108
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "getNotificationInfo :: getNotificationSettings is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2087
    .end local v5    # "maxByte":I
    .end local v6    # "components":[I
    .end local v11    # "maxByteDevice":I
    .end local v12    # "nSettings":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :catch_0
    move-exception v10

    .line 2088
    .local v10, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_2

    .line 2099
    .end local v10    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    .restart local v6    # "components":[I
    .restart local v11    # "maxByteDevice":I
    :cond_6
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getMaxByte()I

    move-result v5

    goto :goto_3

    .line 2104
    .restart local v5    # "maxByte":I
    .restart local v12    # "nSettings":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :catch_1
    move-exception v10

    .line 2105
    .restart local v10    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_4

    .line 2112
    .end local v10    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    :cond_7
    if-nez v14, :cond_8

    .line 2113
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationInfo;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2115
    .restart local v14    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationInfo;>;"
    :cond_8
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isUltraPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v7, 0x1

    .line 2116
    .local v7, "limitNotification":Z
    :goto_5
    new-instance v1, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    .line 2117
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getAppId()I

    move-result v4

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[IZ)V

    .line 2116
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2118
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] for Device("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is allowed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2115
    .end local v7    # "limitNotification":Z
    :cond_9
    invoke-virtual {v12}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->getLimitNotification()Z

    move-result v7

    goto :goto_5

    .line 2121
    .end local v5    # "maxByte":I
    .end local v6    # "components":[I
    .end local v8    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .end local v11    # "maxByteDevice":I
    .end local v12    # "nSettings":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :cond_a
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "deviceInfo.getNotification() is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2125
    .end local v9    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :cond_b
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "we do not have connected devices"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    :cond_c
    if-nez v14, :cond_0

    .line 2130
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification for application ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2094
    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x1
    .end array-data
.end method

.method public getNotificationMaxByte(Ljava/lang/String;)I
    .locals 6
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 880
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 881
    const/4 v2, 0x0

    .line 895
    :goto_0
    return v2

    .line 884
    :cond_0
    const/4 v2, 0x0

    .line 885
    .local v2, "maxByteDevice":I
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getAllWearableStatus()Ljava/util/ArrayList;

    move-result-object v0

    .line 886
    .local v0, "allWearableStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    if-eqz v0, :cond_2

    .line 887
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    .line 888
    .local v1, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getNotification()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 889
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getNotification()Ljava/util/HashMap;

    move-result-object v3

    const-string v5, "DeviceBTNotificationSize"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 894
    .end local v1    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :cond_2
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(HM)IUHostManager.java::getNotificationMaxByte()  maxByte : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1347
    const/4 v0, 0x0

    .line 1350
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreferenceWithFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "prefFileName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1610
    const/4 v0, 0x0

    .line 1613
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->getPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSHealthSupportInfo()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2191
    :cond_0
    const/4 v0, 0x0

    .line 2196
    :goto_0
    return-object v0

    .line 2194
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, " getSHealthSupportInfo() "

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->getSHealthSupportInfo()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getSettingsSetup(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-nez v0, :cond_2

    .line 414
    :cond_1
    const/4 v0, 0x0

    .line 417
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetSettingsSetup(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v0

    goto :goto_0
.end method

.method public getTTSSetup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/TTSSetup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1747
    :cond_0
    const/4 v0, 0x0

    .line 1750
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetTTSSetup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getTTSSetup(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getTTSSetup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getThreeGSettingValue(Ljava/lang/String;)Z
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1642
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1650
    :goto_0
    return v0

    .line 1646
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    .line 1647
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetThreeGSettingValue(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1649
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "getThreeGSettingValue()::mHostManager is null."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getWappListPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 1272
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1273
    :cond_0
    const/4 v1, 0x0

    .line 1283
    :goto_0
    return-object v1

    .line 1276
    :cond_1
    move-object v1, p2

    .line 1278
    .local v1, "ret":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->getWappListPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1279
    :catch_0
    move-exception v0

    .line 1280
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1281
    move-object v1, p2

    goto :goto_0
.end method

.method public getWearableInfo()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1892
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1900
    :cond_0
    :goto_0
    return v0

    .line 1896
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "getWearableInfo() called"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    .line 1898
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->getWearableInfo()Z

    move-result v0

    goto :goto_0
.end method

.method public getWearableInfoByDeviceId(Ljava/lang/String;)Z
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1906
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1914
    :cond_0
    :goto_0
    return v0

    .line 1910
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "getWearableInfo(String deviceId) called"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    .line 1912
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getWearableInfo(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getWearableList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1874
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1875
    const/4 v1, 0x0

    .line 1887
    :cond_0
    return-object v1

    .line 1878
    :cond_1
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v3, "getWearableList() called"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->getListOfRegisteredDevices()Ljava/util/List;

    move-result-object v1

    .line 1880
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;

    .line 1881
    .local v0, "device":Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status:: device.getPackageName() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status:: device.getConnectStatus() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->getConnectStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status:: device.getDeviceId() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status:: device.getBtName() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->getBtName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status:: device.isSupportWearableStatus() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->isSupportWearableStatus()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getWearableStatus(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .locals 4
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 367
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    :goto_0
    return-object v0

    .line 371
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IU::ST::getWearableStatus()::deviceID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    .line 373
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetWearableStatus(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v0

    goto :goto_0

    .line 375
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "IU::ST::getWearableStatus : mHostManager is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getinstalledAppType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2210
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getinstalledAppType(), packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2212
    :cond_0
    const/4 v0, 0x0

    .line 2215
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->getInstalledAppType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public handleFileTransferComplete(I)V
    .locals 6
    .param p1, "transferID"    # I

    .prologue
    .line 438
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    .line 439
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 442
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :try_start_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU: handleFileTransferComplete Listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->handleFileTransferComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Remote Exception at handleFileTransferComplete()"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 451
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_0
    return-void
.end method

.method public handleWearableConnected(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 1201
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "handleWearableConnected"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->handleWearableConnected(Ljava/lang/String;)V

    .line 1207
    :goto_0
    return-void

    .line 1205
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "handleWearableConnected : mHostManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initConnType()V
    .locals 2

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1595
    :cond_0
    :goto_0
    return-void

    .line 1591
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "initConnType()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->initConnType()V

    goto :goto_0
.end method

.method public installApp(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;
    .param p3, "from"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 153
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    :goto_0
    return v0

    .line 157
    :cond_0
    const-string v1, "HMPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": installApp() called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/hostmanager/service/HostManager;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/hostmanager/service/HostManager;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HostManager;->startInstallApp(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 164
    :cond_1
    const-string v1, "HMPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Host Manager instance null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public installSpecialAppViaStub(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 3
    .param p1, "targetDeviceID"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "updateCheck"    # Z
    .param p4, "callerPlugin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1786
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " installSpecialAppViaStub :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updateCheck :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " targetDeviceID :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1790
    :cond_0
    const/4 v0, 0x0

    .line 1795
    :goto_0
    return v0

    .line 1793
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p2, p3, p1, p4}, Lcom/samsung/android/hostmanager/service/HostManager;->installSpecialAppViaStub(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1795
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isConnected(Ljava/lang/String;)Z
    .locals 3
    .param p1, "btAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1419
    const/4 v0, 0x0

    .line 1420
    .local v0, "isConnectedValue":Z
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    .line 1421
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1422
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->isConnected(Ljava/lang/String;)Z

    move-result v0

    .line 1425
    :cond_0
    return v0
.end method

.method public isConnectedWithCM(Ljava/lang/String;)Z
    .locals 2
    .param p1, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 1429
    const/4 v0, 0x0

    .line 1430
    .local v0, "isConnectedValue":Z
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->isConnectedWithCM(Ljava/lang/String;)Z

    move-result v0

    .line 1432
    return v0
.end method

.method public isConnecting()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2221
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2229
    :goto_0
    return v0

    .line 2225
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    .line 2226
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->isConnecting()Z

    move-result v0

    goto :goto_0

    .line 2228
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, " isConnecting() mHostManager is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isDownloadInProgress(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2178
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isDownloadInProgress() packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2180
    :cond_0
    const/4 v0, 0x0

    .line 2183
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->isDownloadInProgress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isNeedtoGetWallpaper()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1466
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1472
    :cond_0
    :goto_0
    return v0

    .line 1469
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->isNeedtoGetWallpaper()Z

    move-result v0

    goto :goto_0
.end method

.method public manageConnectionInfo(Ljava/lang/String;I)I
    .locals 4
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "connType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    const/4 v0, -0x3

    .line 259
    :goto_0
    return v0

    .line 249
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM::manageConnectionInfo deviceID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", connType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    if-nez p1, :cond_1

    const/4 v0, -0x2

    goto :goto_0

    .line 252
    :cond_1
    const/4 v0, -0x1

    .line 253
    .local v0, "connResult":I
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_3

    .line 254
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->startManageConnectionInfo(Ljava/lang/String;I)I

    move-result v0

    .line 258
    :cond_2
    :goto_1
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM::manageConnectionInfo resut = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-nez v1, :cond_2

    .line 256
    const/4 v0, -0x3

    goto :goto_1
.end method

.method public manageSetupInfo(ILjava/lang/String;)Z
    .locals 1
    .param p1, "setupCategory"    # I
    .param p2, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    :cond_0
    const/4 v0, 0x0

    .line 272
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->startManageSetupInfo(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onClockUninstallResultReceived(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "bPackageName"    # Ljava/lang/String;
    .param p3, "reson"    # I

    .prologue
    .line 1066
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "onClockUninstallResultReceived(deviceId, bPackageName, reason) called"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getListenerByBTAddress(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 1069
    .local v2, "localListener":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    if-eqz v2, :cond_0

    .line 1070
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1072
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :try_start_0
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IU: onClockUninstallResultReceived Listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->onClockUninstallResultReceived(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v5, "Remote Exception at onClockUninstallResultReceived()"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1081
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_0
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "localListener is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    :cond_1
    return-void
.end method

.method onRestoreProgressUpdate(Ljava/lang/String;I)V
    .locals 6
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 969
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestoreProgressUpdate desc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", progress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    .line 971
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 974
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :try_start_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU: onRestoreProgressUpdate Listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->onRestoreProgressUpdate(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 976
    :catch_0
    move-exception v0

    .line 977
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Remote Exception at onRestoreProgressUpdate()"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 982
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_0
    return-void
.end method

.method public onSHealthSupportInfo(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1821
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v3, " onSHealthSupportInfo "

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    .line 1823
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1824
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 1823
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1826
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :try_start_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU: onSHealthSupportInfo Listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->onSHealthSupportInfo(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1829
    :catch_0
    move-exception v0

    .line 1830
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Remote Exception at onSpecialAppInstallStatus()"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1836
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v3, "mIHostManagerListener is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    :cond_1
    return-void
.end method

.method public onSpecialAppInstallStatus(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1800
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v3, "onSpecialAppInstallStatus called"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    .line 1803
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1804
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 1803
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1806
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :try_start_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU: onSpecialAppInstallStatus Listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->onSpecialAppInstallStatus(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1809
    :catch_0
    move-exception v0

    .line 1810
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Remote Exception at onSpecialAppInstallStatus()"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1816
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v3, "mIHostManagerListener is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    :cond_1
    return-void
.end method

.method public onSystemBackupRequest(Ljava/lang/String;I)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 494
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSystemBackupRequest: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 500
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSystemBackupRequest1, mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->onSystemBackupRequest(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method onSystemRestoreComplete()V
    .locals 6

    .prologue
    .line 954
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    .line 955
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 958
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :try_start_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU: onSystemRestoreComplete Listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v2}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->onSystemRestoreComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Remote Exception at onSystemRestoreComplete()"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 966
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_0
    return-void
.end method

.method onSystemRestoreReady()V
    .locals 6

    .prologue
    .line 939
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    .line 940
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 943
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :try_start_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU: onSystemRestoreReady Listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v2}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->onSystemRestoreReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 945
    :catch_0
    move-exception v0

    .line 946
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Remote Exception at onSystemRestoreReady()"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 951
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_0
    return-void
.end method

.method public onWappUninstallResultReceived(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "bPackageName"    # Ljava/lang/String;
    .param p3, "reson"    # I

    .prologue
    .line 1086
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "onWappUninstallResultReceived(deviceId, bPackageName, reason) called"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getListenerByBTAddress(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 1089
    .local v2, "localListener":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    if-eqz v2, :cond_0

    .line 1090
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1092
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :try_start_0
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IU: onWappUninstallResultReceived Listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->onWappUninstallResultReceived(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v5, "Remote Exception at onWappUninstallResultReceived()"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1101
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_0
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "localListener is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    :cond_1
    return-void
.end method

.method public onWearableAppUninstallResultReceived(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "bPackageName"    # Ljava/lang/String;
    .param p3, "uninstallRequestType"    # I
    .param p4, "reson"    # I

    .prologue
    .line 1106
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "onWearableAppUninstallResultReceived(deviceId, bPackageName, uninstallRequestType, reason) called"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getListenerByBTAddress(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 1109
    .local v2, "localListener":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    if-eqz v2, :cond_0

    .line 1110
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1112
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :try_start_0
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IU: onWappUninstallResultReceived Listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->onWearableAppUninstallResultReceived(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v5, "Remote Exception at onWappUninstallResultReceived()"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1120
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_0
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "localListener is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    :cond_1
    return-void
.end method

.method public onWearableLocationResultReceived(IDDJLjava/lang/String;)V
    .locals 16
    .param p1, "result"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "time"    # J
    .param p8, "address"    # Ljava/lang/String;

    .prologue
    .line 1125
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v3, "onWearableLocationResultReceived called"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getListenerByBTAddress(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v13

    .line 1128
    .local v13, "localListener":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    if-eqz v13, :cond_0

    .line 1129
    invoke-virtual {v13}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1131
    .local v12, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :try_start_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IU: onWearableLocationResultReceived Listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->onWearableLocationResultReceived(IDDJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1133
    :catch_0
    move-exception v11

    .line 1134
    .local v11, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v3, "Remote Exception at onWearableLocationResultReceived()"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1140
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v12    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v3, "localListener is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    :cond_1
    return-void
.end method

.method public onWearableStatusInfo(Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;)V
    .locals 6
    .param p1, "wearableStatusInfo"    # Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;

    .prologue
    .line 1970
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1983
    :cond_0
    return-void

    .line 1974
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIEXAPPHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1975
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;>;"
    sget-object v4, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status::onWearableStatusInfo::IU:: HostManager listener.getKey() = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status::onWearableStatusInfo::IU:: HostManager listener.getValue() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;->onWearableStatusInfo(Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1979
    :catch_0
    move-exception v0

    .line 1980
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 474
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageInstalled("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")called"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    .line 476
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 479
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :try_start_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU: packageInstalled Listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->packageInstalled(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Remote Exception at packageInstalled()"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 488
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v3, "mIHostManagerListener is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_1
    return-void
.end method

.method public pushResultFileToHM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "settingFileName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1452
    :cond_0
    :goto_0
    return-void

    .line 1451
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HostManager;->startPushResultFileToHM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerEXAPPListener(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;)Z
    .locals 5
    .param p1, "listenerHash"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1921
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1938
    :cond_0
    :goto_0
    return v1

    .line 1925
    :cond_1
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listener:: HostManager registerAPPListener(add) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    if-eqz p1, :cond_0

    .line 1929
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "Listener:: ======================= registerListener ====================="

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIEXAPPHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1931
    .local v0, "printListener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;>;"
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listener::IU:: HostManager listener.getKey() = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listener::IU:: HostManager listener.getValue() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1934
    .end local v0    # "printListener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;>;"
    :cond_2
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "Listener:: =============================================================="

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIEXAPPHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listener:: Size of ArrayList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIEXAPPHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public registerListener(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;)Z
    .locals 5
    .param p1, "listenerHash"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v1

    .line 282
    :cond_1
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listener::IU:: HostManager listener(add) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    if-eqz p1, :cond_0

    .line 286
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "Listener::IU:: ======================= registerListener ====================="

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 288
    .local v0, "printListener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listener::IU:: HostManager listener.getKey() = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listener::IU:: HostManager listener.getValue() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 291
    .end local v0    # "printListener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_2
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "Listener::IU:: =============================================================="

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listener::IU:: Size of ArrayList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public reinstallApp(ILjava/lang/String;)Z
    .locals 4
    .param p1, "response"    # I
    .param p2, "packagePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 231
    :goto_0
    return v0

    .line 221
    :cond_0
    const-string v1, "HMPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": reinstallApp() called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    const-string v2, "android.permission.INSTALL_PACKAGES"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/hostmanager/service/HostManager;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->startReinstallUpdateApp(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 228
    :cond_1
    const-string v1, "HMPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Host Manager instance is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeBackupData(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/BackupInfo;)Z
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "restoreInfo"    # Lcom/samsung/android/hostmanager/aidl/BackupInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->startRemoveBackupData(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/BackupInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestDBQuery(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "queryType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/HistoryInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    const/4 v0, 0x0

    .line 400
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->requestDBQuery(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public requestTokenFromUI(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "settingValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1635
    :goto_0
    return-void

    .line 1630
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_1

    .line 1631
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->startRequestTokenFromUI(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1633
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "requestTokenFromUI()::mHostManager is null."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestWallpapertoWMS(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1525
    :cond_0
    :goto_0
    return-void

    .line 1522
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1523
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->requestWallpapertoWMS(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public requestWearableToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1701
    :cond_0
    :goto_0
    return-void

    .line 1698
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1699
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->requestWearableToken(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reserved01()V
    .locals 0

    .prologue
    .line 592
    return-void
.end method

.method public reserved02()V
    .locals 0

    .prologue
    .line 639
    return-void
.end method

.method public reserved03()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1619
    return-void
.end method

.method public reserved05()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    return-void
.end method

.method public reserved06()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 614
    return-void
.end method

.method public reserved07()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    return-void
.end method

.method public reserved08()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 264
    return-void
.end method

.method public reserved09()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1145
    return-void
.end method

.method public reserved10()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1395
    return-void
.end method

.method public reserved11()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1399
    return-void
.end method

.method public reserved12()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1403
    return-void
.end method

.method public reservedBnR01()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    return-void
.end method

.method public reservedBnR02()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 237
    return-void
.end method

.method public restoreWearable(Lcom/samsung/android/hostmanager/aidl/BackupInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "restoreInfo"    # Lcom/samsung/android/hostmanager/aidl/BackupInfo;
    .param p2, "deviceID"    # Ljava/lang/String;
    .param p3, "appID"    # Ljava/lang/String;
    .param p4, "appVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/service/HostManager;->startRestoreWearable(Lcom/samsung/android/hostmanager/aidl/BackupInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public resumeConnect(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1558
    :cond_0
    :goto_0
    return-void

    .line 1555
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "resumeConnect()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->startResumeConnect(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveUnknownSourcesPermission(Z)V
    .locals 3
    .param p1, "isPermit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1314
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveUnknownSourcePermission() called, isPermit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    return-void
.end method

.method public sendCMBondStateChangedToApp(Ljava/lang/String;II)V
    .locals 8
    .param p1, "BTAddress"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "state"    # I

    .prologue
    .line 765
    sget-object v4, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMListener::sendCMBondStateChangedToApp() BTAddress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getListenerByBTAddress(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    .line 768
    .local v3, "localListener":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    sget-object v4, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendCMBondStateChangedToApp() localListener = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    if-eqz v3, :cond_1

    .line 770
    sget-object v4, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IU: mIHostManagerListener size is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 775
    .local v2, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    if-nez v2, :cond_0

    .line 776
    sget-object v4, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v6, "IU: sendCMBondStateChangedToApp Listener is null"

    invoke-static {v4, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 780
    :cond_0
    :try_start_0
    sget-object v4, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IU: sendCMBondStateChangedToApp Listener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v4, p1, p2, p3}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->sendCMBondStateChangedToApp(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 782
    :catch_0
    move-exception v1

    .line 783
    .local v1, "e":Landroid/os/DeadObjectException;
    sget-object v4, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v6, "DeadObjectException at sendCMBondStateChangedToApp()"

    invoke-static {v4, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 784
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v1

    .line 785
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v6, "RemoteException at sendCMBondStateChangedToApp()"

    invoke-static {v4, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 789
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 790
    .local v0, "cmState":Landroid/content/Intent;
    const-string v4, "com.samsung.android.watchmanager.ACTION_HM_CM_BONDSTATE_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    const-string v4, "btAddress"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    const-string v4, "serviceType"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 793
    const-string v4, "state"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 794
    sget-object v4, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IU: intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.samsung.android.hostmanager.permission.ACCESS_UNIFIED_HOST_MANAGER"

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 796
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendCMBondStateChangedToEXApp(Ljava/lang/String;II)V

    .line 797
    return-void
.end method

.method sendCMDeviceScanResultToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "pairedState"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;

    .prologue
    .line 730
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCMDeviceScanResultToApp() deviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " btMac = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pairedState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendWearableRequestToApp() mIHostManagerListener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    .line 734
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 737
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :try_start_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU: sendCMDeviceScanResultToApp Listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->sendCMDeviceScanResultToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Remote Exception at sendCMDeviceScanResultToApp()"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 745
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_0
    return-void
.end method

.method sendCMScanFinishedToApp(Ljava/lang/String;)V
    .locals 6
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 826
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCMScanFinishedToApp() extra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCMScanFinishedToApp() mIHostManagerListener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    .line 829
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 832
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :try_start_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU: sendCMScanFinishedToApp Listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->sendCMScanFinishedToApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 834
    :catch_0
    move-exception v0

    .line 835
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Remote Exception at sendCMScanFinishedToApp()"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 840
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_0
    return-void
.end method

.method public sendConnectFailResult(Ljava/lang/String;I)V
    .locals 8
    .param p1, "btAddress"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 2028
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendConnectFailResult  btAddress : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  errorCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    sget-object v4, Lcom/samsung/android/hostmanager/service/IUHostManager;->mConnectListenerMapListLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2030
    :try_start_0
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->mConnectListenerMapList:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2031
    .local v1, "connectListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectListener;>;"
    if-eqz v1, :cond_1

    .line 2032
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/ConnectListener;

    .line 2033
    .local v0, "cl":Lcom/samsung/android/hostmanager/aidl/ConnectListener;
    sget-object v5, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendConnectFailResult to listener : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2035
    :try_start_1
    invoke-interface {v0, p2}, Lcom/samsung/android/hostmanager/aidl/ConnectListener;->onFailure(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2036
    :catch_0
    move-exception v2

    .line 2037
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2042
    .end local v0    # "cl":Lcom/samsung/android/hostmanager/aidl/ConnectListener;
    .end local v1    # "connectListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectListener;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2040
    .restart local v1    # "connectListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectListener;>;"
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2042
    :cond_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2043
    return-void
.end method

.method public sendConnectSuccessResult(Ljava/lang/String;)V
    .locals 8
    .param p1, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 2046
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendConnectSuccessResult  btAddress : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    sget-object v4, Lcom/samsung/android/hostmanager/service/IUHostManager;->mConnectListenerMapListLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2048
    :try_start_0
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->mConnectListenerMapList:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2049
    .local v1, "connectListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectListener;>;"
    if-eqz v1, :cond_1

    .line 2050
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/ConnectListener;

    .line 2051
    .local v0, "cl":Lcom/samsung/android/hostmanager/aidl/ConnectListener;
    sget-object v5, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendConnectSuccessResult to listener : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2053
    :try_start_1
    invoke-interface {v0}, Lcom/samsung/android/hostmanager/aidl/ConnectListener;->onSuccess()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2054
    :catch_0
    move-exception v2

    .line 2055
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2060
    .end local v0    # "cl":Lcom/samsung/android/hostmanager/aidl/ConnectListener;
    .end local v1    # "connectListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectListener;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2058
    .restart local v1    # "connectListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectListener;>;"
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2060
    :cond_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2061
    return-void
.end method

.method sendConnectionMessageToApp(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "MessageType"    # Ljava/lang/String;
    .param p2, "BTAddress"    # Ljava/lang/String;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # Ljava/lang/String;
    .param p7, "arg5"    # Ljava/lang/String;
    .param p8, "arg6"    # Ljava/lang/String;

    .prologue
    .line 800
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMListener::sendConnectionMessageToApp() MessageType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BTAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-virtual {p0, p2}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getListenerByBTAddress(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    .line 802
    .local v11, "localListener":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCMMessageToApp() mIHostManagerListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    if-eqz v11, :cond_1

    .line 804
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IU: mIHostManagerListener size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 809
    .local v10, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    if-nez v10, :cond_0

    .line 810
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "IU: sendCMMessageToApp Listener is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 814
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IU: sendCMMessageToApp Listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->sendConnectionMessageToApp(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 816
    :catch_0
    move-exception v9

    .line 817
    .local v9, "e":Landroid/os/DeadObjectException;
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "DeadObjectException at sendCMMessageToApp()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 818
    .end local v9    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v9

    .line 819
    .local v9, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "RemoteException at sendCMMessageToApp()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 823
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v10    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_1
    return-void
.end method

.method public sendEULAFinishMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1171
    :goto_0
    return-void

    .line 1165
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "sendEULAFinishMessage(deviceId)"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_1

    .line 1167
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->sendEULAFinishMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1169
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "sendEULAFinishMessage : mHostManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendHomeBGSettingToApp(Ljava/lang/String;)V
    .locals 7
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 1528
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1548
    :cond_0
    return-void

    .line 1531
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendHomeBGGalleryToApp() mIHostManagerListener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getListenerByBTAddress(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 1533
    .local v2, "localListener":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    if-eqz v2, :cond_0

    .line 1534
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1535
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    if-nez v1, :cond_2

    .line 1536
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v5, "IU: sendHomeBGGalleryToApp Listener is null"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1540
    :cond_2
    :try_start_0
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IU: v Listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v3}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->sendHomeBGSettingToApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1542
    :catch_0
    move-exception v0

    .line 1543
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v5, "Remote Exception at sendHomeBGGalleryToApp()"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendJSONDataFromApp(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "messageID"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 843
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 853
    :goto_0
    return-void

    .line 846
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(HM)IUHostManager.java::sendJSONDataFromUser() deviceID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messageID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HostManager;->sendJSONDataFromApp(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 851
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "sendJSONDataFromApp : mHostManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendLoginStateToGear(I)V
    .locals 2
    .param p1, "loginstate"    # I

    .prologue
    .line 1183
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "sendLoginStateToGear(deviceId)"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->sendLoginStateToGear(I)V

    .line 1189
    :goto_0
    return-void

    .line 1187
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "sendLoginStateToGear : mHostManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendSettingResultJSONDataFromApp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "messageID"    # I
    .param p3, "data1"    # Ljava/lang/String;
    .param p4, "data2"    # Ljava/lang/String;

    .prologue
    .line 856
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    :goto_0
    return-void

    .line 859
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(HM)IUHostManager.java::sendSettingResultJSONDataFromApp() deviceID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messageID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/service/HostManager;->sendSettingResultJSONDataFromApp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 864
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "sendSettingResultJSONDataFromApp : mHostManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendTShareCFDResMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "cfdstate"    # Ljava/lang/String;

    .prologue
    .line 1174
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "sendTShareCFDResMessage(deviceId)"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->sendTShareCFDResMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :goto_0
    return-void

    .line 1178
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "sendTShareCFDResMessage : mHostManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendUpdateSimInfoReq(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 1192
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "sendUpdateSimInfoReq"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->sendUpdateSimInfoReq(Ljava/lang/String;)V

    .line 1198
    :goto_0
    return-void

    .line 1196
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "sendUpdateSimInfoReq : mHostManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendWearableLocationResultToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "pairedState"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;

    .prologue
    .line 748
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCMDeviceScanResultToApp() deviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " btMac = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pairedState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendWearableRequestToApp() mIHostManagerListener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    .line 752
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 755
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :try_start_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU: sendCMDeviceScanResultToApp Listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->sendCMDeviceScanResultToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Remote Exception at sendCMDeviceScanResultToApp()"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 763
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_0
    return-void
.end method

.method public sendWearableRequestToApp(Ljava/lang/String;I)V
    .locals 7
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "messageID"    # I

    .prologue
    .line 652
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU:: sendWearableRequestToApp() deviceId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", messageID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getListenerByBTAddress(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 654
    .local v2, "localListener":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU:: localListener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    if-eqz v2, :cond_1

    .line 657
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 656
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 658
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    if-nez v1, :cond_0

    .line 659
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v5, "IU: sendWearableRequestToApp Listener is null"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_0
    :try_start_0
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IU: sendWearableRequestToApp Listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->sendWearableRequestToApp(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Landroid/os/DeadObjectException;
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v5, "DeadObjectException at sendWearableRequestToApp()"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 671
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 672
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v5, "Remote Exception at sendWearableRequestToApp()"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 678
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_1
    return-void
.end method

.method public sendWearableRequestToAppWithIntData(Ljava/lang/String;II)V
    .locals 7
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "messageID"    # I
    .param p3, "data"    # I

    .prologue
    .line 681
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendWearableRequestToAppWithIntData() deviceId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", messageID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getListenerByBTAddress(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 683
    .local v2, "localListener":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendWearableRequestToAppWithIntData() localListener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    if-eqz v2, :cond_1

    .line 685
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 687
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    if-nez v1, :cond_0

    .line 688
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v5, "IU: sendWearableRequestToAppWithIntData Listener is null"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 692
    :cond_0
    :try_start_0
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IU: sendWearableRequestToAppWithIntData Listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " returnCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->sendWearableRequestToAppWithIntData(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Landroid/os/DeadObjectException;
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v5, "DeadObjectException at sendWearableRequestToAppWithIntData()"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 698
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 699
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v5, "Remote Exception at sendWearableRequestToAppWithIntData()"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 704
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_1
    return-void
.end method

.method public sendWearableRequestToAppWithStringData(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "messageID"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 707
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendWearableRequestToAppWithStringData() deviceId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", messageID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getListenerByBTAddress(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 709
    .local v2, "localListener":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendWearableRequestToAppWithStringData() localListener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    if-eqz v2, :cond_1

    .line 711
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 713
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    if-nez v1, :cond_0

    .line 714
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v5, "IU: sendWearableRequestToAppWithStringData Listener is null"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 718
    :cond_0
    :try_start_0
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IU: sendWearableRequestToAppWithStringData Listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " returnCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->sendWearableRequestToAppWithStringData(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v5, "Remote Exception at setClockChangedInWatch()"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 727
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_1
    return-void
.end method

.method public setAddGalleryImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "imagePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1506
    :cond_0
    :goto_0
    return-void

    .line 1503
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HostManager;->setAddGalleryImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setClocksSetup(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p3, "idleClockPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/ClocksSetup;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 618
    .local p2, "clockList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    .end local p2    # "clockList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    :goto_0
    return-void

    .line 622
    .restart local p2    # "clockList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "(HM)HostManagerInterface.java::setClocksSetup()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "clockList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HostManager;->startSetClocksSetup(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setConnectedState(I)V
    .locals 6
    .param p1, "connectedState"    # I

    .prologue
    .line 540
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v3, "setConnecedState(connectedState) called"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    .line 542
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 545
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :try_start_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU: setConnectedState Listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->setConnectedState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Remote Exception at setConnectedState()"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 553
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v3, "mIHostManagerListener is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_1
    return-void
.end method

.method public setDeleteGalleryImage(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1510
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1516
    :cond_0
    :goto_0
    return-void

    .line 1513
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->setDeleteGalleryImage(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFavoriteOrderSetup(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 643
    .local p2, "favoriteOrderList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;>;"
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 649
    .end local p2    # "favoriteOrderList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;>;"
    :cond_0
    :goto_0
    return-void

    .line 647
    .restart local p2    # "favoriteOrderList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;>;"
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "(HM)IUHostManager.java::setFavoriteOrderSetup()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "favoriteOrderList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;>;"
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->startSetFavoriteOrderSetup(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method setFileTransferId(Ljava/lang/String;I)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "transferId"    # I

    .prologue
    .line 422
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    .line 423
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 427
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :try_start_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU: setFileTransferId Listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->setFileTransferId(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Remote Exception at setFileTransferId()"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 435
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_0
    return-void
.end method

.method public setFontsSetup(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FontsSetup;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1735
    .local p2, "fontsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "(HM)HostManagerInterface.java::setFontsSetup()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1742
    .end local p2    # "fontsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    :cond_0
    :goto_0
    return-void

    .line 1740
    .restart local p2    # "fontsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "fontsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->startSetFontsSetup(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public setHomeBGSettings(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1462
    :cond_0
    :goto_0
    return-void

    .line 1459
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HostManager;->setHomeBGSettings(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setIMESetup(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/IMESetup;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1774
    .local p2, "imeList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/IMESetup;>;"
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1780
    .end local p2    # "imeList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/IMESetup;>;"
    :cond_0
    :goto_0
    return-void

    .line 1778
    .restart local p2    # "imeList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/IMESetup;>;"
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "(HM)HostManagerInterface.java::setIMESetup()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "imeList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/IMESetup;>;"
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->startSetIMESetup(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public setInstallingState(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 522
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v3, "setInstallingState(packageName, state) called"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    .line 524
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 527
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :try_start_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU: setInstallingState Listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->setInstallingState(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Remote Exception at setInstallingState()"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 535
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v3, "mIHostManagerListener is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_1
    return-void
.end method

.method public setIsFirstConnection(Z)V
    .locals 3
    .param p1, "isFirstConnection"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1584
    :goto_0
    return-void

    .line 1581
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsFirstConnection() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "HOSTMANAGER_GLOBAL_PREFERENCE"

    const-string v2, "isFirstConnection"

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->updatePreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setMyAppsSetup(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 628
    .local p2, "myAppsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "(HM)HostManagerInterface.java::setMyAppsSetup()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 635
    .end local p2    # "myAppsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    :cond_0
    :goto_0
    return-void

    .line 633
    .restart local p2    # "myAppsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "myAppsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->startSetMyAppsSetup(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public setPreferenceWithFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "prefFileName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1690
    :goto_0
    return-void

    .line 1688
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCS()::prefFileName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->setPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSettingsSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-nez v0, :cond_2

    .line 579
    :cond_1
    :goto_0
    return-void

    .line 578
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HostManager;->startSetSettingsSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTTSSetup(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/TTSSetup;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1755
    .local p2, "ttsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/TTSSetup;>;"
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1761
    .end local p2    # "ttsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/TTSSetup;>;"
    :cond_0
    :goto_0
    return-void

    .line 1759
    .restart local p2    # "ttsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/TTSSetup;>;"
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "(HM)HostManagerInterface.java::setTTSSetup()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "ttsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/TTSSetup;>;"
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->startSetTTSSetup(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public setmHostManager(Lcom/samsung/android/hostmanager/service/HostManager;)V
    .locals 3
    .param p1, "hostmanager"    # Lcom/samsung/android/hostmanager/service/HostManager;

    .prologue
    .line 79
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setmHostManager hostmanager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    .line 81
    return-void
.end method

.method public showNotiTickerToApp(Z)V
    .locals 6
    .param p1, "isShow"    # Z

    .prologue
    .line 1704
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showNotiTickerToApp() mIHostManagerListener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_1

    .line 1706
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1707
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    if-nez v1, :cond_0

    .line 1708
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "IU: showNotiTickerToApp Listener is null"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1712
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU: v Listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "returnCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->showNotiTickerToApp(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1715
    :catch_0
    move-exception v0

    .line 1716
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Remote Exception at showNotiTickerToApp()"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1721
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_1
    return-void
.end method

.method public showUnknownSourceInstallDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "hPackageName"    # Ljava/lang/String;
    .param p2, "hPendingAppDeviceId"    # Ljava/lang/String;

    .prologue
    .line 1318
    invoke-virtual {p0, p2}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getListenerByBTAddress(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 1319
    .local v2, "localListener":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    if-eqz v2, :cond_0

    .line 1320
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1323
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :try_start_0
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IU: showUnknownSourceInstallDialog() Listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;->showUnknownSourceInstallDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1325
    :catch_0
    move-exception v0

    .line 1326
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v5, "Remote Exception at showUnknownSourceInstallDialog()"

    invoke-static {v3, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1331
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_0
    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "localListener is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    :cond_1
    return-void
.end method

.method public startReset(Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1220
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1230
    :goto_0
    return-void

    .line 1224
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startReset() deviceID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->startReset(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1227
    :catch_0
    move-exception v0

    .line 1228
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startScan(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 869
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 873
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "(HM)IUHostManager.java::startScan()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->startScan(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startSytemRestore(Ljava/lang/String;I)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 927
    sget-object v1, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v2, "(HM)IUHostManager.java::startSytemRestore()"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 936
    :goto_0
    return-void

    .line 932
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->startSystemRestore(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopRestore()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1216
    :goto_0
    return-void

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->stopRestore()V

    goto :goto_0
.end method

.method public syncSHealthSupportInfo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2207
    :cond_0
    :goto_0
    return-void

    .line 2205
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, " syncSHealthSupportInfo() "

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->syncSHealthSupportInfo()V

    goto :goto_0
.end method

.method public syncWearableStatus(Ljava/lang/String;)Z
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->startSyncWearableStatus(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public unRegisterEXAPPListener(Ljava/lang/String;)Z
    .locals 7
    .param p1, "listenerHash"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1944
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 1965
    :goto_0
    return v2

    .line 1948
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Listener:: HostManager unRegisterAPPListener(remove) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIEXAPPHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIEXAPPHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1951
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Listener::IU:: ======================= unRegisterListener ====================="

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIEXAPPHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1953
    .local v1, "printListener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;>;"
    sget-object v5, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listener::IU:: HostManager listener.getKey() = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listener::IU:: HostManager listener.getValue() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1956
    .end local v1    # "printListener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;>;"
    :cond_1
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Listener::IU:: =============================================================="

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIEXAPPHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;

    .line 1958
    .local v0, "listener":Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU:: Size of ArrayList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIEXAPPHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    if-nez v0, :cond_2

    move v2, v3

    .line 1960
    goto/16 :goto_0

    .line 1962
    :cond_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v0    # "listener":Lcom/samsung/android/hostmanager/aidl/IAPPHostManagerListener;
    :cond_3
    move v2, v3

    .line 1965
    goto/16 :goto_0
.end method

.method public unRegisterListener(Ljava/lang/String;)Z
    .locals 7
    .param p1, "listenerHash"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 301
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 322
    :goto_0
    return v2

    .line 305
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Listener::IU:: HostManager listener(remove) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 308
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Listener::IU:: ======================= unRegisterListener ====================="

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 310
    .local v1, "printListener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    sget-object v5, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listener::IU:: HostManager listener.getKey() = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listener::IU:: HostManager listener.getValue() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 313
    .end local v1    # "printListener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;>;"
    :cond_1
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Listener::IU:: =============================================================="

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    .line 315
    .local v0, "listener":Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;
    sget-object v2, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU:: Size of ArrayList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mIHostManagerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    if-nez v0, :cond_2

    move v2, v3

    .line 317
    goto/16 :goto_0

    .line 319
    :cond_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v0    # "listener":Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;
    :cond_3
    move v2, v3

    .line 322
    goto/16 :goto_0
.end method

.method public uninstallApp(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "from"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    :goto_0
    return v0

    .line 185
    :cond_0
    const-string v1, "HMPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": uninstallApp() called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_2

    .line 187
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    const-string v1, "android.permission.DELETE_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/service/HostManager;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HostManager;->startUninstallApp(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 190
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    const-string v1, "No need to enforce delete permission for non-samsung devices."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :cond_2
    const-string v1, "HMPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Host Manager instance null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateApp(II)Z
    .locals 4
    .param p1, "appID"    # I
    .param p2, "appVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 202
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    :goto_0
    return v0

    .line 206
    :cond_0
    const-string v1, "HMPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": updateApp() called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/service/HostManager;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->startUpdateApp(II)Z

    move-result v0

    goto :goto_0

    .line 212
    :cond_1
    const-string v1, "HMPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/hostmanager/service/IUHostManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Host Manager instance null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updatePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/IUHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1342
    :goto_0
    return-void

    .line 1341
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->updatePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
