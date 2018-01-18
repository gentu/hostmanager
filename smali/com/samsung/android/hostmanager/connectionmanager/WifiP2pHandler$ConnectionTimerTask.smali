.class Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;
.super Ljava/lang/Object;
.source "WifiP2pHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;
    .param p2, "x1"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$1;

    .prologue
    .line 770
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 772
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCurrentCommand()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 773
    const-string v0, "WifiP2pHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection TIMER EXPIRED! btAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCurrentCommand()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCurrentCommand()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getCommand()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    .line 775
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_CONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$1300(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 776
    const-string v0, "WifiP2pHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$1400()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$1308(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)I

    .line 778
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getDataExchanger()Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendCancelConnectWifiP2p()V

    .line 779
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$1500(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;I)V

    .line 792
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    const-string v1, "WiFi Direct connection TIME OUT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->showToast(Ljava/lang/String;)V

    .line 793
    return-void

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    const-string v1, "WIFIP2P_CONNECT_TIMEOUT"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$700(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getCurrentCommand()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$Command;->getBtAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$1600(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getHandlerState()Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_WAITING_DISCONNECT:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    if-ne v0, v1, :cond_0

    .line 786
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$1700(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;)V

    goto :goto_0

    .line 789
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    const-string v1, "WIFIP2P_CONNECT_TIMEOUT"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$700(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$ConnectionTimerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_IDLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setHandlerState(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;)V

    goto :goto_0
.end method
