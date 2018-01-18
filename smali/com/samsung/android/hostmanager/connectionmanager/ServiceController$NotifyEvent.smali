.class Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;
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
    name = "NotifyEvent"
.end annotation


# instance fields
.field private StateMap:Ljava/util/HashMap;
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

.field private device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

.field private deviceBundle:Landroid/os/Bundle;

.field private lastStateMutex:Ljava/lang/Object;

.field private state:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    .prologue
    const/4 v0, 0x0

    .line 2051
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2044
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 2046
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->state:Ljava/lang/String;

    .line 2049
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->StateMap:Ljava/util/HashMap;

    .line 2062
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->lastStateMutex:Ljava/lang/Object;

    .line 2052
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->StateMap:Ljava/util/HashMap;

    .line 2053
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->UNKNOWN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->state:Ljava/lang/String;

    .line 2054
    return-void
.end method

.method private isStateChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2072
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->lastStateMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 2074
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->StateMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2076
    .local v0, "laststate":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2077
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2079
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[CMSC] last state is null, current state is disconnected, ignore notify & update laststate to DISCONNECTED"

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->setState2Map(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    monitor-exit v3

    .line 2092
    :goto_0
    return v1

    .line 2085
    :cond_0
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 2089
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2090
    monitor-exit v3

    goto :goto_0

    .line 2094
    .end local v0    # "laststate":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2092
    .restart local v0    # "laststate":Ljava/lang/String;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 2100
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    if-nez v14, :cond_1

    .line 2275
    :cond_0
    :goto_0
    return-void

    .line 2104
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->state:Ljava/lang/String;

    sget-object v15, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v15}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->state:Ljava/lang/String;

    sget-object v15, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 2105
    invoke-virtual {v15}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2106
    :cond_2
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[CMSC] NotifyEvent state: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->state:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2110
    :cond_3
    const/4 v6, 0x0

    .line 2111
    .local v6, "isConnected":Z
    const/4 v8, 0x0

    .line 2113
    .local v8, "isDisconnected":Z
    sget-object v14, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->state:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 2115
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    sget-object v16, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v6

    .line 2125
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->isDisconnectCancelResponce(Ljava/lang/String;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 2128
    .local v7, "isDisconnectCancelResponse":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->state:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->isStateChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 2130
    sget-object v14, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->state:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    sget-object v14, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->state:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_7

    .line 2132
    :cond_5
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[CMSC] Connection all event duplicated("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->state:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-object/from16 v16, v0

    .line 2133
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2132
    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2118
    .end local v7    # "isDisconnectCancelResponse":Ljava/lang/Boolean;
    :cond_6
    sget-object v14, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->state:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2120
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    sget-object v16, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isDisconnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v8

    goto/16 :goto_1

    .line 2141
    .restart local v7    # "isDisconnectCancelResponse":Ljava/lang/Boolean;
    :cond_7
    const/4 v14, 0x1

    if-ne v6, v14, :cond_8

    .line 2145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2146
    .local v1, "_address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    invoke-virtual {v14, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isScsSupported(Ljava/lang/String;)Z

    move-result v13

    .line 2148
    .local v13, "wifiOrcellularNetworkType":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[jdub] 3G/WIFI supportable: ( "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " )"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 2153
    invoke-virtual {v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isRequestedDeviceList(Ljava/lang/String;)Z

    move-result v10

    .line 2154
    .local v10, "isRequestedDevice":Z
    const/4 v14, 0x1

    if-ne v10, v14, :cond_8

    .line 2155
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[jdub] ServiceController, isConnected : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-object/from16 v16, v0

    .line 2156
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2155
    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCompanyName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2160
    .local v9, "isOurProduct":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[jdub] isOurProduct: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    if-eqz v9, :cond_8

    .line 2165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2166
    .local v2, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    .line 2167
    invoke-virtual {v14, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getAutoLockService(Ljava/lang/String;)Z

    move-result v3

    .line 2169
    .local v3, "autoLockService":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[jdub] 9.all connected, send ACTION_AUTO_LOCK_SERVICE ( "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " )"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {v14, v15, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->SendAutoLockServiceIntent(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Z)V

    .line 2182
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->deviceBundle:Landroid/os/Bundle;

    .line 2183
    invoke-static {v14}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Landroid/os/Bundle;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 2185
    .local v4, "bDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-static {v14, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$1300(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Landroid/bluetooth/BluetoothDevice;)V

    .line 2194
    .end local v1    # "_address":Ljava/lang/String;
    .end local v2    # "address":Ljava/lang/String;
    .end local v3    # "autoLockService":Z
    .end local v4    # "bDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v9    # "isOurProduct":Z
    .end local v10    # "isRequestedDevice":Z
    .end local v13    # "wifiOrcellularNetworkType":Z
    :cond_8
    const/4 v14, 0x1

    if-ne v8, v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->state:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->isStateChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    .line 2195
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 2196
    invoke-virtual {v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isRequestedDeviceList(Ljava/lang/String;)Z

    move-result v10

    .line 2197
    .restart local v10    # "isRequestedDevice":Z
    const/4 v14, 0x1

    if-ne v10, v14, :cond_9

    .line 2198
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[jdub] ServiceController, isDisconnected : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-object/from16 v16, v0

    .line 2199
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2198
    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2203
    .restart local v2    # "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    .line 2204
    invoke-virtual {v14, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getAutoLockService(Ljava/lang/String;)Z

    move-result v3

    .line 2206
    .restart local v3    # "autoLockService":Z
    const/4 v14, 0x1

    if-ne v3, v14, :cond_9

    .line 2207
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "[jdub] 10.disconnected, send ACTION_AUTO_LOCK_SERVICE (false)"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    new-instance v12, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v14

    invoke-interface {v14}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getActionAutoLockService()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2211
    .local v12, "sendIntent":Landroid/content/Intent;
    const-string v14, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 2212
    invoke-virtual {v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v15

    .line 2211
    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2213
    const-string v5, "com.sec.android.service.connectionmanager.extra.AUTO_LOCK_SERVICE"

    .line 2214
    .local v5, "flag":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v12, v5, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2215
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "com.sec.android.permission.SMART_UNLOCK"

    invoke-virtual {v14, v12, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2223
    .end local v2    # "address":Ljava/lang/String;
    .end local v3    # "autoLockService":Z
    .end local v5    # "flag":Ljava/lang/String;
    .end local v10    # "isRequestedDevice":Z
    .end local v12    # "sendIntent":Landroid/content/Intent;
    :cond_9
    if-nez v6, :cond_a

    if-eqz v8, :cond_c

    .line 2225
    :cond_a
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2226
    .local v11, "resBundle":Landroid/os/Bundle;
    const-string v14, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->deviceBundle:Landroid/os/Bundle;

    invoke-virtual {v11, v14, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2227
    const-string v14, "CM_DEVICE_ADDRESS"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    const-string v14, "CM_DEVICE_NAME"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    const-string v14, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    const-string v15, "ALL"

    invoke-virtual {v11, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    const-string v14, "BUNDLE_CMKEY_STRING_SERVICESTATE"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->state:Ljava/lang/String;

    invoke-virtual {v11, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    const/4 v10, 0x0

    .line 2235
    .restart local v10    # "isRequestedDevice":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 2236
    invoke-virtual {v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isRequestedDeviceList(Ljava/lang/String;)Z

    move-result v10

    .line 2238
    if-nez v10, :cond_b

    .line 2239
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[jdub][WS] this device is not requested through HM..skip CM Service : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-object/from16 v16, v0

    .line 2241
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2239
    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2245
    :cond_b
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[jdub][CMSC] Connection all event notify : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->state:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-object/from16 v16, v0

    .line 2246
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2245
    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    const/16 v15, 0x215

    invoke-static {v14, v15, v11}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$1400(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;ILandroid/os/Bundle;)V

    .line 2249
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[jdub] [WS] this device is requested throgh HM : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-object/from16 v16, v0

    .line 2250
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2249
    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->state:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$1500(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->state:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->setState2Map(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->state:Ljava/lang/String;

    const-string v15, "CONNECTED"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 2260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v14

    const-string v15, "SPP & HFP is Connected"

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V

    .line 2271
    .end local v10    # "isRequestedDevice":Z
    .end local v11    # "resBundle":Landroid/os/Bundle;
    :cond_c
    :goto_2
    if-eqz v6, :cond_0

    .line 2273
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getName()Ljava/lang/String;

    move-result-object v16

    .line 2272
    invoke-static/range {v14 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/receiver/ConnectionManagerNotifier;->notifyConnectionDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2261
    .restart local v10    # "isRequestedDevice":Z
    .restart local v11    # "resBundle":Landroid/os/Bundle;
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->state:Ljava/lang/String;

    const-string v15, "DISCONNECTED"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 2262
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v14

    const-string v15, "SPP & HFP is Disconnected"

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V

    .line 2265
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "[jdub] [WS] setDisconnectCancelResponse to false"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {v15}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->setDisconnectCancelResponse(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public setEventData(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceBundle"    # Landroid/os/Bundle;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 2057
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->deviceBundle:Landroid/os/Bundle;

    .line 2058
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/os/Bundle;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->device:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 2059
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->state:Ljava/lang/String;

    .line 2060
    return-void
.end method

.method public setState2Map(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "lastState"    # Ljava/lang/String;

    .prologue
    .line 2065
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->lastStateMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2066
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->StateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2067
    monitor-exit v1

    .line 2068
    return-void

    .line 2067
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
