.class Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;
.super Lcom/samsung/accessory/api/ISAPeerAgentCallback$Stub;
.source "SAManagerAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAManagerAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeerAgentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SAManagerAgent;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    invoke-direct {p0}, Lcom/samsung/accessory/api/ISAPeerAgentCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAManagerAgent;Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAManagerAgent;)V

    return-void
.end method


# virtual methods
.method public onPeerAgentUpdated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "update"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    return-void
.end method

.method public onPeerAgentsFound(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "response"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 77
    const-string v3, "SAManagerAgent"

    const-string v4, "FindPeer response received."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-class v3, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 79
    const-string v3, "errorcode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    const-string v3, "errorcode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, "errorCode":I
    const-string v3, "SAManagerAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Peer Not Found:Error - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 83
    .local v1, "message":Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 84
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 85
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    .end local v0    # "errorCode":I
    .end local v1    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string v3, "peerAgents"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 88
    .local v2, "peerAgents":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessory/SAPeerAgent;>;"
    if-nez v2, :cond_1

    .line 89
    const-string v3, "SAManagerAgent"

    const-string v4, "Find Peer - invalid response from Accessory Framework"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_1
    const-string v3, "SAManagerAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " Peer agent(s) found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 93
    .restart local v1    # "message":Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 94
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 95
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
