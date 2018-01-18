.class public abstract Lcom/samsung/android/sdk/accessory/SAManagerAgent;
.super Lcom/samsung/android/sdk/accessory/SAAgent;
.source "SAManagerAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;,
        Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;
    }
.end annotation


# static fields
.field public static final EXTRA_AGENT_IMPL_CLASS:Ljava/lang/String; = "agentImplclass"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field static final MESSAGE_FINDPEER_RESPONSE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SAManagerAgent"


# instance fields
.field private mPeerAgentCallback:Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "socketClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/sdk/accessory/SASocket;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SAAgent;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 27
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAManagerAgent;Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->mPeerAgentCallback:Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/android/sdk/accessory/SAManagerAgent;)Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->mPeerAgentCallback:Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;

    return-object v0
.end method

.method private getAgentDetails(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "agentId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getAgentDetails(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 39
    :goto_0
    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Lcom/samsung/android/sdk/accessory/SAException;
    const-string v2, "SAManagerAgent"

    const-string v3, "Failed to fetch agent details."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    const-string v2, "Accessory Framework has died!"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public getAgentId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agentClassName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getAgentId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 49
    :goto_0
    return-object v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Lcom/samsung/android/sdk/accessory/SAException;
    const-string v2, "SAManagerAgent"

    const-string v3, "Failed to fetch agent ID."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    const-string v2, "Accessory Framework has died!"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected getAgentImplClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "agentId"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->getAgentDetails(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 63
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 64
    const-string v1, ""

    .line 66
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "agentImplclass"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAgentPackagename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "agentId"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->getAgentDetails(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 56
    const-string v1, ""

    .line 58
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onPeerFound(ILjava/util/List;)V
    .locals 0
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/accessory/SAPeerAgent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, "peerList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessory/SAPeerAgent;>;"
    return-void
.end method

.method protected requestPeerAgents()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;-><init>(Lcom/samsung/android/sdk/accessory/SAManagerAgent;)V

    .line 71
    .local v0, "findPeerRunnable":Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->runOnBackgroundThread(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method
