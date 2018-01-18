.class Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;
.super Ljava/lang/Object;
.source "EventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BroadcastReceiverTask"
.end annotation


# instance fields
.field private intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->intent:Landroid/content/Intent;

    return-void
.end method

.method private deviceFilter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1483
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Run device filter"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1485
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 1486
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check device("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isRequestedDeviceList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1489
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Deny!"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    :cond_0
    :goto_0
    return-void

    .line 1492
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept!"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1500
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1502
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1503
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Intent action is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    :cond_0
    :goto_0
    return-void

    .line 1507
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->intent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->deviceFilter(Landroid/content/Intent;)V

    .line 1509
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1511
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$300(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto :goto_0

    .line 1513
    :cond_2
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1515
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$400(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto :goto_0

    .line 1517
    :cond_3
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1519
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$500(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto :goto_0

    .line 1521
    :cond_4
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1523
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto :goto_0

    .line 1525
    :cond_5
    const-string v1, "android.bluetooth.device.action.UUID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1527
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$700(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto :goto_0

    .line 1529
    :cond_6
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1531
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto :goto_0

    .line 1533
    :cond_7
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1535
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$900(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto :goto_0

    .line 1537
    :cond_8
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1539
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1000(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1541
    :cond_9
    const-string v1, "com.sec.android.service.connectionmanager.action.MSG_WAIT_FOR_CM_GATTSERVICE_BINDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1543
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1100(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1545
    :cond_a
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1547
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1200(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1549
    :cond_b
    const-string v1, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1551
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1300(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1553
    :cond_c
    const-string v1, "com.samsung.android.plugin.ACTION_PLUGIN_CHANGE_NOTI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1555
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1400(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1557
    :cond_d
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1559
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1500(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1560
    :cond_e
    const-string v1, "com.sec.android.service.connectionmanager.action.MSG_SET_MANUAL_AUTO_LOCK_RSSI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1562
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1600(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public setBroadcastIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 1478
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$BroadcastReceiverTask;->intent:Landroid/content/Intent;

    .line 1479
    return-void
.end method
