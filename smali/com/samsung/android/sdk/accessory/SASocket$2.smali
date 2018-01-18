.class Lcom/samsung/android/sdk/accessory/SASocket$2;
.super Ljava/lang/Object;
.source "SASocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/accessory/SASocket;->acceptServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SASocket;

.field private final synthetic val$adapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

.field private final synthetic val$localAgentId:Ljava/lang/String;

.field private final synthetic val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SAAdapter;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->val$adapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->val$localAgentId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 459
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->val$adapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->val$localAgentId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 460
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v4

    .line 461
    new-instance v6, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;

    iget-object v7, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    const/4 v9, 0x0

    invoke-direct {v6, v7, v9}, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;)V

    .line 462
    new-instance v7, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;

    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;)V

    .line 459
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/accessory/SAAdapter;->acceptServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;JLcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "connectionId":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$3()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connection accepted successfully.connection Id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/samsung/android/sdk/accessory/SASocket;->access$0(Lcom/samsung/android/sdk/accessory/SASocket;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v0    # "connectionId":Ljava/lang/String;
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v8

    .line 466
    .local v8, "e":Lcom/samsung/android/sdk/accessory/SAException;
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$3()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to accept service connection : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/accessory/SAException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v2

    invoke-static {v1, v11, v2}, Lcom/samsung/android/sdk/accessory/SASocket;->access$0(Lcom/samsung/android/sdk/accessory/SASocket;Ljava/lang/String;I)V

    goto :goto_0
.end method
