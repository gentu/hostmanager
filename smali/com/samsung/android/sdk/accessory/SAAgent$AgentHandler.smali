.class Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;
.super Landroid/os/Handler;
.source "SAAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AgentHandler"
.end annotation


# static fields
.field static final MESSAGE_ACCEPT_SERVICE_CONNECTION:I = 0x7

.field static final MESSAGE_BIND_FRAMEWORK:I = 0x0

.field static final MESSAGE_CLEANUP:I = 0xd

.field static final MESSAGE_FINDPEER_RESPONSE:I = 0x3

.field static final MESSAGE_FINDPEER_UPDATE:I = 0x4

.field static final MESSAGE_ON_CONNECION_FAILURE:I = 0xc

.field static final MESSAGE_ON_ERROR:I = 0xb

.field static final MESSAGE_PEER_AUTH_REQUEST:I = 0x9

.field static final MESSAGE_PEER_AUTH_RESPONSE:I = 0xa

.field static final MESSAGE_REGISTER:I = 0x1

.field static final MESSAGE_REJECT_SERVICE_CONNECTION:I = 0x8

.field static final MESSAGE_REQUEST_SERVICE_CONNECTION:I = 0x6

.field static final MESSGAE_CONNECTION_INDICATION:I = 0x5

.field static final MESSGAE_FINDPEER:I = 0x2


# instance fields
.field serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;Landroid/os/Looper;)V
    .locals 0
    .param p1, "agent"    # Lcom/samsung/android/sdk/accessory/SAAgent;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1269
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1270
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    .line 1271
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    .line 1281
    const/4 v5, 0x0

    .line 1282
    .local v5, "peer":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 1357
    const-string v9, "SAAgent"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Invalid msg received: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :goto_0
    return-void

    .line 1285
    :pswitch_0
    :try_start_0
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v9}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$0(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1286
    :catch_0
    move-exception v2

    .line 1287
    .local v2, "e":Lcom/samsung/android/sdk/accessory/SAException;
    const-string v9, "SAAgent"

    const-string v10, "Binding to accessory framework failed"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1288
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v10

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_0

    .line 1292
    .end local v2    # "e":Lcom/samsung/android/sdk/accessory/SAException;
    :pswitch_1
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v9}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$1(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    goto :goto_0

    .line 1295
    :pswitch_2
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v9}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$2(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    goto :goto_0

    .line 1298
    :pswitch_3
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 1299
    .local v8, "result":I
    if-nez v8, :cond_1

    .line 1300
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    instance-of v9, v9, Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    if-eqz v9, :cond_0

    .line 1301
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, [Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 1302
    .local v7, "peers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessory/SAPeerAgent;>;"
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    check-cast v9, Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    invoke-virtual {v9, v8, v7}, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->onPeerFound(ILjava/util/List;)V

    goto :goto_0

    .line 1304
    .end local v7    # "peers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessory/SAPeerAgent;>;"
    :cond_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1305
    .local v6, "peerAgents":[Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Lcom/samsung/android/sdk/accessory/SAAgent;->onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    goto :goto_0

    .line 1308
    .end local v6    # "peerAgents":[Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    instance-of v9, v9, Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    if-eqz v9, :cond_2

    .line 1309
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    check-cast v9, Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v8, v10}, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->onPeerFound(ILjava/util/List;)V

    goto :goto_0

    .line 1311
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v11, v10}, Lcom/samsung/android/sdk/accessory/SAAgent;->onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    goto :goto_0

    .line 1316
    .end local v8    # "result":I
    :pswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1317
    .restart local v6    # "peerAgents":[Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v6, v10}, Lcom/samsung/android/sdk/accessory/SAAgent;->onPeerAgentsUpdated([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    goto :goto_0

    .line 1320
    .end local v6    # "peerAgents":[Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    :pswitch_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    .line 1321
    .local v4, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v9, v4}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$3(Lcom/samsung/android/sdk/accessory/SAAgent;Landroid/content/Intent;)V

    goto :goto_0

    .line 1324
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1325
    .local v1, "acceptor":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v9, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$4(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto/16 :goto_0

    .line 1328
    .end local v1    # "acceptor":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1329
    .local v0, "acceptingPeer":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v9, v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$5(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto/16 :goto_0

    .line 1332
    .end local v0    # "acceptingPeer":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    :pswitch_8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1333
    .local v3, "initiator":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v9, v3}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$6(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto/16 :goto_0

    .line 1336
    .end local v3    # "initiator":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    :pswitch_9
    iget-object v10, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-static {v10, v9}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$7(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto/16 :goto_0

    .line 1339
    :pswitch_a
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$8(Lcom/samsung/android/sdk/accessory/SAAgent;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1342
    :pswitch_b
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_3

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v9, v9, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    if-eqz v9, :cond_3

    .line 1343
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5    # "peer":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    check-cast v5, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1345
    .restart local v5    # "peer":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10, v5}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto/16 :goto_0

    .line 1348
    :pswitch_c
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_4

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v9, v9, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    if-eqz v9, :cond_4

    .line 1349
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5    # "peer":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    check-cast v5, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1351
    .restart local v5    # "peer":Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v5, v11, v10}, Lcom/samsung/android/sdk/accessory/SAAgent;->onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V

    goto/16 :goto_0

    .line 1354
    :pswitch_d
    iget-object v9, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v9}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$9(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    goto/16 :goto_0

    .line 1282
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 1274
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    .line 1277
    return-void
.end method
