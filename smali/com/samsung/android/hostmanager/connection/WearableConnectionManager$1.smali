.class Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;
.super Ljava/lang/Object;
.source "WearableConnectionManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/connectionmanager/ScmConnector$ConnectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->proxyInit(Ljava/lang/String;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/samsung/android/sdk/connectionmanager/ScmController;)V
    .locals 8
    .param p1, "proxy"    # Lcom/samsung/android/sdk/connectionmanager/ScmController;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 223
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CM::proxyInit()::onCreated"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$100(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 225
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CM::proxyInit()::remove mHandler Callback"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$100(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$200(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v1, v4}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$102(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Landroid/os/Handler;)Landroid/os/Handler;

    .line 228
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v1, v4}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$202(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v1, p1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$302(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Lcom/samsung/android/sdk/connectionmanager/ScmController;)Lcom/samsung/android/sdk/connectionmanager/ScmController;

    .line 231
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$300(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Lcom/samsung/android/sdk/connectionmanager/ScmController;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$400(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->setEventListener(Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;)V

    .line 232
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$300(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Lcom/samsung/android/sdk/connectionmanager/ScmController;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$500(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/connectionmanager/ScmController;->setResponseListener(Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;)V

    .line 233
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v1, v6}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$602(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Z)Z

    .line 235
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$700(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    .line 236
    invoke-static {v1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$800(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)I

    move-result v1

    if-eq v1, v6, :cond_1

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    .line 237
    invoke-static {v1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$800(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)I

    move-result v1

    if-ne v1, v7, :cond_2

    .line 238
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM::mPendingAddress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$700(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPendingConnectionType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    .line 239
    invoke-static {v3}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$800(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM::proxyInit()::onCreated pending conType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    .line 241
    invoke-static {v3}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$800(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CM::proxyInit()::=============================================="

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CM::proxyInit()::       startManageconnectionInfo again        "

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CM::proxyInit()::=============================================="

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CM::proxy created : trying reconnection with the pending info"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$700(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$800(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->connectWearable(Ljava/lang/String;I)I
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CM::Reconnect request done : reset the Pending info"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v1, v4}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$702(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v1, v5}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$802(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;I)I

    .line 256
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    iget-object v1, v1, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnection:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;

    if-eqz v1, :cond_4

    .line 257
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    iget-object v1, v1, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnection:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;

    iget-object v1, v1, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;->btAddress:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 258
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM::proxyInit()::onCreated pending btAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnection:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;->btAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    iget-object v1, v1, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnection:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;

    iget v1, v1, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;->connType:I

    if-eq v1, v6, :cond_3

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    iget-object v1, v1, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnection:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;

    iget v1, v1, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;->connType:I

    if-ne v1, v7, :cond_4

    .line 262
    :cond_3
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM::proxyInit()::onCreated pending conType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnection:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;

    iget v3, v3, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;->connType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CM::proxyInit()::=============================================="

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CM::proxyInit()::       startManageconnectionInfo again        "

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CM::proxyInit()::=============================================="

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    iput-object v4, v1, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnection:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;

    .line 273
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CM::Reconnect request done : reset the Pending info"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v1, v4}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$702(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v1, v5}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$802(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;I)I

    goto/16 :goto_0

    .line 251
    .end local v0    # "e":Lcom/samsung/android/hostmanager/exception/InvalidBTAddressException;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CM::Reconnect request done : reset the Pending info"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$702(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v2, v5}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$802(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;I)I

    throw v1
.end method

.method public onDeleted(Lcom/samsung/android/sdk/connectionmanager/ScmController;)V
    .locals 3
    .param p1, "proxy"    # Lcom/samsung/android/sdk/connectionmanager/ScmController;

    .prologue
    const/4 v2, 0x0

    .line 277
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CM::proxyInit()::onDeleted"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    iput-object v2, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnection:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;

    .line 279
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$602(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Z)Z

    .line 280
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$302(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Lcom/samsung/android/sdk/connectionmanager/ScmController;)Lcom/samsung/android/sdk/connectionmanager/ScmController;

    .line 281
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$100(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$100(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$200(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 284
    :cond_0
    return-void
.end method
