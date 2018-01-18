.class Lcom/samsung/android/sdk/accessory/SASocket$1;
.super Ljava/lang/Object;
.source "SASocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/accessory/SASocket;->initiateServiceconnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SASocket;

.field private final synthetic val$localAgentId:Ljava/lang/String;

.field private final synthetic val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessory/SASocket;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$localAgentId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 424
    const/4 v1, 0x0

    .line 426
    .local v1, "enqueueStatus":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v2}, Lcom/samsung/android/sdk/accessory/SASocket;->access$5(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$localAgentId:Ljava/lang/String;

    .line 427
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    new-instance v5, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;

    iget-object v6, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;)V

    .line 428
    new-instance v6, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;

    iget-object v7, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;)V

    .line 426
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/sdk/accessory/SAAdapter;->requestServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 434
    :goto_0
    if-nez v1, :cond_0

    .line 435
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$3()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connection request enqued successfully for peer:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_1
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Lcom/samsung/android/sdk/accessory/SAException;
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$3()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to initiate connection!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v1

    goto :goto_0

    .line 437
    .end local v0    # "e":Lcom/samsung/android/sdk/accessory/SAException;
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$3()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connection request failed for peer:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Cleaning up now"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v2}, Lcom/samsung/android/sdk/accessory/SASocket;->access$6(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 439
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v2}, Lcom/samsung/android/sdk/accessory/SASocket;->access$6(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;->onConnectionFailure(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 441
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v2}, Lcom/samsung/android/sdk/accessory/SASocket;->access$7(Lcom/samsung/android/sdk/accessory/SASocket;)V

    goto :goto_1
.end method
