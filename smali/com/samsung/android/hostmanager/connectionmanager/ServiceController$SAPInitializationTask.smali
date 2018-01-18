.class Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;
.super Ljava/lang/Object;
.source "ServiceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SAPInitializationTask"
.end annotation


# instance fields
.field accessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

.field isFindPeerNeeded:Z

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
    .param p2, "manager"    # Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    .prologue
    const/4 v1, 0x0

    .line 3030
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3027
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->accessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    .line 3028
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->isFindPeerNeeded:Z

    .line 3031
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->accessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    .line 3032
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->isFindPeerNeeded:Z

    .line 3033
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v14, 0x10

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 3038
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->accessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    if-nez v7, :cond_1

    .line 3039
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMWS] accessoryManager is null!"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3236
    :cond_0
    :goto_0
    return-void

    .line 3043
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMWS] Run SAP Connected Device Task"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3045
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->accessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->getConnectedAccessories()Ljava/util/List;

    move-result-object v3

    .line 3047
    .local v3, "devicelist":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessorymanager/SamDevice;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-ne v7, v11, :cond_3

    .line 3048
    :cond_2
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMWS] No SAP connected device"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3057
    :cond_3
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMWS] get AC device list for SAP"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3058
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    .line 3059
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr()Ljava/util/Set;

    move-result-object v0

    .line 3061
    .local v0, "AcDevices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 3063
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessorymanager/SamDevice;

    .line 3065
    .local v2, "device":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CMWS] SAP connected device address: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3066
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for profile transport type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3067
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3065
    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v6

    .line 3071
    .local v6, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v6, :cond_4

    .line 3073
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v11, :cond_4

    .line 3075
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    .line 3076
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 3075
    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putRequestedDeviceList(Ljava/lang/String;)Z

    .line 3077
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMSC][jdub] SPP or SCS is connected. set address to DataExchanger"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v8

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->setAddress(Ljava/lang/String;)V

    .line 3081
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v8

    if-ne v8, v13, :cond_5

    .line 3083
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CMWS] Set already SPP connected device to Wearable State : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3085
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3083
    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3086
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v8, v6, v9, v10}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 3089
    iput-boolean v11, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->isFindPeerNeeded:Z

    .line 3092
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v8, v6, v9, v10}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 3095
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v8, v6, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v4

    .line 3096
    .local v4, "isConnected":Z
    if-ne v11, v4, :cond_4

    .line 3098
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMWS] All profiles are connected, update state map to CONNECTED"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3099
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getNotifyEventTask()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    move-result-object v8

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->setState2Map(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3102
    .end local v4    # "isConnected":Z
    :cond_5
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v8

    if-ne v8, v14, :cond_4

    .line 3104
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CMWS] SAP connected for SCS profile device address: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3105
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3104
    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3107
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isWifiOr3GConnected()Z

    move-result v5

    .line 3108
    .local v5, "isWifi3GEnabled":Z
    if-nez v5, :cond_6

    .line 3110
    iput-boolean v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->isFindPeerNeeded:Z

    .line 3111
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMAC]  isWifi3GEnabled is false, SCS is Logged out"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3112
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->LOGGED_OUT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v8, v6, v9, v10}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    goto/16 :goto_1

    .line 3117
    :cond_6
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMAC]  isWifi3GEnabled is true, SCS is Connected"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3118
    iput-boolean v11, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->isFindPeerNeeded:Z

    .line 3119
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v8, v6, v9, v10}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    goto/16 :goto_1

    .line 3130
    .end local v2    # "device":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    .end local v5    # "isWifi3GEnabled":Z
    .end local v6    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    .line 3131
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getLastConnectedDeviceAddr_bleAcs()Ljava/util/Set;

    move-result-object v1

    .line 3133
    .local v1, "AcDevices_bleACS":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-ne v7, v11, :cond_d

    .line 3135
    :cond_8
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMWS] No ble ACS device for SAP. This can be Data Cleared or First time CM is up)"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3137
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessorymanager/SamDevice;

    .line 3139
    .restart local v2    # "device":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CMWS] SAP connected device address: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3140
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for profile transport type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3141
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "and productID:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getProductId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3139
    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3144
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v6

    .line 3146
    .restart local v6    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getProductId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getProductId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "GEAR2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-ne v11, v8, :cond_9

    .line 3148
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMWS] SAP connected device is related to Gear2, update the device list"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3151
    if-eqz v6, :cond_9

    .line 3153
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    .line 3154
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 3153
    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putRequestedDeviceList(Ljava/lang/String;)Z

    .line 3156
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMSC][jdub] SPP or SCS is connected. set address to DataExchanger"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3158
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v8

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->setAddress(Ljava/lang/String;)V

    .line 3160
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v8

    if-ne v8, v13, :cond_b

    .line 3162
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CMWS] Set already SPP connected device to Wearable State : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3164
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3162
    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3165
    iput-boolean v11, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->isFindPeerNeeded:Z

    .line 3166
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v8, v6, v9, v10}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 3169
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v8, v6, v9, v10}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 3174
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isAlreadyHFPConnectedDeviceList(Ljava/lang/String;)Z

    move-result v8

    if-ne v11, v8, :cond_a

    .line 3177
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CMWS] Set even already HFP connected device to Wearable State : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3179
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3177
    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3181
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v8, v6, v9, v10}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 3184
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->removeAlreadyHFPConnectedDeviceList(Ljava/lang/String;)Z

    .line 3188
    :cond_a
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v8, v6, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v4

    .line 3189
    .restart local v4    # "isConnected":Z
    if-ne v11, v4, :cond_9

    .line 3191
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMWS] All profiles are connected, update state map to CONNECTED"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3192
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getNotifyEventTask()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    move-result-object v8

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->setState2Map(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3195
    .end local v4    # "isConnected":Z
    :cond_b
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v8

    if-ne v8, v14, :cond_9

    .line 3198
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CMWS] SAP connected for SCS profile device address: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3199
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3198
    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3201
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->isWifiOr3GConnected()Z

    move-result v5

    .line 3202
    .restart local v5    # "isWifi3GEnabled":Z
    if-nez v5, :cond_c

    .line 3204
    iput-boolean v12, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->isFindPeerNeeded:Z

    .line 3205
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMAC]  isWifi3GEnabled is false, SCS is Logged out"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3206
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->LOGGED_OUT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v8, v6, v9, v10}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    goto/16 :goto_2

    .line 3211
    :cond_c
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMAC]  isWifi3GEnabled is true, SCS is Connected"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3212
    iput-boolean v11, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->isFindPeerNeeded:Z

    .line 3213
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v10, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v8, v6, v9, v10}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    goto/16 :goto_2

    .line 3226
    .end local v2    # "device":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    .end local v5    # "isWifi3GEnabled":Z
    .end local v6    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_d
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMWS] There are some ble ACS device for SAP. This can not be Data Cleared)"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    .end local v1    # "AcDevices_bleACS":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e
    iget-boolean v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->isFindPeerNeeded:Z

    if-ne v7, v11, :cond_0

    .line 3233
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMWS] do find peer for existing devices"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3234
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SAPInitializationTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->doFindPeer()V

    goto/16 :goto_0
.end method
