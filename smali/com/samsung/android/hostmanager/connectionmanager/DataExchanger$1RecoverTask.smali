.class Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1RecoverTask;
.super Ljava/lang/Object;
.source "DataExchanger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->checkSAPConnection()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecoverTask"
.end annotation


# instance fields
.field accessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;
    .param p2, "_accessoryManager"    # Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1RecoverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1RecoverTask;->accessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    .line 674
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 682
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[jdub] call mAccessoryManager.getConnectedAccessories in Handler"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1RecoverTask;->accessoryManager:Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->getConnectedAccessories()Ljava/util/List;

    move-result-object v1

    .line 686
    .local v1, "devicelist":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessorymanager/SamDevice;>;"
    if-eqz v1, :cond_1

    .line 688
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessorymanager/SamDevice;

    .line 689
    .local v0, "device":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1RecoverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 691
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v3

    .line 692
    .local v3, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v3, :cond_0

    .line 693
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[WS] Set already SPP connected device to Wearable State : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 695
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 693
    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1RecoverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$900(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v5, v3, v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 699
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1RecoverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->findPeer()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 706
    .end local v0    # "device":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    .end local v1    # "devicelist":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessorymanager/SamDevice;>;"
    .end local v3    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :catch_0
    move-exception v2

    .line 708
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[jdub] findPeerAgents exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
