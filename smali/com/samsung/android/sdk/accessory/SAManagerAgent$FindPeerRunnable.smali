.class final Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;
.super Ljava/lang/Object;
.source "SAManagerAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAManagerAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FindPeerRunnable"
.end annotation


# instance fields
.field private mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAManagerAgent;)V
    .locals 0
    .param p1, "agent"    # Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    .line 122
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 128
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "agentId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 130
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    const/16 v4, 0x800

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iput-object v6, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    .line 146
    .end local v0    # "agentId":Ljava/lang/String;
    :goto_0
    return-void

    .line 133
    .restart local v0    # "agentId":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    .line 134
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    invoke-static {v4}, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->access$0(Lcom/samsung/android/sdk/accessory/SAManagerAgent;)Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;

    move-result-object v4

    .line 133
    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/sdk/accessory/SAAdapter;->findPeerAgents(Ljava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I

    move-result v2

    .line 135
    .local v2, "status":I
    if-nez v2, :cond_1

    .line 136
    const-string v3, "SAManagerAgent"

    const-string v4, "Find peer request enqueued successfully."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :goto_1
    iput-object v6, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    goto :goto_0

    .line 138
    :cond_1
    :try_start_2
    const-string v3, "SAManagerAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Find peer failed:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->onFindPeerAgentResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    :try_end_2
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 141
    .end local v0    # "agentId":Ljava/lang/String;
    .end local v2    # "status":I
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Lcom/samsung/android/sdk/accessory/SAException;
    :try_start_3
    const-string v3, "SAManagerAgent"

    const-string v4, "Find Peer request failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    iput-object v6, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    goto :goto_0

    .line 143
    .end local v1    # "e":Lcom/samsung/android/sdk/accessory/SAException;
    :catchall_0
    move-exception v3

    .line 144
    iput-object v6, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    .line 145
    throw v3
.end method
