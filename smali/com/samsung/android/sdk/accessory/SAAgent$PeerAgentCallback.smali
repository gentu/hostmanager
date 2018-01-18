.class Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;
.super Lcom/samsung/accessory/api/ISAPeerAgentCallback$Stub;
.source "SAAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeerAgentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SAAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0

    .prologue
    .line 1836
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-direct {p0}, Lcom/samsung/accessory/api/ISAPeerAgentCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;)V
    .locals 0

    .prologue
    .line 1836
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    return-void
.end method


# virtual methods
.method public onPeerAgentUpdated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "update"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x69

    .line 1881
    const-string v4, "SAAgent"

    const-string v5, "Received peer agent update"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    const-class v4, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1883
    const-string v4, "peerAgents"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1884
    const-string v4, "peerAgents"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1885
    .local v2, "peerAgents":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessory/SAPeerAgent;>;"
    const-string v4, "peerAgentStatus"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1886
    .local v3, "status":I
    if-nez v2, :cond_0

    .line 1887
    const-string v4, "SAAgent"

    const-string v5, "Peer Update - invalid peer agent list from Accessory Framework"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    .end local v2    # "peerAgents":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessory/SAPeerAgent;>;"
    .end local v3    # "status":I
    :goto_0
    return-void

    .line 1888
    .restart local v2    # "peerAgents":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessory/SAPeerAgent;>;"
    .restart local v3    # "status":I
    :cond_0
    if-eq v3, v8, :cond_1

    const/16 v4, 0x6a

    if-eq v3, v4, :cond_1

    .line 1889
    const-string v4, "SAAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Peer Update - invalid peer status from Accessory Framework:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1891
    :cond_1
    const-string v4, "SAAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " Peer agent(s) updated for:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1898
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v4, v4, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v4, :cond_4

    .line 1899
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v4, v4, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1900
    .local v0, "message":Landroid/os/Message;
    const/4 v4, 0x4

    iput v4, v0, Landroid/os/Message;->what:I

    .line 1901
    if-ne v3, v8, :cond_3

    .line 1902
    const/4 v4, 0x1

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 1906
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1907
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v4, v4, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1892
    .end local v0    # "message":Landroid/os/Message;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1893
    .local v1, "peerAgent":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    const-string v5, "SAAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PeerID:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ContainerId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getContainerId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AccessoryId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1894
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getAccessoryId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1893
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1904
    .end local v1    # "peerAgent":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .restart local v0    # "message":Landroid/os/Message;
    :cond_3
    const/4 v4, 0x2

    iput v4, v0, Landroid/os/Message;->arg1:I

    goto :goto_2

    .line 1909
    .end local v0    # "message":Landroid/os/Message;
    :cond_4
    const-string v4, "SAAgent"

    const-string v5, "onPeerAgentUpdated: mBackgroundWorker is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1913
    .end local v2    # "peerAgents":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessory/SAPeerAgent;>;"
    .end local v3    # "status":I
    :cond_5
    const-string v4, "SAAgent"

    const-string v5, "No peer agents in PeerAgent update callback!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onPeerAgentsFound(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "response"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 1839
    const-string v4, "SAAgent"

    const-string v5, "FindPeer response received."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    const-class v4, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1841
    const-string v4, "errorcode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1842
    const-string v4, "errorcode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1843
    .local v0, "errorCode":I
    const-string v4, "SAAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Peer Not Found:Error - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v4, v4, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v4, :cond_0

    .line 1846
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v4, v4, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1847
    .local v1, "message":Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 1848
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1849
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v4, v4, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v4, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1877
    .end local v0    # "errorCode":I
    .end local v1    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 1851
    .restart local v0    # "errorCode":I
    :cond_0
    const-string v4, "SAAgent"

    const-string v5, "onPeersAgentsFound: mBackgroundWorker is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1854
    .end local v0    # "errorCode":I
    :cond_1
    const-string v4, "peerAgents"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1855
    .local v3, "peerAgents":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessory/SAPeerAgent;>;"
    if-nez v3, :cond_2

    .line 1856
    const-string v4, "SAAgent"

    const-string v5, "Find Peer - invalid response from Accessory Framework"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1858
    :cond_2
    const-string v4, "SAAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " Peer agent(s) found for:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1866
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v4, v4, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v4, :cond_4

    .line 1867
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v4, v4, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1868
    .restart local v1    # "message":Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 1869
    const/4 v4, 0x0

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 1870
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1871
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v4, v4, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v4, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1860
    .end local v1    # "message":Landroid/os/Message;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1861
    .local v2, "peerAgent":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    const-string v5, "SAAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PeerID:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ContainerId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getContainerId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AccessoryId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1862
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getAccessoryId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Transport:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getTransportType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1861
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1873
    .end local v2    # "peerAgent":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    :cond_4
    const-string v4, "SAAgent"

    const-string v5, "onPeerAgentsFound: mBackgroundWorker is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
