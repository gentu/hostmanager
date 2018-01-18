.class public Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;
.super Ljava/lang/Thread;
.source "MessagePublisher.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final finishCmd:I


# instance fields
.field private mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

.field private mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/sec/android/api/iface/CVMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mStopFlag:Z

.field private mSubscriberManager:Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "MessagePublisher"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 2
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->mSubscriberManager:Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;

    .line 24
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 28
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->mStopFlag:Z

    .line 33
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 34
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getSubscriberManager()Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->mSubscriberManager:Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;

    .line 35
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 36
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->mStopFlag:Z

    .line 37
    return-void
.end method

.method private handleEventMessage(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 8
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 57
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    const-string v7, "[MSG] Get event subscribers"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->mSubscriberManager:Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->getEventSubscribers()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    .line 59
    .local v5, "subscriberList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/os/Messenger;>;"
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 61
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Messenger;>;"
    if-nez v2, :cond_1

    .line 62
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    const-string v7, "[MSG] subscriberList.iterator set instance is null"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void

    .line 67
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Messenger;

    .line 70
    .local v4, "subscriber":Landroid/os/Messenger;
    if-eqz v4, :cond_1

    .line 71
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    const-string v7, "[MSG] notify event to subscribers"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 76
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "EVT_MSG_KEY"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 79
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    const-string v7, "[MSG] send message for subscribers"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 82
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    const-string v7, "[MSG] event subscriber is not exist, remove the subscriber!"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    const-string v7, "[MSG] event subscriber exception, not remove the subscriber!"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleMessage(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 3
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getMsgType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 46
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msgType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getMsgType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->handleEventMessage(Lcom/sec/android/api/iface/CVMessage;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getMsgType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->handleResponseMessage(Lcom/sec/android/api/iface/CVMessage;)V

    goto :goto_0
.end method

.method private handleResponseMessage(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 8
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 101
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get response messenger, msg id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getMsgID()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->mSubscriberManager:Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;

    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getMsgID()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->getResponseMessenger(J)Landroid/os/Messenger;

    move-result-object v3

    .line 104
    .local v3, "resMessenger":Landroid/os/Messenger;
    if-eqz v3, :cond_0

    .line 105
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    const-string v5, "response to messenger"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 109
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 110
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "RES_MSG_KEY"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 112
    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->mSubscriberManager:Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;

    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getMsgID()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/hostmanager/connectionmanager/SubscriberManager;->removeResponseMessenger(J)V

    .line 125
    :cond_0
    return-void

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    const-string v5, "response messenger is not exist, remove the messenger!"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    const-string v5, "response messenger exception!"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized putQ(Lcom/sec/android/api/iface/CVMessage;)Z
    .locals 4
    .param p1, "msg"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    const/4 v1, 0x0

    .line 138
    monitor-enter p0

    if-nez p1, :cond_0

    .line 139
    :try_start_0
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    const-string v3, "PutQ: CVMessage is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :goto_0
    monitor-exit p0

    return v1

    .line 144
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 147
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    const-string v3, "Thread has stopped"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->start()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    const-string v3, "InterruptedException : Put Queue"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 154
    :catch_1
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_3
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    const-string v3, "NullPointerException : Put Queue"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    const-string v3, "IllegalThreadStateException : Thread start"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 169
    :cond_0
    const/4 v2, 0x0

    .line 172
    .local v2, "msg":Lcom/sec/android/api/iface/CVMessage;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/api/iface/CVMessage;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    :goto_0
    if-eqz v2, :cond_1

    .line 180
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->handleMessage(Lcom/sec/android/api/iface/CVMessage;)V

    .line 184
    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->mStopFlag:Z

    if-eqz v3, :cond_0

    .line 185
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    const-string v4, "Stop Queue running"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 190
    return-void

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    const-string v4, "InterruptedException : Take Queue"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->TAG:Ljava/lang/String;

    const-string v4, "NullPointerException : Take Queue"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setStopFlag()V
    .locals 2

    .prologue
    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->mStopFlag:Z

    .line 130
    new-instance v0, Lcom/sec/android/api/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/api/iface/CVMessage;-><init>()V

    .line 131
    .local v0, "fin":Lcom/sec/android/api/iface/CVMessage;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/api/iface/CVMessage;->setCmdID(I)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->putQ(Lcom/sec/android/api/iface/CVMessage;)Z

    .line 134
    return-void
.end method
