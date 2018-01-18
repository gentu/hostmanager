.class Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;
.super Ljava/lang/Object;
.source "SAFileTransferManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 123
    if-eqz p2, :cond_1

    .line 125
    const-string v2, "FileTransferProfileJAR/SAFileTransferManager"

    const-string v3, "inside onServiceConnected mFTServiceConn"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {p2}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v1

    .line 129
    .local v1, "mFTService":Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    new-instance v3, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    .line 130
    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    invoke-static {v4}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$0(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    invoke-static {v5}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$0(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;)V

    .line 129
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$1(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;)V

    .line 132
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "FileUpdateReceiverThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 134
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    new-instance v3, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;-><init>(Landroid/os/Looper;)V

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$2(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;)V

    .line 137
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$3()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    move-result-object v3

    monitor-enter v3

    .line 138
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$4(Z)V

    .line 139
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$3()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 140
    const-string v2, "FileTransferProfileJAR/SAFileTransferManager"

    const-string v4, "onFTServiceConnected: Just notified"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    monitor-exit v3

    .line 146
    .end local v0    # "ht":Landroid/os/HandlerThread;
    .end local v1    # "mFTService":Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;
    :goto_0
    return-void

    .line 137
    .restart local v0    # "ht":Landroid/os/HandlerThread;
    .restart local v1    # "mFTService":Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 143
    .end local v0    # "ht":Landroid/os/HandlerThread;
    .end local v1    # "mFTService":Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;
    :cond_1
    const-string v2, "FileTransferProfileJAR/SAFileTransferManager"

    const-string v3, "onFTServiceConnected: service not created"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 11
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x0

    .line 150
    const-string v5, "FileTransferProfileJAR/SAFileTransferManager"

    const-string v6, "File Transfer service disconnect received"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$3()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 152
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$3()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$1(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;)V

    .line 154
    :cond_0
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$4(Z)V

    .line 156
    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    invoke-static {v5}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$5(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 157
    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    invoke-static {v5}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$5(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->quit()V

    .line 158
    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    invoke-static {v5, v7}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$2(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;)V

    .line 162
    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$6()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 180
    return-void

    .line 162
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 163
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    .line 165
    .local v0, "agentInfo":Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getTransactionsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getTransactionsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v1, "cleanupList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;>;"
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getTransactionsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 172
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 177
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 168
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 169
    .local v4, "txEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    .end local v4    # "txEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;>;"
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;

    .line 173
    .local v3, "txDetails":Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getLocalCallback()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    move-result-object v5

    iget v8, v3, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    .line 174
    iget-object v9, v3, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mFilePath:Ljava/lang/String;

    .line 175
    const/16 v10, 0x800

    .line 173
    invoke-interface {v5, v8, v9, v10}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;->onTransferCompleted(ILjava/lang/String;I)V

    goto :goto_2
.end method
