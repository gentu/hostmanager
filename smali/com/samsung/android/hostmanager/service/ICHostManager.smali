.class public Lcom/samsung/android/hostmanager/service/ICHostManager;
.super Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;
.source "ICHostManager.java"


# static fields
.field public static BACKUP_TYPE:I = 0x0

.field public static final GET_WEARABLE_STATUS:I = 0x1

.field private static final PM_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static final WEARABLE_BACKUP_APP_LIST:I = 0x2

.field private static alwaysAllowedAppArray:[Ljava/lang/String;

.field private static mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHMHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field public mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

.field private mHMSetupHandler:Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;

.field private mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

.field private mICHostManagerListener:Lcom/samsung/android/hostmanager/aidl/ICHostManagerListener;

.field mIRepository:Lcom/samsung/android/hostmanager/model/IRepository;

.field public mIsBackupActive:Z

.field private final mProviderSvcConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const-class v0, Lcom/samsung/android/hostmanager/service/ICHostManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    .line 55
    const-class v0, Lcom/samsung/android/hostmanager/pm/GearPackageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->PM_TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/samsung/android/hostmanager/service/ICHostManager;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/service/ICHostManager;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    .line 880
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.android.GeoLookout"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->alwaysAllowedAppArray:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/aidl/ICHostManagerInterface$Stub;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mIsBackupActive:Z

    .line 84
    new-instance v0, Lcom/samsung/android/hostmanager/service/ICHostManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/service/ICHostManager$1;-><init>(Lcom/samsung/android/hostmanager/service/ICHostManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mProviderSvcConn:Landroid/content/ServiceConnection;

    .line 110
    new-instance v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/service/ICHostManager$2;-><init>(Lcom/samsung/android/hostmanager/service/ICHostManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/samsung/android/hostmanager/model/IRepository;

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/model/IRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mIRepository:Lcom/samsung/android/hostmanager/model/IRepository;

    .line 73
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/service/ICHostManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/service/ICHostManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/service/ICHostManager;)Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/service/ICHostManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMSetupHandler:Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/service/ICHostManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/service/ICHostManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;
    .locals 3

    .prologue
    .line 76
    sget-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value mICHostManager:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    return-object v0
.end method

.method private getNotificationAppIfAlwaysAllowed(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/NotificationApp;)Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "app"    # Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .prologue
    .line 886
    sget-object v3, Lcom/samsung/android/hostmanager/service/ICHostManager;->alwaysAllowedAppArray:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 887
    .local v0, "alwaysPackage":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 888
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/samsung/android/hostmanager/notification/Utils;->getLocaleApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 889
    .local v1, "label":Ljava/lang/String;
    new-instance p2, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .end local p2    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 890
    .restart local p2    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/samsung/android/hostmanager/notification/Utils;->getPredefinedAppId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->setAppId(I)V

    .line 894
    .end local v0    # "alwaysPackage":Ljava/lang/String;
    .end local v1    # "label":Ljava/lang/String;
    :cond_0
    return-object p2

    .line 886
    .restart local v0    # "alwaysPackage":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancelFileonSending(ILjava/lang/String;)V
    .locals 1
    .param p1, "transferID"    # I
    .param p2, "hPackageName"    # Ljava/lang/String;

    .prologue
    .line 742
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 747
    :goto_0
    return-void

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->cancelFileonSending(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public cloudBackup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "deviceID"    # Ljava/lang/String;
    .param p4, "appPackage"    # Ljava/lang/String;
    .param p5, "intentFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 642
    return-void
.end method

.method public connectMarket()V
    .locals 0

    .prologue
    .line 657
    return-void
.end method

.method public getAddGalleryImageFromWMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "deviceID"    # Ljava/lang/String;
    .param p4, "isResponse"    # Z

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/service/HostManager;->getAddGalleryImageFromWMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1130
    :cond_0
    return-void
.end method

.method public getAlertNotificationAppList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 752
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 761
    :goto_0
    return-object v1

    .line 757
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->getAlertNotiAppList()Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAllWearableStatus()Ljava/util/ArrayList;
    .locals 8
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
    .line 574
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v5

    if-nez v5, :cond_1

    .line 575
    const/4 v0, 0x0

    .line 612
    :cond_0
    return-object v0

    .line 578
    :cond_1
    const/4 v0, 0x0

    .line 579
    .local v0, "arrayDeviceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayDeviceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .restart local v0    # "arrayDeviceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManagerList()Ljava/util/Map;

    move-result-object v3

    .line 584
    .local v3, "mapDeviceManager":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/hostmanager/manager/DeviceManager;>;"
    if-eqz v3, :cond_2

    .line 585
    sget-object v5, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ST::getAllWearableStatus()::DeviceManager list size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_2
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 590
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 589
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 592
    .local v2, "deviceManager":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/manager/DeviceManager;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/hostmanager/manager/DeviceManager;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getStatusManager()Lcom/samsung/android/hostmanager/manager/IStatusManager;

    move-result-object v4

    .line 594
    .local v4, "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    const/4 v1, 0x0

    .line 595
    .local v1, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    if-eqz v4, :cond_3

    .line 597
    invoke-interface {v4}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v1

    .line 603
    :cond_3
    if-eqz v1, :cond_4

    .line 604
    sget-object v5, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v7, "ST::getAllWearableStatus()::DeviceInfo added"

    invoke-static {v5, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 607
    :cond_4
    sget-object v5, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v7, "ST::getAllWearableStatus()::deviceInfo is null. deviceInfo not yet ready"

    invoke-static {v5, v7}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getAllWearableStatus()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedByDeviceID(Ljava/lang/String;)I
    .locals 4
    .param p1, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 1167
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    .line 1168
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getConnectedByDeviceID(Ljava/lang/String;)I

    move-result v0

    .line 1169
    .local v0, "connectStatus":I
    sget-object v1, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectedByDeviceID()::btAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  connectStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    .end local v0    # "connectStatus":I
    :goto_0
    return v0

    .line 1172
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v2, "mHostManager is null."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectedType(Ljava/lang/String;)I
    .locals 4
    .param p1, "btAddress"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 1152
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1163
    :goto_0
    return v0

    .line 1156
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_1

    .line 1157
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetConnectedWearableType(Ljava/lang/String;)I

    move-result v0

    .line 1158
    .local v0, "connectedType":I
    sget-object v1, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectedType()::btAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  conntectedType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1161
    .end local v0    # "connectedType":I
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v2, "mHostManager is null."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getConnectedWearableDeviceID()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 994
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 995
    const/4 v0, 0x0

    .line 1014
    :cond_0
    return-object v0

    .line 998
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConnectedWearableDeviceID()::mHostManager = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const/4 v0, 0x0

    .line 1002
    .local v0, "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v3, :cond_0

    .line 1003
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1004
    .restart local v0    # "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetConnectedWearableDevices()Ljava/util/ArrayList;

    move-result-object v2

    .line 1005
    .local v2, "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;>;"
    if-eqz v2, :cond_0

    .line 1006
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;

    .line 1007
    .local v1, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1008
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    sget-object v4, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConnectedWearableDeviceID():: added : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDeletedGalleryImagesFromWMS([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileNames"    # [Ljava/lang/String;
    .param p2, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->getDeletedGalleryImagesFromWMS([Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    :cond_0
    return-void
.end method

.method public getDeviceNameByDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 1095
    sget-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceNameByDeviceId()::mHostManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->getDeviceNameByDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1100
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGalleryListFromWMS([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;
    .param p2, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/HostManager;->getGalleryListFromWMS([Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    :cond_0
    return-void
.end method

.method public getHomeBGSettings(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 1104
    sget-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHomeBGSettings()::mHostManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HostManager;->updateHomeBGSettings(ILjava/lang/String;Ljava/lang/String;)V

    .line 1109
    :cond_0
    return-void
.end method

.method public getHomeBGWallpaperFromWMS([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "wallpaperNameArray"    # [Ljava/lang/String;
    .param p2, "wallpaperDataArray"    # [Ljava/lang/String;
    .param p3, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HostManager;->getHomeBGWallpaperFromWMS([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    :cond_0
    return-void
.end method

.method public getHostStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .locals 5

    .prologue
    .line 550
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 551
    const/4 v0, 0x0

    .line 568
    :cond_0
    :goto_0
    return-object v0

    .line 553
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v4, "ST::getHostStatus()"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    const/4 v1, 0x0

    .line 556
    .local v1, "deviceManager":Lcom/samsung/android/hostmanager/manager/DeviceManager;
    const/4 v2, 0x0

    .line 558
    .local v2, "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v3

    const-string v4, "Gear"

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManagerByType(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v1

    .line 560
    if-eqz v1, :cond_0

    .line 561
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getStatusManager()Lcom/samsung/android/hostmanager/manager/IStatusManager;

    move-result-object v2

    .line 563
    if-eqz v2, :cond_0

    .line 564
    invoke-interface {v2}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getHostStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getMoreNotificationAppList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 780
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 789
    :goto_0
    return-object v1

    .line 785
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->getMoreNotiAppList()Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNormalNotificationAppList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 766
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 775
    :goto_0
    return-object v1

    .line 771
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->getNormalNotiAppList()Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNotificationInfo(Ljava/lang/String;I)Ljava/util/List;
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notiType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_1

    .line 809
    const/4 v14, 0x0

    .line 877
    :cond_0
    :goto_0
    return-object v14

    .line 811
    :cond_1
    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNotificationInfo ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "notiType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const/4 v14, 0x0

    .line 816
    .local v14, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getAllWearableStatus()Ljava/util/ArrayList;

    move-result-object v15

    .line 818
    .local v15, "wearableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    if-eqz v15, :cond_c

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 819
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationInfo;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 822
    .restart local v14    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationInfo;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    .line 823
    .local v10, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getNotification()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 824
    const/4 v9, 0x0

    .line 826
    .local v9, "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    and-int/lit8 v2, p2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 827
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getNotificationAppIfAlwaysAllowed(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/NotificationApp;)Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    move-result-object v9

    .line 829
    :cond_3
    if-nez v9, :cond_4

    .line 831
    :try_start_0
    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 832
    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v2

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->isExistAndMarked(Ljava/lang/String;I)Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 838
    :cond_4
    :goto_2
    if-eqz v9, :cond_2

    .line 839
    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getNotification()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "DeviceBTNotificationAttributePriority"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/notification/Utils;->parseComponents(Ljava/lang/String;)[I

    move-result-object v7

    .line 841
    .local v7, "components":[I
    if-eqz v7, :cond_5

    array-length v2, v7

    if-nez v2, :cond_6

    :cond_5
    const/4 v2, 0x4

    new-array v7, v2, [I

    .end local v7    # "components":[I
    fill-array-data v7, :array_0

    .line 843
    .restart local v7    # "components":[I
    :cond_6
    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getNotification()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "DeviceBTNotificationSize"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 845
    .local v12, "maxByteDevice":I
    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getMaxByte()I

    move-result v2

    const/16 v3, 0x19

    if-ne v2, v3, :cond_7

    move v6, v12

    .line 848
    .local v6, "maxByte":I
    :goto_3
    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getNotificationSettings(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/NotificationSettings;

    move-result-object v13

    .line 849
    .local v13, "nSettings":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    if-nez v13, :cond_8

    .line 850
    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v3, "getNotificationInfo :: getNotificationSettings is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 834
    .end local v6    # "maxByte":I
    .end local v7    # "components":[I
    .end local v12    # "maxByteDevice":I
    .end local v13    # "nSettings":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :catch_0
    move-exception v11

    .line 835
    .local v11, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v11}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_2

    .line 846
    .end local v11    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    .restart local v7    # "components":[I
    .restart local v12    # "maxByteDevice":I
    :cond_7
    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getMaxByte()I

    move-result v6

    goto :goto_3

    .line 855
    .restart local v6    # "maxByte":I
    .restart local v13    # "nSettings":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :cond_8
    const-string v2, "com.samsung.android.application.smartassistant"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 856
    const/4 v8, 0x0

    .line 860
    .local v8, "limitNotification":Z
    :goto_4
    new-instance v2, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v4

    .line 861
    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getAppId()I

    move-result v5

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[IZ)V

    .line 860
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] for Device("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is allowed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 858
    .end local v8    # "limitNotification":Z
    :cond_9
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isUltraPowerSavingMode()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v8, 0x1

    .restart local v8    # "limitNotification":Z
    :goto_5
    goto :goto_4

    .end local v8    # "limitNotification":Z
    :cond_a
    invoke-virtual {v13}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->getLimitNotification()Z

    move-result v8

    goto :goto_5

    .line 865
    .end local v6    # "maxByte":I
    .end local v7    # "components":[I
    .end local v9    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .end local v12    # "maxByteDevice":I
    .end local v13    # "nSettings":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :cond_b
    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v3, "deviceInfo.getNotification() is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 869
    .end local v10    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :cond_c
    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v3, "we do not have connected devices"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_d
    if-nez v14, :cond_0

    .line 874
    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification for application ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 841
    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x1
    .end array-data
.end method

.method public getNotificationSettings(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 938
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 939
    const/4 v1, 0x0

    .line 949
    :goto_0
    return-object v1

    .line 942
    :cond_0
    const/4 v1, 0x0

    .line 944
    .local v1, "setting":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->getNotificationSettings()Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 945
    :catch_0
    move-exception v0

    .line 946
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception while getNotificationSettings"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getPackageName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "AppId"    # I

    .prologue
    .line 954
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v4

    if-nez v4, :cond_1

    .line 955
    const/4 v2, 0x0

    .line 986
    :cond_0
    :goto_0
    return-object v2

    .line 958
    :cond_1
    sget-object v4, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPackageName deviceId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AppId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const/4 v2, 0x0

    .line 961
    .local v2, "result":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 962
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getAllWearableStatus()Ljava/util/ArrayList;

    move-result-object v3

    .line 964
    .local v3, "wearableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 965
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    .line 966
    .local v0, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getNotification()Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 967
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object p1

    .line 974
    .end local v0    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .end local v3    # "wearableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 975
    :cond_5
    sget-object v4, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v5, "deviceId is still null!"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    :goto_1
    if-nez v2, :cond_0

    .line 984
    sget-object v4, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notification for appid ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 978
    :cond_6
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mContext:Landroid/content/Context;

    invoke-interface {v4, p2, v5}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->getPackageNameByAppId(ILandroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 979
    :catch_0
    move-exception v1

    .line 980
    .local v1, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_1
.end method

.method public getPackageNameByDeviceID(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 1178
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/hostmanager/service/HostManager;->getPackageNameByDeviceID(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, "packageName":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageNameByDeviceID()::btAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  packageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1183
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v2, "mHostManager is null."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWearableStatus(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .locals 5
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 618
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 619
    const/4 v0, 0x0

    .line 631
    :goto_0
    return-object v0

    .line 622
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWearableStatus deviceId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const/4 v0, 0x0

    .line 625
    .local v0, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v2

    .line 626
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getStatusManager()Lcom/samsung/android/hostmanager/manager/IStatusManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 627
    :catch_0
    move-exception v1

    .line 628
    .local v1, "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 529
    sget-object v1, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v2, "init"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mContext:Landroid/content/Context;

    .line 531
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 532
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 533
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mProviderSvcConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 535
    return-void
.end method

.method public installApkToWearable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .param p3, "consumerAppPackageName"    # Ljava/lang/String;
    .param p4, "from"    # I

    .prologue
    .line 661
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installApkToWearable: mHMProviderService value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v0, :cond_0

    .line 667
    sget-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->PM_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": installApkToWearable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->requestInstallApkToWearable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public installAppViaForceWifiDirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "appPath"    # Ljava/lang/String;
    .param p3, "consumerAppPackageName"    # Ljava/lang/String;
    .param p4, "from"    # I

    .prologue
    .line 674
    sget-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installAppViaForceWifiDirect: mHMProviderService value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v0, :cond_0

    .line 676
    sget-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->PM_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": installAppViaForceWifiDirect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->installAppViaForceWifiDirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 679
    :cond_0
    return-void
.end method

.method public isListCreated(Ljava/lang/String;)Z
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 794
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_1

    .line 803
    :cond_0
    :goto_0
    return v1

    .line 799
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->isListCreated()Z
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public isUltraPowerSavingMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1207
    const/4 v0, 0x0

    .line 1210
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isUltraPowerSavingMode()Z

    move-result v0

    goto :goto_0
.end method

.method public manageConnectionInfo(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "connType"    # I

    .prologue
    .line 697
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    const/4 v0, 0x0

    .line 702
    :goto_0
    return v0

    .line 700
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM::manageConnectionInfo findPeers : deviceID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->findPeers(Ljava/lang/String;)V

    .line 702
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onWearableStatusInfo(Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;)V
    .locals 2
    .param p1, "wearableStatusInfo"    # Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->onWearableStatusInfo(Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;)V

    .line 1194
    :goto_0
    return-void

    .line 1192
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v1, "mHostManager is null."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playDisconnectSound()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->playDisconnectSound()V

    .line 1202
    :goto_0
    return-void

    .line 1200
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v1, "mHostManager is null."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/hostmanager/aidl/ICHostManagerListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/hostmanager/aidl/ICHostManagerListener;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    const/4 v0, 0x0

    .line 543
    :goto_0
    return v0

    .line 542
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mICHostManagerListener:Lcom/samsung/android/hostmanager/aidl/ICHostManagerListener;

    .line 543
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestBackupAgentInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 706
    return-void
.end method

.method public requestBackupAgentInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "packagename"    # Ljava/lang/String;

    .prologue
    .line 712
    return-void
.end method

.method public requestChangeSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 716
    const-string v0, "powerkeydoublepressing"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendPowerKeyDoublePressing(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    const-string v0, "smartrelay"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updateSmartRelay(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 720
    :cond_2
    const-string v0, "wakeupbygesture"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updateWakeupByGesture(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public restoreHomeBGSettings(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 1112
    sget-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreHomeBGSettings()::mHostManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HostManager;->restoreHomeBGSettings(Ljava/lang/String;ILjava/lang/String;)V

    .line 1117
    :cond_0
    return-void
.end method

.method public restoreWearableAppData(Lcom/samsung/android/hostmanager/aidl/BackupInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "restoreInfo"    # Lcom/samsung/android/hostmanager/aidl/BackupInfo;
    .param p2, "deviceID"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "intentFilter"    # Ljava/lang/String;

    .prologue
    .line 652
    return-void
.end method

.method public setInstallStatusHandler(Landroid/os/Handler;)V
    .locals 2
    .param p1, "aHMInstallStateHandler"    # Landroid/os/Handler;

    .prologue
    .line 728
    sget-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v1, "setInstallStatusHandler(aHMInstallStateHandler) called"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setCheckInstallStatusHandler(Landroid/os/Handler;)V

    .line 734
    :goto_0
    return-void

    .line 732
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v1, "ICHostManager is not bound to HMSAPProviderService"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNeedtoGetWallpaper(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HostManager;->setNeedtoGetWallpaper(Z)V

    .line 1148
    :cond_0
    return-void
.end method

.method public setNotificationAppMarked(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "marked"    # Z

    .prologue
    .line 899
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 907
    :goto_0
    return-void

    .line 903
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->setAppMarked(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setNotificationMarkAll(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "marked"    # Z

    .prologue
    .line 911
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 920
    :goto_0
    return-void

    .line 915
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->markAll(Z)V
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 917
    :catch_0
    move-exception v0

    .line 918
    .local v0, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setNotificationOnOff(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "bOnOff"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1019
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNotificationOnOff() value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deviceId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, p1, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendNotiOnOffReq(Ljava/lang/String;I)V

    .line 1026
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getNotificationSettings(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/NotificationSettings;

    move-result-object v1

    .line 1027
    .local v1, "settings":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    if-eqz v1, :cond_0

    .line 1028
    invoke-virtual {v1, p2}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->setOn(Z)V

    .line 1029
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->setNotificationSettings(Lcom/samsung/android/hostmanager/aidl/NotificationSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1031
    .end local v1    # "settings":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception while setNotificationOnOff"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1024
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setNotificationPreview(Ljava/lang/String;I)V
    .locals 5
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1039
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNotificationPreview() value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updatePreviewMessage(Ljava/lang/String;I)Z

    .line 1045
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getNotificationSettings(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/NotificationSettings;

    move-result-object v1

    .line 1046
    .local v1, "settings":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    if-eqz v1, :cond_0

    .line 1047
    invoke-virtual {v1, p2}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->setPreviewMessage(I)V

    .line 1048
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->setNotificationSettings(Lcom/samsung/android/hostmanager/aidl/NotificationSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1050
    .end local v1    # "settings":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :catch_0
    move-exception v0

    .line 1051
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception while setNotificationSettings"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setNotificationScreenOnOff(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "bScreenOnOff"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1058
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNotificationScreenOnoff() value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updateNotiScreenOnoffMessage(Ljava/lang/String;Z)Z

    .line 1064
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getNotificationSettings(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/NotificationSettings;

    move-result-object v1

    .line 1065
    .local v1, "settings":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    if-eqz v1, :cond_0

    .line 1066
    invoke-virtual {v1, p2}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->setScreenOnoff(Z)V

    .line 1067
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->setNotificationSettings(Lcom/samsung/android/hostmanager/aidl/NotificationSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1069
    .end local v1    # "settings":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :catch_0
    move-exception v0

    .line 1070
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception while setNotificationSettings"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setNotificationSettings(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/NotificationSettings;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "setting"    # Lcom/samsung/android/hostmanager/aidl/NotificationSettings;

    .prologue
    .line 924
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 934
    :goto_0
    return-void

    .line 929
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->setNotificationSettings(Lcom/samsung/android/hostmanager/aidl/NotificationSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 930
    :catch_0
    move-exception v0

    .line 931
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v2, "Exception while setNotificationSettings"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setNotificationSummaryPanelOnOff(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "bOnOff"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1077
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1092
    :cond_0
    :goto_0
    return-void

    .line 1080
    :cond_1
    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNotificationSummaryPanelOnOff() value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updateSummaryPanelOnoffMessage(Ljava/lang/String;Z)Z

    .line 1083
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getNotificationSettings(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/NotificationSettings;

    move-result-object v1

    .line 1084
    .local v1, "settings":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    if-eqz v1, :cond_0

    .line 1085
    invoke-virtual {v1, p2}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->setSummaryPanel(Z)V

    .line 1086
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->setNotificationSettings(Lcom/samsung/android/hostmanager/aidl/NotificationSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1088
    .end local v1    # "settings":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :catch_0
    move-exception v0

    .line 1089
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception while setNotificationSettings"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSetupHandler(Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;)V
    .locals 0
    .param p1, "hmSetupHandler"    # Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;

    .prologue
    .line 737
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMSetupHandler:Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;

    .line 738
    return-void
.end method

.method public setmHostManager(Lcom/samsung/android/hostmanager/service/HostManager;)V
    .locals 0
    .param p1, "hostmanager"    # Lcom/samsung/android/hostmanager/service/HostManager;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    .line 82
    return-void
.end method

.method public uninstallAppToWearable(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "from"    # I

    .prologue
    .line 683
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHostManager:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->checkPermissionToCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    sget-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uninstallAppToWearable: mHMProviderService value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v0, :cond_0

    .line 689
    sget-object v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->PM_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/hostmanager/service/ICHostManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": uninstallAppToWearable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->requestUninstallAppToWearable(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
