.class Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;
.super Ljava/lang/Object;
.source "ServiceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->work(Lcom/sec/android/api/iface/CVMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

.field final synthetic val$message:Lcom/sec/android/api/iface/CVMessage;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;Lcom/sec/android/api/iface/CVMessage;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private connect(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)V
    .locals 11
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "msg"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 865
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMSC] Single Connect : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 866
    invoke-virtual {p3}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 867
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 864
    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[CMSC] set BR/EDR Connecting Flag to true - Request single connection"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 874
    .local v0, "bDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_1

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v6, v6, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    invoke-virtual {v6, v0, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 881
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 882
    .local v3, "resBundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 883
    .local v1, "deviceBundle":Landroid/os/Bundle;
    const-string v6, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 885
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 886
    .local v5, "typeStrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    const-string v6, "BUNDLE_CMKEY_STRINGLIST_SERVICETYPELIST"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 890
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v6, v6, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    .line 891
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getSupportableServices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 893
    .local v4, "supportableServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v6, v6, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v6, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v2

    .line 895
    .local v2, "profileHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    if-eqz v2, :cond_5

    .line 896
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v9, :cond_3

    .line 898
    invoke-virtual {v2, p3}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->requestMessage(Lcom/sec/android/api/iface/CVMessage;)Z

    move-result v6

    if-ne v6, v9, :cond_6

    .line 900
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v9, :cond_2

    .line 901
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[CMSC] Service is WIFIP2P, unset BR/EDR Connecting Flag"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v6, v6, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    invoke-virtual {v6, v0, v10}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 906
    :cond_2
    const-string v6, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v7, "SUCCESS"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_3
    :goto_1
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->PAN:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eq v6, v9, :cond_4

    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v9, :cond_5

    .line 920
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v6, v6, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    invoke-virtual {v6, v0, v10}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 922
    invoke-virtual {v2, p3}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->requestMessage(Lcom/sec/android/api/iface/CVMessage;)Z

    move-result v6

    if-ne v6, v9, :cond_7

    .line 923
    const-string v6, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v7, "SUCCESS"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    invoke-virtual {v6, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->response(Landroid/os/Bundle;)V

    .line 934
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 936
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v6, v6, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$800(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 939
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v6, v6, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->removeWaitingConnectionInfo(Ljava/lang/String;)V

    .line 940
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v6, v6, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$400(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 909
    :cond_6
    const-string v6, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v7, "FAIL"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[CMSC] unset BR/EDR Connecting Flag"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v6, v6, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v6

    invoke-virtual {v6, v0, v10}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    goto/16 :goto_1

    .line 925
    :cond_7
    const-string v6, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v7, "FAIL"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private connectAll(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/sec/android/api/iface/CVMessage;)V
    .locals 12
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "msg"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1048
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CMSC] connectAll : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1049
    invoke-virtual {p2}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1048
    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    .line 1053
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getSupportableServices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1056
    .local v5, "supportableServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1059
    .local v0, "bDevice":Landroid/bluetooth/BluetoothDevice;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x12

    if-gt v7, v8, :cond_1

    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    .line 1060
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7, p1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isDisconnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1063
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    .line 1064
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->putLastConnectedDeviceAddr_bleAcs(Ljava/lang/String;)Z

    .line 1066
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMSC] stop LE connection under android 4.3 device"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CMSC] HFP connect (under 4.3): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1068
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1067
    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->connect(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)V

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1073
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7, p1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isDisconnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1076
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMSC] set BR/EDR Connecting Flag to true - Reqeust SPP connection"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    if-nez v0, :cond_2

    .line 1079
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMSC] connectAll : bDevice is null"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1083
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    invoke-virtual {v7, v0, v10}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1090
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v4

    .line 1091
    .local v4, "sppHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    if-eqz v4, :cond_0

    .line 1093
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1094
    invoke-virtual {v4, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->requestMessage(Lcom/sec/android/api/iface/CVMessage;)Z

    move-result v7

    if-ne v7, v10, :cond_3

    .line 1095
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMSC] request SPP connection"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMSC] SPP Connection Request: SUCCESS"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v7

    const-string v8, "SPP Connection Requested(SUCCESS)"

    invoke-virtual {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1101
    :cond_3
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMSC] SPP Connection Request: FAIL"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMSC] unset BR/EDR Connecting Flag - SPP Fail"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v7

    const-string v8, "SPP Connection Requested(FAIL)"

    invoke-virtual {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V

    .line 1108
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    .line 1109
    invoke-virtual {v7, v0, v11}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    goto/16 :goto_0

    .line 1113
    :cond_4
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMSC] Skip SPP Connection (SPP not Supported)"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1118
    .end local v4    # "sppHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    .line 1119
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7, p1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v7

    if-ne v7, v10, :cond_6

    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    .line 1120
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isFindPeerComplete(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1123
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[jdub] 1.findPeer needed"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-static {v7, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$1100(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto/16 :goto_0

    .line 1128
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    .line 1129
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7, p1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v7

    if-ne v7, v10, :cond_7

    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    .line 1130
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isFeatureExchangeItemValid(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1132
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[jdub] 4.feature exchange needed"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    .line 1136
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 1135
    invoke-virtual {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->initFeatureExchangeItem(Ljava/lang/String;)V

    .line 1139
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-static {v7, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$1200(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto/16 :goto_0

    .line 1141
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7, p1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v7

    if-ne v7, v10, :cond_b

    .line 1142
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[jdub] 8.request HFP connection"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMSC] set BR/EDR Connecting Flag to true - Request HFP connection"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    if-nez v0, :cond_8

    .line 1147
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMSC] connectAll : bDevice is null"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1150
    :cond_8
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    invoke-virtual {v7, v0, v10}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1154
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v2

    .line 1155
    .local v2, "hfpHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    if-eqz v2, :cond_0

    .line 1157
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1158
    invoke-virtual {v2, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->requestMessage(Lcom/sec/android/api/iface/CVMessage;)Z

    move-result v7

    if-ne v7, v10, :cond_9

    .line 1159
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMSC] HFP Connection Request: SUCCESS"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v7

    const-string v8, "HFP Connection Requested(SUCCESS)"

    invoke-virtual {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1164
    :cond_9
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMSC] HFP Connection Request: FAIL"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMSC] unset BR/EDR Connecting Flag - HFP Fail"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v7

    const-string v8, "HFP Connection Requested(FAIL)"

    invoke-virtual {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->showToast(Ljava/lang/String;)V

    .line 1173
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    .line 1174
    invoke-virtual {v7, v0, v11}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    goto/16 :goto_0

    .line 1178
    :cond_a
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMSC] Skip HFP Connection (HFP not Supported)"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1183
    .end local v2    # "hfpHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    :cond_b
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7, p1, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v7

    if-ne v7, v10, :cond_0

    .line 1186
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1187
    .local v3, "resBundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 1188
    .local v1, "deviceBundle":Landroid/os/Bundle;
    const-string v7, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v3, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1191
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    .local v6, "typeStrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v7, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    const-string v7, "BUNDLE_CMKEY_STRINGLIST_SERVICETYPELIST"

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1196
    const-string v7, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v8, "SUCCESS"

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[CMSC] multi connection response : SUCCESS"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    invoke-virtual {v7, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->response(Landroid/os/Bundle;)V

    .line 1202
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-static {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$800(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1203
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->removeWaitingConnectionInfo(Ljava/lang/String;)V

    .line 1207
    :cond_c
    iget-object v7, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v7, v7, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v7

    .line 1208
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 1207
    invoke-virtual {v7, v8, v11}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setFindPeerComplete(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private disconnectAll(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/sec/android/api/iface/CVMessage;)V
    .locals 12
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p2, "msg"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    const/4 v11, 0x1

    .line 947
    if-nez p1, :cond_1

    .line 948
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMSC] disconnectAll : Device Null"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CMSC] disconnectAll : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 953
    invoke-virtual {p2}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 952
    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const/4 v1, 0x1

    .line 956
    .local v1, "SppResult":Z
    const/4 v0, 0x1

    .line 958
    .local v0, "HfpResult":Z
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    .line 959
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getSupportableServices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 962
    .local v6, "supportableServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v5

    .line 963
    .local v5, "sppHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    if-eqz v5, :cond_2

    .line 965
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 967
    invoke-virtual {v5, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->requestMessage(Lcom/sec/android/api/iface/CVMessage;)Z

    move-result v8

    if-ne v8, v11, :cond_5

    .line 968
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMSC] request SPP disconnection command : SUCCESS"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const/4 v1, 0x1

    .line 985
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v3

    .line 986
    .local v3, "hfpHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    if-eqz v3, :cond_3

    .line 988
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 990
    invoke-virtual {v3, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->requestMessage(Lcom/sec/android/api/iface/CVMessage;)Z

    move-result v8

    if-ne v8, v11, :cond_7

    .line 992
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMSC] request HFP disconnection command : SUCCESS"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    const/4 v0, 0x1

    .line 1008
    :cond_3
    :goto_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1009
    .local v4, "resBundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/os/Bundle;

    move-result-object v2

    .line 1010
    .local v2, "deviceBundle":Landroid/os/Bundle;
    const-string v8, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v4, v8, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1012
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    .local v7, "typeStrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    const-string v8, "BUNDLE_CMKEY_STRINGLIST_SERVICETYPELIST"

    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1017
    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 1018
    const-string v8, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v9, "SUCCESS"

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMSC] multi connection response : SUCCESS"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :goto_3
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    invoke-virtual {v8, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->response(Landroid/os/Bundle;)V

    .line 1028
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$800(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1029
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->removeWaitingConnectionInfo(Ljava/lang/String;)V

    .line 1033
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->removeSCSWaitingConnectionInfo(Ljava/lang/String;)V

    .line 1035
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v8, p1, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isDisconnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v8

    if-ne v11, v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    .line 1036
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v8, p1, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isDisconnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v8

    if-ne v11, v8, :cond_0

    .line 1039
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMSC] call notify event task to notify to HM about disconnect/cancel response"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$900(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;)Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;->setEventData(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1041
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$1000(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v9, v9, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-static {v9}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$900(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;)Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$NotifyEvent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 973
    .end local v2    # "deviceBundle":Landroid/os/Bundle;
    .end local v3    # "hfpHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    .end local v4    # "resBundle":Landroid/os/Bundle;
    .end local v7    # "typeStrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMSC] request SPP disconnection command : FAIL"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 979
    :cond_6
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMSC] Skip SPP disconnection (SPP not Supported)"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 997
    .restart local v3    # "hfpHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    :cond_7
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMSC] request HFP disconnection command : FAIL"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 1003
    :cond_8
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMSC] Skip HFP disconnection (HFP not Supported)"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1021
    .restart local v2    # "deviceBundle":Landroid/os/Bundle;
    .restart local v4    # "resBundle":Landroid/os/Bundle;
    .restart local v7    # "typeStrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    const-string v8, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v9, "FAIL"

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[CMSC] multi connection response : FAIL"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public run()V
    .locals 39

    .prologue
    .line 525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v3}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v21

    .line 528
    .local v21, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v3}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v3

    const/16 v37, 0x26

    move/from16 v0, v37

    if-ne v3, v0, :cond_2

    .line 530
    const-string v3, "BUNDLE_CMKEY_STRING_SCS_GUID"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 531
    .local v4, "guid":Ljava/lang/String;
    const-string v3, "BUNDLE_CMKEY_STRING_SCS_APPID"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 532
    .local v5, "appId":Ljava/lang/String;
    const-string v3, "BUNDLE_CMKEY_STRING_SCS_TARGETAPPID"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 533
    .local v6, "targetAppId":Ljava/lang/String;
    const-string v3, "BUNDLE_CMKEY_STRING_SCS_TOKEN"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 534
    .local v7, "token":Ljava/lang/String;
    const-string v3, "BUNDLE_CMKEY_STRING_SCS_CC"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 535
    .local v8, "cc":Ljava/lang/String;
    const-string v3, "BUNDLE_CMKEY_STRING_SCS_EMAILID"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 536
    .local v9, "email":Ljava/lang/String;
    const-string v3, "BUNDLE_CMKEY_STRING_SCS_APPSECRET"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 537
    .local v10, "appSecret":Ljava/lang/String;
    const-string v3, "BUNDLE_CMKEY_SES_TOKENSECRET"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 538
    .local v14, "tokenSecret":Ljava/lang/String;
    const-string v3, "BUNDLE_CMKEY_BOOLEAN_SCS_DATANETWORK"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 539
    .local v11, "dataNetwork":Z
    const-string v3, "BUNDLE_CMKEY_INT_SCS_MCC"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 540
    .local v12, "mcc":I
    const-string v3, "BUNDLE_CMKEY_INT_SCS_MNC"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 542
    .local v13, "mnc":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-static/range {v3 .. v14}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)I

    move-result v30

    .line 545
    .local v30, "res":I
    new-instance v31, Landroid/os/Bundle;

    invoke-direct/range {v31 .. v31}, Landroid/os/Bundle;-><init>()V

    .line 547
    .local v31, "resBundle":Landroid/os/Bundle;
    if-nez v30, :cond_1

    .line 548
    const-string v3, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v37, "SUCCESS"

    move-object/from16 v0, v31

    move-object/from16 v1, v37

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->response(Landroid/os/Bundle;)V

    .line 859
    .end local v4    # "guid":Ljava/lang/String;
    .end local v5    # "appId":Ljava/lang/String;
    .end local v6    # "targetAppId":Ljava/lang/String;
    .end local v7    # "token":Ljava/lang/String;
    .end local v8    # "cc":Ljava/lang/String;
    .end local v9    # "email":Ljava/lang/String;
    .end local v10    # "appSecret":Ljava/lang/String;
    .end local v11    # "dataNetwork":Z
    .end local v12    # "mcc":I
    .end local v13    # "mnc":I
    .end local v14    # "tokenSecret":Ljava/lang/String;
    .end local v30    # "res":I
    .end local v31    # "resBundle":Landroid/os/Bundle;
    :cond_0
    :goto_1
    return-void

    .line 550
    .restart local v4    # "guid":Ljava/lang/String;
    .restart local v5    # "appId":Ljava/lang/String;
    .restart local v6    # "targetAppId":Ljava/lang/String;
    .restart local v7    # "token":Ljava/lang/String;
    .restart local v8    # "cc":Ljava/lang/String;
    .restart local v9    # "email":Ljava/lang/String;
    .restart local v10    # "appSecret":Ljava/lang/String;
    .restart local v11    # "dataNetwork":Z
    .restart local v12    # "mcc":I
    .restart local v13    # "mnc":I
    .restart local v14    # "tokenSecret":Ljava/lang/String;
    .restart local v30    # "res":I
    .restart local v31    # "resBundle":Landroid/os/Bundle;
    :cond_1
    const-string v3, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v37, "ERROR_SCS_ACCOUNT_INVALID_PARAMS"

    move-object/from16 v0, v31

    move-object/from16 v1, v37

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 558
    .end local v4    # "guid":Ljava/lang/String;
    .end local v5    # "appId":Ljava/lang/String;
    .end local v6    # "targetAppId":Ljava/lang/String;
    .end local v7    # "token":Ljava/lang/String;
    .end local v8    # "cc":Ljava/lang/String;
    .end local v9    # "email":Ljava/lang/String;
    .end local v10    # "appSecret":Ljava/lang/String;
    .end local v11    # "dataNetwork":Z
    .end local v12    # "mcc":I
    .end local v13    # "mnc":I
    .end local v14    # "tokenSecret":Ljava/lang/String;
    .end local v30    # "res":I
    .end local v31    # "resBundle":Landroid/os/Bundle;
    :cond_2
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    .line 559
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v27

    check-cast v27, Landroid/os/Bundle;

    .line 562
    .local v27, "itemBundle":Landroid/os/Bundle;
    invoke-static/range {v27 .. v27}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/os/Bundle;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v35

    .line 564
    .local v35, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-nez v35, :cond_3

    .line 565
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v37, "Wearable device is null!!"

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    new-instance v31, Landroid/os/Bundle;

    invoke-direct/range {v31 .. v31}, Landroid/os/Bundle;-><init>()V

    .line 568
    .restart local v31    # "resBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v37, "FAIL"

    move-object/from16 v0, v31

    move-object/from16 v1, v37

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->response(Landroid/os/Bundle;)V

    goto :goto_1

    .line 574
    .end local v31    # "resBundle":Landroid/os/Bundle;
    :cond_3
    invoke-static/range {v27 .. v27}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Landroid/os/Bundle;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v22

    .line 576
    .local v22, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v22, :cond_4

    .line 577
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v37, "device is null!!"

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    new-instance v31, Landroid/os/Bundle;

    invoke-direct/range {v31 .. v31}, Landroid/os/Bundle;-><init>()V

    .line 580
    .restart local v31    # "resBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v37, "FAIL"

    move-object/from16 v0, v31

    move-object/from16 v1, v37

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->response(Landroid/os/Bundle;)V

    goto :goto_1

    .line 586
    .end local v31    # "resBundle":Landroid/os/Bundle;
    :cond_4
    const-string v3, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v37, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 587
    invoke-virtual/range {v37 .. v37}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v37

    .line 586
    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 592
    .local v32, "sType":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v18

    .line 593
    .local v18, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    sget-object v37, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v26

    .line 596
    .local v26, "isSCSConnected":Z
    const/16 v25, 0x0

    .line 598
    .local v25, "isError":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v3}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v3

    const/16 v37, 0x15

    move/from16 v0, v37

    if-eq v3, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    .line 599
    invoke-virtual {v3}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v3

    const/16 v37, 0x16

    move/from16 v0, v37

    if-ne v3, v0, :cond_6

    if-nez v26, :cond_6

    .line 601
    :cond_5
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "[CMSC][BT_OFF] CMCommand : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " isSCSConnected : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "[CMSC][BT_OFF] service type : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "invaild state!!!"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    new-instance v31, Landroid/os/Bundle;

    invoke-direct/range {v31 .. v31}, Landroid/os/Bundle;-><init>()V

    .line 606
    .restart local v31    # "resBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 608
    const-string v3, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v37, "FAIL"

    move-object/from16 v0, v31

    move-object/from16 v1, v37

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->response(Landroid/os/Bundle;)V

    .line 610
    const/16 v25, 0x1

    .line 613
    .end local v31    # "resBundle":Landroid/os/Bundle;
    :cond_6
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 614
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 615
    .local v19, "b":Landroid/os/Bundle;
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v23

    .line 616
    .local v23, "deviceBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 617
    const-string v3, "BUNDLE_CMKEY_STRING_ERRORCODE"

    const-string v37, "WIFIP2P_CONNECT_ERROR"

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    const/16 v37, 0x242

    move/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->publishEvent(ILandroid/os/Bundle;)V

    .line 619
    const/16 v25, 0x1

    .line 622
    .end local v19    # "b":Landroid/os/Bundle;
    .end local v23    # "deviceBundle":Landroid/os/Bundle;
    :cond_7
    if-nez v25, :cond_0

    .line 632
    .end local v25    # "isError":Z
    .end local v26    # "isSCSConnected":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v3}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v3

    const/16 v37, 0x15

    move/from16 v0, v37

    if-ne v3, v0, :cond_e

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 637
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$300(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    .line 644
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getWaitingConnectionInfo()Ljava/util/HashMap;

    move-result-object v17

    .line 647
    .local v17, "WaitingConnectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 648
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v37, "[CMSC] remove DisconnectTask timers."

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->removeDisconnectTask()V

    .line 656
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-static {v3, v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$400(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isBonded(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    move-result v24

    .line 663
    .local v24, "isBonded":Z
    if-nez v24, :cond_b

    .line 666
    new-instance v29, Landroid/os/Bundle;

    invoke-direct/range {v29 .. v29}, Landroid/os/Bundle;-><init>()V

    .line 667
    .local v29, "reqBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    const/16 v37, 0x13

    move/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto/16 :goto_1

    .line 678
    .end local v29    # "reqBundle":Landroid/os/Bundle;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    .line 679
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getSupportableServices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 681
    .local v15, "ServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v15, :cond_c

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/16 v37, 0x1

    move/from16 v0, v37

    if-ne v3, v0, :cond_e

    .line 683
    :cond_c
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v37, "get UUIDs"

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {v22 .. v22}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    .line 687
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v3

    .line 688
    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->setServiceDiscovery(Landroid/bluetooth/BluetoothDevice;)V

    .line 691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    .line 692
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    .line 693
    invoke-virtual/range {v22 .. v22}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v37

    .line 692
    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getSupportableServices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 695
    .local v16, "UuidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/16 v37, 0x1

    move/from16 v0, v37

    if-ne v3, v0, :cond_e

    .line 698
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v3

    .line 699
    invoke-virtual/range {v22 .. v22}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->setForcePairingFlag(Ljava/lang/String;)V

    .line 702
    new-instance v29, Landroid/os/Bundle;

    invoke-direct/range {v29 .. v29}, Landroid/os/Bundle;-><init>()V

    .line 703
    .restart local v29    # "reqBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    const/16 v37, 0x14

    move/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 716
    .end local v15    # "ServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "UuidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "WaitingConnectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "isBonded":Z
    .end local v29    # "reqBundle":Landroid/os/Bundle;
    :cond_e
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 718
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v3}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v3

    const/16 v37, 0x15

    move/from16 v0, v37

    if-ne v3, v0, :cond_10

    .line 722
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$500(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    .line 727
    invoke-static/range {v35 .. v35}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v20

    .line 728
    .local v20, "bDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v20, :cond_f

    .line 729
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v37, "[CMSC] set device Type for android L (> KITKAT) "

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setDeviceType(Landroid/bluetooth/BluetoothDevice;)Z

    .line 732
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->connectAll(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/sec/android/api/iface/CVMessage;)V

    goto/16 :goto_1

    .line 734
    .end local v20    # "bDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v3}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v3

    const/16 v37, 0x16

    move/from16 v0, v37

    if-ne v3, v0, :cond_13

    .line 737
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->removeWaitingConnectionInfo(Ljava/lang/String;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->setDisconnectCancelResponse(Ljava/lang/String;Z)V

    .line 742
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v37, "[WS] if Auto Connection is working...request to disconnect LE"

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->stopAutoConnection(Landroid/bluetooth/BluetoothDevice;)V

    .line 749
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v37, "[WS] Remove Auto Conneciton List for Local Disconnect"

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v3

    .line 752
    invoke-virtual/range {v22 .. v22}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v37

    .line 751
    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->removeACAddress(Ljava/lang/String;)V

    .line 758
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v37, "[jdub] CMCommand.CMD_DISCONNECT"

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    sget-object v37, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isDisconnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    .line 762
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    sget-object v37, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isDisconnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 764
    :cond_11
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v37, "[jdub] setAddress DataExchanger"

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->setAddress(Ljava/lang/String;)V

    .line 769
    :cond_12
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v37, "[jdub] User manually disconnected device. send notification msg to remote device."

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendDisconnectedNotification(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    goto/16 :goto_1

    .line 774
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v3}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v3

    const/16 v37, 0x23

    move/from16 v0, v37

    if-ne v3, v0, :cond_15

    .line 775
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v37, "[jdub] CMCommand.CMD_MANUAL_DISCONNECT"

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {v22 .. v22}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v36

    .line 779
    .local v36, "wd":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/sec/android/api/iface/CVMessage;

    .line 781
    .local v28, "msg":Lcom/sec/android/api/iface/CVMessage;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v37, "[WS] check whether SCS service to Disconnect is exist"

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$700(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    .line 786
    if-eqz v28, :cond_14

    .line 787
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->disconnectAll(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/sec/android/api/iface/CVMessage;)V

    .line 790
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isScsRetryRecoveried()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 791
    new-instance v33, Landroid/os/Bundle;

    invoke-direct/range {v33 .. v33}, Landroid/os/Bundle;-><init>()V

    .line 792
    .local v33, "scsBundle":Landroid/os/Bundle;
    invoke-virtual/range {v22 .. v22}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v34

    .line 793
    .local v34, "scsItemBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 794
    const-string v3, "RECONNECTION_STRING_STEP"

    const-string v37, "INIT_RECOVERY_RETRY_CNT_SCS"

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    const/16 v37, 0x18

    move/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto/16 :goto_1

    .line 798
    .end local v28    # "msg":Lcom/sec/android/api/iface/CVMessage;
    .end local v33    # "scsBundle":Landroid/os/Bundle;
    .end local v34    # "scsItemBundle":Landroid/os/Bundle;
    .end local v36    # "wd":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v3}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v3

    const/16 v37, 0x24

    move/from16 v0, v37

    if-ne v3, v0, :cond_0

    .line 799
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v37, "CMCommand.CMD_CANCEL"

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->removeWaitingConnectionInfo(Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->setDisconnectCancelResponse(Ljava/lang/String;Z)V

    .line 807
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v37, "[WS] if Auto Connection is working...request to disconnect LE"

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->stopAutoConnection(Landroid/bluetooth/BluetoothDevice;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$700(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    .line 815
    invoke-virtual/range {v22 .. v22}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v36

    .line 816
    .restart local v36    # "wd":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v36, :cond_16

    .line 817
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->disconnectAll(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/sec/android/api/iface/CVMessage;)V

    .line 820
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->isScsRetryRecoveried()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 821
    new-instance v33, Landroid/os/Bundle;

    invoke-direct/range {v33 .. v33}, Landroid/os/Bundle;-><init>()V

    .line 822
    .restart local v33    # "scsBundle":Landroid/os/Bundle;
    invoke-virtual/range {v22 .. v22}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v34

    .line 823
    .restart local v34    # "scsItemBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 824
    const-string v3, "RECONNECTION_STRING_STEP"

    const-string v37, "INIT_RECOVERY_RETRY_CNT_SCS"

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    const/16 v37, 0x18

    move/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto/16 :goto_1

    .line 850
    .end local v33    # "scsBundle":Landroid/os/Bundle;
    .end local v34    # "scsItemBundle":Landroid/os/Bundle;
    .end local v36    # "wd":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_17
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 851
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 852
    :cond_18
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v37, "[CMSC] set BR/EDR Connecting Flag to true "

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v3

    const/16 v37, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v37

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 857
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;->connect(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)V

    goto/16 :goto_1
.end method
