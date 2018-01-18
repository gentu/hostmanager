.class Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;
.super Ljava/lang/Object;
.source "EventHandler.java"

# interfaces
.implements Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$SCSWaitingTask;,
        Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$WaitingTask;
    }
.end annotation


# instance fields
.field private mSCSWaitingTask:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$SCSWaitingTask;

.field private mWaitingHandler:Landroid/os/Handler;

.field private mWaitingTask:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$WaitingTask;

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1216
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->mWaitingHandler:Landroid/os/Handler;

    .line 1218
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$WaitingTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$WaitingTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->mWaitingTask:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$WaitingTask;

    .line 1255
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$SCSWaitingTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$SCSWaitingTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->mSCSWaitingTask:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$SCSWaitingTask;

    return-void
.end method

.method private getErrorReason(I)Ljava/lang/String;
    .locals 1
    .param p1, "arg1"    # I

    .prologue
    .line 1292
    sparse-switch p1, :sswitch_data_0

    .line 1327
    const-string v0, "SPP_UNKOWN_ERROR"

    :goto_0
    return-object v0

    .line 1294
    :sswitch_0
    const-string v0, "SPP_CLOSE_FAILED"

    goto :goto_0

    .line 1296
    :sswitch_1
    const-string v0, "SPP_CONNECT_FAILED"

    goto :goto_0

    .line 1298
    :sswitch_2
    const-string v0, "SPP_CREATION_FAILED"

    goto :goto_0

    .line 1300
    :sswitch_3
    const-string v0, "SPP_READ_WRITE_FAILED"

    goto :goto_0

    .line 1302
    :sswitch_4
    const-string v0, "DEVICE_NOT_PAIRED"

    goto :goto_0

    .line 1304
    :sswitch_5
    const-string v0, "SAP_FRAMEWORK_INCOMPATIBLE"

    goto :goto_0

    .line 1306
    :sswitch_6
    const-string v0, "SPP_ALREADY_CONNECTED"

    goto :goto_0

    .line 1308
    :sswitch_7
    const-string v0, "ERROR_ACCESSORY_NOT_CONNECTED"

    goto :goto_0

    .line 1310
    :sswitch_8
    const-string v0, "SPP_CONNECT_TIMEOUT"

    goto :goto_0

    .line 1315
    :sswitch_9
    const-string v0, "SCS_ACCOUNT_INITIALIZATION_FAILED"

    goto :goto_0

    .line 1317
    :sswitch_a
    const-string v0, "SCS_CONNECTION_SERVER_FAILED"

    goto :goto_0

    .line 1319
    :sswitch_b
    const-string v0, "SCS_CONNECTION_PEER_FAILED"

    goto :goto_0

    .line 1321
    :sswitch_c
    const-string v0, "SCS_ACCOUNT_AUTHENTICATION_FAILED"

    goto :goto_0

    .line 1323
    :sswitch_d
    const-string v0, "SCS_ACCOUNT_NOT_FOUND"

    goto :goto_0

    .line 1325
    :sswitch_e
    const-string v0, "ANOTHER_TRANSPORT_IS_ACTIVE"

    goto :goto_0

    .line 1292
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ffffff1 -> :sswitch_6
        -0x6ffffff0 -> :sswitch_7
        -0x6fffffeb -> :sswitch_4
        -0x5ffffffb -> :sswitch_2
        -0x5ffffff9 -> :sswitch_1
        -0x5ffffff8 -> :sswitch_0
        -0x5ffffff6 -> :sswitch_8
        -0x5ffffff4 -> :sswitch_3
        -0x5ffffff3 -> :sswitch_5
        -0x4fffffff -> :sswitch_9
        -0x4ffffffe -> :sswitch_c
        -0x4ffffffc -> :sswitch_d
        -0x4ffffffa -> :sswitch_a
        -0x4ffffff9 -> :sswitch_b
        -0x3fffffff -> :sswitch_e
    .end sparse-switch
.end method


# virtual methods
.method public onAccessoryConnected(Lcom/samsung/android/sdk/accessorymanager/SamDevice;)V
    .locals 9
    .param p1, "connectedDevice"    # Lcom/samsung/android/sdk/accessorymanager/SamDevice;

    .prologue
    const/4 v8, 0x1

    .line 685
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Accessory][jdub] 0.onAccessoryConnected() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[Accessory] CONNECTED through SAP"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Accessory] Address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Accessory] Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Accessory] Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Accessory] ProductID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getProductId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Accessory] TransportType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Accessory] VersionId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getVendorId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v3

    if-ne v3, v8, :cond_2

    .line 696
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v2

    .line 697
    .local v2, "profileHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 698
    check-cast v3, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_SAP_CONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    if-eq v3, v4, :cond_1

    .line 699
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[Accessory] SAP connected but handler is not waiting for connection"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    .end local v2    # "profileHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    :cond_0
    :goto_0
    return-void

    .line 702
    .restart local v2    # "profileHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    :cond_1
    check-cast v2, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .end local v2    # "profileHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->processConnectionSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 705
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getProductId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getProductId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SM-V700"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v8, v3, :cond_3

    .line 706
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, " it is Gear-1 related device, ignore this Device"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 710
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 711
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 712
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_STRING_ADDRESS"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v3, "BUNDLE_STRING_NAME"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v3, "BUNDLE_STRING_BONDSTATE"

    const-string v4, "BONDED"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 717
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 727
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[Accessory] onAccessoryConnected - TransportType is not exist..finish routine"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :sswitch_0
    const-string v3, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :goto_1
    const-string v3, "BUNDLE_CMKEY_STRING_SERVICESTATE"

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v3, "RECONNECTION_STRING_STEP"

    const-string v4, "MSG_SAACCESSORY_CONNECT"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MULTICONNECTION] SAP state changed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 738
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CONNECTED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 737
    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    const-string v4, "SERVICECONTROLLER"

    const/16 v5, 0x215

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 723
    :sswitch_1
    const-string v3, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 717
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public onAccessoryDisconnected(Lcom/samsung/android/sdk/accessorymanager/SamDevice;I)V
    .locals 13
    .param p1, "arg0"    # Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    .param p2, "arg1"    # I

    .prologue
    const/4 v12, 0x1

    .line 748
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[Accessory][jdub] onAccessoryDisconnected()"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    move-object v4, p1

    .line 751
    .local v4, "disconnectedDevice":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    move v6, p2

    .line 753
    .local v6, "reason":I
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[Accessory] DISCONNECTED through SAP"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Accessory] Address: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Accessory] Id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Accessory] Name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Accessory] ProductID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getProductId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Accessory] TransportType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 759
    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 758
    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Accessory] VersionId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getVendorId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Accessory] Reason: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v8

    if-ne v8, v12, :cond_2

    .line 764
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .line 765
    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .line 766
    .local v7, "wifiP2pHandler":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    if-nez v7, :cond_1

    .line 767
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WifiP2pHandler not initialized."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    .end local v7    # "wifiP2pHandler":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    :cond_0
    :goto_0
    return-void

    .line 770
    .restart local v7    # "wifiP2pHandler":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    :cond_1
    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 771
    .local v1, "deviceId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 772
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[Accessory] Try to disconnect WIFIP2P"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 774
    .local v2, "discBundle":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 775
    .local v3, "discItemBundle":Landroid/os/Bundle;
    const-string v8, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 776
    const-string v8, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    const/16 v9, 0x16

    invoke-virtual {v8, v9, v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 780
    .end local v1    # "deviceId":Ljava/lang/String;
    .end local v2    # "discBundle":Landroid/os/Bundle;
    .end local v3    # "discItemBundle":Landroid/os/Bundle;
    .end local v7    # "wifiP2pHandler":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getProductId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getProductId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SM-V700"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v12, v8, :cond_3

    .line 781
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, " it is Gear-1 related device, ignore this Device"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 785
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 786
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 787
    .local v5, "itemBundle":Landroid/os/Bundle;
    const-string v8, "BUNDLE_STRING_ADDRESS"

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v8, "BUNDLE_STRING_NAME"

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v8, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v8, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 791
    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 801
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[Accessory] onAccessoryDisconnected - TransportType is not exist..finish routine"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 793
    :sswitch_0
    const-string v8, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :goto_1
    const-string v8, "BUNDLE_CMKEY_STRING_SERVICESTATE"

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 806
    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v9

    .line 805
    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v8}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->clearDataExhangerDetails()V

    .line 813
    const/16 v8, 0x100

    if-eq p2, v8, :cond_4

    const/16 v8, 0x102

    if-ne p2, v8, :cond_5

    .line 815
    :cond_4
    const-string v8, "RECONNECTION_STRING_STEP"

    const-string v9, "MSG_SAACCESSORY_DISCONNECT"

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v8, "BUNDLE_CMKEY_STRING_SAACCESSORY_DISCONNECT_REASON"

    invoke-virtual {v0, v8, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 818
    :cond_5
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[MULTICONNECTION] SAP state changed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 819
    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", DISCONNECTED"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 818
    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v8, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    const-string v9, "SERVICECONTROLLER"

    const/16 v10, 0x215

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v0, v11}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 797
    :sswitch_1
    const-string v8, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v9, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 791
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public onAccountLoggedIn(Lcom/samsung/android/sdk/accessorymanager/SamDevice;)V
    .locals 6
    .param p1, "accessory"    # Lcom/samsung/android/sdk/accessorymanager/SamDevice;

    .prologue
    .line 831
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Accessory][jdub] 0.onAccountLoggedIn() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[Accessory] CONNECTED through SAP"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Accessory] Address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Accessory] Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Accessory] Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Accessory] ProductID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Accessory] TransportType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Accessory] VersionId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getVendorId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 843
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 844
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ADDRESS"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-string v2, "BUNDLE_STRING_NAME"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v2, "BUNDLE_STRING_BONDSTATE"

    const-string v3, "BONDED"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 849
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICESTATE"

    const-string v3, "LOGGED_IN"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v2, "RECONNECTION_STRING_STEP"

    const-string v3, "MSG_SAACCESSORY_LOGGED_IN"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MULTICONNECTION] SAP state changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 856
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", LOGGED_IN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 855
    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    const-string v3, "SERVICECONTROLLER"

    const/16 v4, 0x215

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 862
    return-void
.end method

.method public onAccountLoggedOut(Lcom/samsung/android/sdk/accessorymanager/SamDevice;)V
    .locals 6
    .param p1, "accessory"    # Lcom/samsung/android/sdk/accessorymanager/SamDevice;

    .prologue
    .line 866
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Accessory][jdub] 0.onAccountLoggedOut() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[Accessory] CONNECTED through SAP"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Accessory] Address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Accessory] Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Accessory] Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Accessory] ProductID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Accessory] TransportType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Accessory] VersionId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getVendorId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 878
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 879
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_STRING_ADDRESS"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v2, "BUNDLE_STRING_NAME"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string v2, "BUNDLE_STRING_BONDSTATE"

    const-string v3, "BONDED"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 884
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICESTATE"

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->LOGGED_OUT:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const-string v2, "RECONNECTION_STRING_STEP"

    const-string v3, "MSG_SAACCESSORY_LOGGED_OUT"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MULTICONNECTION] SAP state changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 891
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", LOGGED_OUT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 890
    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    const-string v3, "SERVICECONTROLLER"

    const/16 v4, 0x215

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 896
    return-void
.end method

.method public onError(Lcom/samsung/android/sdk/accessorymanager/SamDevice;I)V
    .locals 26
    .param p1, "arg0"    # Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    .param p2, "arg1"    # I

    .prologue
    .line 901
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    const-string v22, "[RECOVERY] EventHandler, [Accessory] onError() "

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    if-eqz p1, :cond_15

    .line 904
    move-object/from16 v13, p1

    .line 906
    .local v13, "errDevice":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    const-string v22, "[RECOVERY] ERROR through SAP"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[RECOVERY] Address: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[RECOVERY] Id: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getId()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[RECOVERY] Name: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[RECOVERY] ProductID: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getProductId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[RECOVERY] TransportType: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[RECOVERY] VersionId: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getVendorId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[RECOVERY] Error : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->getErrorReason(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    const v21, -0x5ffffff9

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 920
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    const-string v22, "[Wifi-Error] do not need to send subscriber"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :goto_0
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    .line 940
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .line 941
    .local v20, "wifiP2pHandler":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    if-nez v20, :cond_2

    .line 942
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    const-string v22, "[RECOVERY] WifiP2pHandler is null!"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    .end local v13    # "errDevice":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    .end local v20    # "wifiP2pHandler":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    :cond_0
    :goto_1
    return-void

    .line 923
    .restart local v13    # "errDevice":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    :cond_1
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 925
    .local v14, "errorBundle":Landroid/os/Bundle;
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 926
    .local v15, "item":Landroid/os/Bundle;
    const-string v21, "BUNDLE_STRING_ADDRESS"

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const-string v21, "BUNDLE_STRING_NAME"

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const-string v21, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 929
    const-string v21, "BUNDLE_CMKEY_STRING_ERRORCODE"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->getErrorReason(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v21

    const/16 v22, 0x223

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->publishEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 944
    .end local v14    # "errorBundle":Landroid/os/Bundle;
    .end local v15    # "item":Landroid/os/Bundle;
    .restart local v20    # "wifiP2pHandler":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    :cond_2
    const v21, -0x6ffffff1

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 945
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    const-string v22, "[RECOVERY] ErrorCode: ERROR_ACCESSORY_ALREADY_CONNECTED"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->processConnectionSuccess(Ljava/lang/String;)V

    goto :goto_1

    .line 947
    :cond_3
    const v21, -0x6fffffed

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 948
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    const-string v22, "[RECOVERY] ErrorCode: ERROR_OPERATION_IN_PROGRESS"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v21

    const-string v22, "SamAccessoryManager.ERROR_OPERATION_IN_PROGRESS"

    .line 949
    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->processConnectionFail(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 951
    :cond_4
    const v21, -0x5ffffff9

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 952
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    const-string v22, "[RECOVERY] ErrorCode: ERROR_SOCKET_CONNECT_FAILED"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getWiFiSocketConRetryCount()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 954
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[RECOVERY] Retry connectSap : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getWiFiSocketConRetryCount()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const/16 v21, 0x0

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->connectSAP(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 958
    :cond_5
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v21

    const-string v22, "SamAccessoryManager.ERROR_SOCKET_CONNECT_FAILED"

    .line 957
    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->processConnectionFail(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 964
    .end local v20    # "wifiP2pHandler":Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    :cond_6
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 965
    .local v7, "bundle":Landroid/os/Bundle;
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 966
    .local v16, "itemBundle":Landroid/os/Bundle;
    const-string v21, "BUNDLE_STRING_ADDRESS"

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v21, "BUNDLE_STRING_NAME"

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string v21, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 969
    const-string v21, "RECONNECTION_STRING_STEP"

    const-string v22, "MSG_SAACCESSORY_ERROR"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string v21, "BUNDLE_CMKEY_STRING_SAACCESSORY_ERROR_REASON"

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 972
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    .line 982
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    const-string v22, "[Accessory] onError - TransportType is not exist..finish routine"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 974
    :sswitch_0
    const-string v21, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v22, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :goto_2
    const-string v21, "BUNDLE_CMKEY_STRING_SERVICESTATE"

    sget-object v22, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    .line 987
    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->name()Ljava/lang/String;

    move-result-object v22

    .line 986
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v21, "BUNDLE_CMKEY_STRING_ERRORCODE"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->getErrorReason(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[RECOVERY] SAP state changed : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", ERROR, reason: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 992
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->getErrorReason(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 991
    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->getErrorReason(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, "SPP_UNKOWN_ERROR"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_10

    .line 995
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->getErrorReason(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, "SPP_ALREADY_CONNECTED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 997
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SPP Already Connected : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-static {v0, v13, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1900(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Lcom/samsung/android/sdk/accessorymanager/SamDevice;I)V

    goto/16 :goto_1

    .line 978
    :sswitch_1
    const-string v21, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v22, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1000
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->getErrorReason(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, "SPP_CONNECT_TIMEOUT"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1002
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 1003
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    const-string v22, "onError() : ERROR_CONNECT_TIMEOUT: BT Shutdown"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v21

    const/16 v22, 0x25

    new-instance v23, Landroid/os/Bundle;

    invoke-direct/range {v23 .. v23}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {v21 .. v23}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1007
    :cond_8
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v21

    const/16 v22, 0x10

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 1008
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    const-string v22, "onError() : ERROR_CONNECT_TIMEOUT: SCS Set State to DISCONNECTED"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1011
    .local v6, "address":Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v19

    .line 1013
    .local v19, "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v19, :cond_0

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v23, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    goto/16 :goto_1

    .line 1020
    .end local v6    # "address":Ljava/lang/String;
    .end local v19    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->getErrorReason(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, "ERROR_ACCESSORY_NOT_CONNECTED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1021
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onError() : ERROR_ACCESSORY_NOT_CONNECTED, ServiceType : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v19

    .line 1026
    .restart local v19    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v19, :cond_0

    .line 1029
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v21

    const/16 v22, 0x10

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 1030
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    const-string v22, "onError() : ERROR_ACCESSORY_NOT_CONNECTED, Set SCS state to Disconnected"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v23, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    const-string v22, "SERVICECONTROLLER"

    const/16 v23, 0x215

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v7, v3}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1035
    :cond_a
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 1037
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    const-string v22, "onError() : ERROR_ACCESSORY_NOT_CONNECTED, Set SPP state to Disconnected"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v23, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    const-string v22, "SERVICECONTROLLER"

    const/16 v23, 0x215

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v7, v3}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1045
    .end local v19    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_b
    const v21, -0x4fffffff

    move/from16 v0, p2

    move/from16 v1, v21

    if-eq v0, v1, :cond_c

    const v21, -0x4ffffffa

    move/from16 v0, p2

    move/from16 v1, v21

    if-eq v0, v1, :cond_c

    const v21, -0x4ffffff9

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 1049
    :cond_c
    const-string v21, "BUNDLE_CMKEY_STRING_SAACCESSORY_DISCONNECT_REASON"

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1053
    :cond_d
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    const v21, -0x3fffffff    # -2.0000002f

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 1060
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v19

    .line 1061
    .restart local v19    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v19, :cond_0

    .line 1065
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    const-string v22, "[CMAC] Set SPP State to DISCONNECTED"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v23, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 1072
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    const-string v22, "[CMAC] Set SCS State to CONNECTED, SCS will be disconnected"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v23, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 1077
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1079
    .local v11, "discBundle":Landroid/os/Bundle;
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 1080
    .local v12, "discItemBundle":Landroid/os/Bundle;
    const-string v21, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1081
    const-string v21, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v22, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    const-string v22, "[CMAC] ERROR_ANOTHER_TRANSPORT_TYPE_STILL_ACTIVE error, disconnect SCS"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v21

    const/16 v22, 0x24

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v21

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getACDeviceSet(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;

    move-result-object v9

    .line 1090
    .local v9, "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    if-nez v9, :cond_e

    .line 1091
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    const-string v22, "[CMAC] connect : deviceSet is null"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1094
    :cond_e
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;->setRemoteFlag(Z)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v21

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->updateACdeviceSet(Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;)V

    goto/16 :goto_1

    .line 1100
    .end local v9    # "deviceSet":Lcom/samsung/android/hostmanager/connectionmanager/recovery/AutoConnectSet;
    .end local v11    # "discBundle":Landroid/os/Bundle;
    .end local v12    # "discItemBundle":Landroid/os/Bundle;
    .end local v19    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    const-string v22, "SERVICECONTROLLER"

    const/16 v23, 0x215

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v7, v3}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1105
    :cond_10
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1107
    .restart local v6    # "address":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v21

    const/16 v22, 0x10

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->removeWaitingConnectionInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :cond_11
    :goto_3
    invoke-static {v6}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v19

    .line 1119
    .restart local v19    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    if-eqz v19, :cond_0

    .line 1122
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 1127
    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    .line 1128
    .local v17, "sppHandler":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
    if-eqz v17, :cond_12

    .line 1130
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->removeSPPStateCheckTaskOnUnknwonError(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    .line 1133
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v23, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    goto/16 :goto_1

    .line 1111
    .end local v17    # "sppHandler":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
    .end local v19    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_13
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    goto :goto_3

    .line 1139
    .restart local v19    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_14
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessorymanager/SamDevice;->getTransportType()I

    move-result v21

    const/16 v22, 0x10

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v23, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    goto/16 :goto_1

    .line 1149
    .end local v6    # "address":Ljava/lang/String;
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v13    # "errDevice":Lcom/samsung/android/sdk/accessorymanager/SamDevice;
    .end local v16    # "itemBundle":Landroid/os/Bundle;
    .end local v19    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    :cond_15
    const/16 v21, 0x800

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 1151
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v21

    const-string v22, "[jdub] onError() : ERROR_FATAL"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlagForAll(Z)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v21

    .line 1157
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getBondedDevices()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v10

    .line 1158
    .local v10, "devices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_16
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_19

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 1160
    .local v8, "device":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isDisconnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v22

    if-nez v22, :cond_16

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getServiceState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-result-object v18

    .line 1166
    .local v18, "state":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v24, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 1169
    sget-object v22, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_17

    sget-object v22, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->CONNECTING:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_16

    .line 1170
    :cond_17
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[jdub] onError() : try to reconnect spp, device : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 1173
    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v17

    .line 1174
    .local v17, "sppHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    if-eqz v17, :cond_18

    .line 1176
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->initialize()V

    .line 1180
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->mWaitingTask:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$WaitingTask;

    move-object/from16 v22, v0

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$WaitingTask;->setAddress(Ljava/lang/String;)V

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->mWaitingHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->mWaitingTask:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$WaitingTask;

    move-object/from16 v23, v0

    const-wide/16 v24, 0x1f4

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 1187
    .end local v8    # "device":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .end local v17    # "sppHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    .end local v18    # "state":Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v21

    .line 1188
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getConnectedDevices(Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    .line 1190
    .local v5, "SCSdevices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 1191
    .restart local v8    # "device":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[jdub] onError() : ERROR_FATAL, try to reconnect SCS, device : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1195
    .restart local v6    # "address":Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToWearableDevice(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    move-result-object v19

    .line 1196
    .restart local v19    # "wDevice":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    sget-object v24, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setConnectedState(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 1201
    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getProfileHandler(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;

    move-result-object v4

    .line 1202
    .local v4, "SCSHandler":Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;
    if-eqz v4, :cond_1a

    .line 1204
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;->initialize()V

    .line 1207
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->mSCSWaitingTask:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$SCSWaitingTask;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$SCSWaitingTask;->setAddress(Ljava/lang/String;)V

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->mWaitingHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4;->mSCSWaitingTask:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$4$SCSWaitingTask;

    move-object/from16 v23, v0

    const-wide/16 v24, 0x3e8

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 972
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method
