.class public abstract Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;
.super Ljava/lang/Object;
.source "BaseHostManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$OnConnectedCb;
    }
.end annotation


# static fields
.field public static CANCEL:I = 0x0

.field public static CHANGECONNECTION:I = 0x0

.field public static CONNECT:I = 0x0

.field public static CONNECT_BY_DEVICE_PICKER:I = 0x0

.field public static DISCONNECT:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "BaseHostManagerInterface"

.field public static WIFID_CONNECT:I

.field public static WIFID_DISCONNECT:I

.field protected static volatile mHostManagerInterface:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

.field private static synchObj:Ljava/lang/Object;


# instance fields
.field public connectCallback:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$OnConnectedCb;

.field private final mBTReceiver:Landroid/content/BroadcastReceiver;

.field protected mContext:Landroid/content/Context;

.field private final mHMServiceConn:Landroid/content/ServiceConnection;

.field protected mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

.field public mIsReadyToSwiching:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mHostManagerInterface:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->synchObj:Ljava/lang/Object;

    .line 190
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->CONNECT:I

    .line 191
    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->DISCONNECT:I

    .line 192
    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->CHANGECONNECTION:I

    .line 193
    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->CONNECT_BY_DEVICE_PICKER:I

    .line 194
    const/4 v0, 0x5

    sput v0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->CANCEL:I

    .line 195
    const/4 v0, 0x7

    sput v0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->WIFID_CONNECT:I

    .line 196
    const/16 v0, 0x8

    sput v0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->WIFID_DISCONNECT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIsReadyToSwiching:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->connectCallback:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$OnConnectedCb;

    .line 287
    new-instance v0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$2;-><init>(Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;)V

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 396
    new-instance v0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$3;-><init>(Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;)V

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mHMServiceConn:Landroid/content/ServiceConnection;

    .line 41
    const-string v0, "BaseHostManagerInterface"

    const-string v1, "iu::BaseHostManagerInterface() created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mBTReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->synchObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->initHMObject(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getObject()Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mHostManagerInterface:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    return-object v0
.end method

.method private initHMObject(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    const-string v0, "BaseHostManagerInterface"

    const-string v1, "mIUHostManager is still null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "BaseHostManagerInterface"

    const-string v1, "Try to bind with HostManager again."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->init(Landroid/content/Context;)V

    .line 314
    :goto_0
    const/4 v0, -0x3

    return v0

    .line 312
    :cond_0
    const-string v0, "BaseHostManagerInterface"

    const-string v1, "mContext is still null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public IsAvailable()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disconnect(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->unbindService(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public getAllBondedWearableDevices()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    invoke-interface {v1}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;->getAllBondedWearableDevices()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-object v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectedType(Ljava/lang/String;)I
    .locals 4
    .param p1, "BTAddress"    # Ljava/lang/String;

    .prologue
    .line 144
    const-string v1, "BaseHostManagerInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectedType() BTAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    invoke-interface {v1, p1}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;->getConnectedType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 152
    :goto_0
    return v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 152
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getConnectedWearableDeviceID(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    new-instance v1, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    invoke-direct {v1}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;-><init>()V

    .line 119
    .local v1, "provider":Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->queryDevicebyPackageNameRegistryData(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 121
    .local v0, "device":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;

    .line 122
    .local v2, "registryData":Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;
    iget v4, v2, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->isConnected:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 123
    iget-object v3, v2, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceBtID:Ljava/lang/String;

    .line 126
    .end local v2    # "registryData":Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getConnectedWearableDevices()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    invoke-interface {v1}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;->getConnectedWearableDevices()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "BTAddress"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string v1, "BaseHostManagerInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceType() BTAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    invoke-interface {v1, p1}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 164
    :goto_0
    return-object v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 164
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getHMListener()Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;
    .locals 2

    .prologue
    .line 57
    const-string v0, "BaseHostManagerInterface"

    const-string v1, "iu::BaseActivity getHMListener(). return null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    const-string v0, "BaseHostManagerInterface"

    const-string v1, "iu::BaseActivity getpackageName(). return null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWearableDeviceIDByPackageNamae(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    new-instance v1, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    invoke-direct {v1}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;-><init>()V

    .line 132
    .local v1, "provider":Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->queryDevicebyPackageNameRegistryData(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 134
    .local v0, "device":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;

    .line 135
    .local v2, "registryData":Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;
    iget-object v4, v2, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceBtID:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 136
    iget-object v3, v2, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceBtID:Ljava/lang/String;

    .line 139
    .end local v2    # "registryData":Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getWearableStatus(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .locals 5
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 168
    const-string v2, "BaseHostManagerInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWearableStatus() deviceID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-object v1

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    invoke-interface {v2, p1}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;->getWearableStatus(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const-string v1, "BaseHostManagerInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iu::init()::mIUHostManager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mContext:Landroid/content/Context;

    .line 70
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    if-nez v1, :cond_0

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.hostmanager.service.IUHostManager"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.hostmanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mHMServiceConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 77
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string v1, "BaseHostManagerInterface"

    const-string v2, "init()::context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public manageConnectionInfo(Ljava/lang/String;I)I
    .locals 7
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "connType"    # I

    .prologue
    .line 206
    const-string v0, "BaseHostManagerInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manageConnectionInfo()::deviceID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", connType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    if-eqz p1, :cond_4

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 209
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    if-eqz v0, :cond_3

    .line 210
    const-string v0, "BaseHostManagerInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIUHostManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 212
    .local v3, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v3, :cond_1

    .line 213
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;

    const-string v2, "BaseHostManagerInterface.enabling BT state"

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;-><init>(Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;Ljava/lang/String;Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;I)V

    .line 264
    invoke-virtual {v0}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;->start()V

    .line 265
    const/4 v0, 0x0

    .line 284
    .end local v3    # "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    :goto_0
    return v0

    .line 267
    .restart local v3    # "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    const-string v0, "BaseHostManagerInterface"

    const-string v1, "BT is already enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    if-nez v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->initHMObject(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;->manageConnectionInfo(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 276
    .end local v3    # "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->initHMObject(Landroid/content/Context;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 279
    :cond_4
    const/4 v0, -0x2

    goto :goto_0

    .line 281
    :catch_0
    move-exception v6

    .line 282
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 284
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;)Z
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    .prologue
    .line 319
    :try_start_0
    const-string v1, "BaseHostManagerInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IU::registerListener() listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v1, "BaseHostManagerInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IU::registerListener() listener.hashcode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;->registerListener(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 328
    :goto_0
    return v1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BaseHostManagerInterface"

    const-string v2, "IU::onServiceConnected() Exception!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 328
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerListenerByPackageName(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;)Z
    .locals 4
    .param p1, "PackageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    .prologue
    .line 333
    :try_start_0
    const-string v1, "BaseHostManagerInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IU::registerListenerByPackageName() listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v1, "BaseHostManagerInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IU::registerListenerByPackageName() PacageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;->registerListener(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 342
    :goto_0
    return v1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BaseHostManagerInterface"

    const-string v2, "IU::onServiceConnected() Exception!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 342
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unbindService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mHMServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterListener()V
    .locals 4

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->getHMListener()Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    move-result-object v1

    if-nez v1, :cond_1

    .line 375
    const-string v1, "BaseHostManagerInterface"

    const-string v2, "there is no listener to unregister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    const-string v1, "BaseHostManagerInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listener::IU::HostManagerInterface.java::unregisterListener() mIHMListener.hashCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 379
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->getHMListener()Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 383
    const-string v1, "BaseHostManagerInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listener::IU::HostManagerInterface.java::unregisterListener() getPackageName() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 384
    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 383
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;->unRegisterListener(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 387
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    invoke-virtual {p0}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->getHMListener()Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;->unRegisterListener(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public unregisterListener(Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/hostmanager/aidl/IHostManagerListener;

    .prologue
    .line 346
    const-string v1, "BaseHostManagerInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listener::IU::HostManagerInterface.java::unregisterListener() mIHMListener.hashCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 348
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;->unRegisterListener(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterListenerByPackageName(Ljava/lang/String;)V
    .locals 4
    .param p1, "PackageName"    # Ljava/lang/String;

    .prologue
    .line 360
    const-string v1, "BaseHostManagerInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listener::IU::HostManagerInterface.java::unregisterListenerByPackageName() PackageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    invoke-interface {v1, p1}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;->unRegisterListener(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
