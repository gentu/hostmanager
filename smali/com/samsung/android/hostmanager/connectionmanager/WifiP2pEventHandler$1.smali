.class Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler$1;
.super Landroid/os/Handler;
.source "WifiP2pEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 84
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EventHandler : Received intent"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 87
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 88
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Intent is null"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 95
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Intent action is null"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_2
    const-string v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 100
    const-string v4, "wifi_p2p_state"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 101
    .local v3, "state":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 102
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[wifip2p] P2P state changed - Enabled"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    const-string v5, "SERVICECONTROLLER"

    const/16 v6, 0x240

    invoke-static {v4, v5, v6, v7, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    :cond_3
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[wifip2p] P2P state changed - Disabled"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    const-string v5, "SERVICECONTROLLER"

    const/16 v6, 0x241

    invoke-static {v4, v5, v6, v7, v7}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    goto :goto_0

    .line 108
    .end local v3    # "state":I
    :cond_4
    const-string v4, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 109
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[wifip2p] P2P peers changed"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 111
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->access$300(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->access$400(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 113
    :cond_5
    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 114
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 117
    const-string v4, "networkInfo"

    .line 118
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 119
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 120
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[wifip2p] P2P connection changed - connected with the other device"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->access$300(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->access$400(Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;)Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pHandler;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    goto/16 :goto_0

    .line 123
    :cond_6
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[wifip2p] P2P connection changed - DISCONNECTED"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 126
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_7
    const-string v4, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/WifiP2pEventHandler;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[wifip2p] P2P this device changed."

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
