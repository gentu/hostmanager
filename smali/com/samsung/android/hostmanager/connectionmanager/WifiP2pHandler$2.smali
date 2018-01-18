.class Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$2;
.super Ljava/lang/Object;
.source "WifiP2pHandler.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getControlCallback()Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedEvent(ILandroid/os/Bundle;Landroid/content/Intent;)V
    .locals 6
    .param p1, "event"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 514
    const/16 v2, 0x240

    if-ne p1, v2, :cond_2

    .line 515
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$302(Z)Z

    .line 516
    const-string v2, "WifiP2pHandler"

    const-string v3, "WifiP2p Enabled"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_ENABLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    if-ne v2, v3, :cond_1

    .line 519
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$400(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 520
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$400(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->doNextStep(Ljava/lang/String;)V

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$500(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    goto :goto_0

    .line 525
    :cond_2
    const/16 v2, 0x241

    if-ne p1, v2, :cond_0

    .line 526
    const-string v2, "WifiP2pHandler"

    const-string v3, "WifiP2p Disabled"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    const-string v3, "WIFIP2P_CONNECT_ERROR"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$700(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Ljava/lang/String;)V

    .line 530
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$302(Z)Z

    .line 531
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$800(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V

    .line 533
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->WIFIP2P:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->getConnectedDevices(Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 534
    .local v0, "connectedDevices":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 535
    .local v1, "wd":Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;->DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$900(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Ljava/lang/String;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceState;)V

    .line 536
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$1000(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Ljava/lang/String;)V

    goto :goto_1
.end method
