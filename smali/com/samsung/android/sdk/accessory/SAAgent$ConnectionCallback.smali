.class Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;
.super Ljava/lang/Object;
.source "SAAgent.java"

# interfaces
.implements Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SAAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0

    .prologue
    .line 1749
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;)V
    .locals 0

    .prologue
    .line 1749
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    return-void
.end method


# virtual methods
.method public onConnectionClosed(Lcom/samsung/android/sdk/accessory/SASocket;)V
    .locals 1
    .param p1, "socket"    # Lcom/samsung/android/sdk/accessory/SASocket;

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$10(Lcom/samsung/android/sdk/accessory/SAAgent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1788
    return-void
.end method

.method public onConnectionFailure(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 5
    .param p1, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p2, "error"    # I

    .prologue
    .line 1764
    const/16 v2, 0x800

    if-ne p2, v2, :cond_0

    .line 1765
    const-string v2, "SAAgent"

    const-string v3, "Framework disconnected during connection process!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v2, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    .line 1783
    :goto_0
    return-void

    .line 1768
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v2, :cond_2

    .line 1769
    const/16 v2, 0x40a

    if-ne p2, v2, :cond_1

    .line 1770
    const/16 p2, 0x409

    .line 1771
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1772
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1774
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    const-string v2, "SAAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connection attempt failed wih peer:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1776
    .local v0, "message":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1777
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1778
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1780
    .end local v0    # "message":Landroid/os/Message;
    :cond_2
    const-string v2, "SAAgent"

    const-string v3, "onConnectionFailure: mBackgroundWorker is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConnectionSuccess(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;)V
    .locals 3
    .param p1, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p2, "socket"    # Lcom/samsung/android/sdk/accessory/SASocket;

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$10(Lcom/samsung/android/sdk/accessory/SAAgent;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 1754
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$10(Lcom/samsung/android/sdk/accessory/SAAgent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1753
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1756
    const-string v0, "SAAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection success with peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V

    .line 1760
    return-void

    .line 1753
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
