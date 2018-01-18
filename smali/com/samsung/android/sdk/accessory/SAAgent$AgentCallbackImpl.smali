.class Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;
.super Ljava/lang/Object;
.source "SAAgent.java"

# interfaces
.implements Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AgentCallbackImpl"
.end annotation


# instance fields
.field private mAgent:Lcom/samsung/android/sdk/accessory/SAAgent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0
    .param p1, "agent"    # Lcom/samsung/android/sdk/accessory/SAAgent;

    .prologue
    .line 1809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1810
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    .line 1811
    return-void
.end method


# virtual methods
.method public onAgentRegistered()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$11(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    .line 1833
    return-void
.end method

.method public onFrameworkConnected()V
    .locals 0

    .prologue
    .line 1828
    return-void
.end method

.method public onFrameworkDisconnected()V
    .locals 3

    .prologue
    .line 1817
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v1, :cond_0

    .line 1818
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1819
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x800

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1820
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1824
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 1822
    :cond_0
    const-string v1, "SAAgent"

    const-string v2, "onFrameworkDisconnected: mBackgroundWorker is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
