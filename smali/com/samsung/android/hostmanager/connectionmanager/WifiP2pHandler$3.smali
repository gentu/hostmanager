.class Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$3;
.super Ljava/lang/Object;
.source "WifiP2pHandler.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->getConnectListener()Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
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
    .line 580
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 588
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P2p Connect request FAIL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->showToast(Ljava/lang/String;)V

    .line 590
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 591
    :cond_0
    const-string v0, "WifiP2pHandler"

    const-string v1, "ConnectListener Fail : ERROR"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    const-string v1, "WIFIP2P_CONNECT_ERROR"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->access$700(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;Ljava/lang/String;)V

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;->WIFI_P2P_HANDLER_IDLE:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->setHandlerState(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$State;)V

    .line 595
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    const-string v1, "P2p Connect request Success"

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;->showToast(Ljava/lang/String;)V

    .line 584
    return-void
.end method
