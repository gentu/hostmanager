.class public abstract Lcom/samsung/android/sdk/accessory/SASocket;
.super Ljava/lang/Object;
.source "SASocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;,
        Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;,
        Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;,
        Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;
    }
.end annotation


# static fields
.field public static final CONNECTION_LOST_DEVICE_DETACHED:I = 0x209

.field public static final CONNECTION_LOST_PEER_DISCONNECTED:I = 0x201

.field public static final CONNECTION_LOST_RECEIVE_LIMIT_VIOLATED:I = 0x20b

.field public static final CONNECTION_LOST_RETRANSMISSION_FAILED:I = 0x20a

.field public static final CONNECTION_LOST_UNKNOWN_REASON:I = 0x200

.field private static final DATA_KEY:Ljava/lang/String; = "_"

.field private static final ERROR_CONNECTION_ALREADY_CLOSED:I = 0xa01

.field public static final ERROR_FATAL:I = 0x800

.field private static final ERROR_INVALID_CHANNEL:I = 0xa06

.field private static final ERROR_WRITE_TIMEDOUT:I = 0xa07

.field private static final SOCKET_CONNECTED:I = 0x1

.field private static final SOCKET_DISCONNECTED:I = 0x2

.field private static final SOCKET_FORCE_CLOSED:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

.field private mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

.field private mConnectionId:Ljava/lang/String;

.field private mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

.field private mIsConnected:I

.field private mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    .line 148
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    .line 191
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/android/sdk/accessory/SASocket;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SASocket;->handleConnectionResponse(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/android/sdk/accessory/SASocket;IILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 638
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/accessory/SASocket;->handleIncomingData(IILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/android/sdk/accessory/SASocket;I)V
    .locals 0

    .prologue
    .line 627
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->handleConnectionLoss(I)V

    return-void
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SAAdapter;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/android/sdk/accessory/SASocket;)V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->cleanupSocket()V

    return-void
.end method

.method private cleanupSocket()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 568
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->quit()V

    .line 569
    return-void
.end method

.method private static getDataKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "connId"    # Ljava/lang/String;
    .param p1, "channelId"    # I

    .prologue
    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleConnectionLoss(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 628
    const/16 v0, 0x800

    if-ne p1, v0, :cond_0

    .line 629
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    .line 633
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->onServiceConnectionLost(I)V

    .line 635
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->cleanupSocket()V

    .line 636
    return-void

    .line 631
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    goto :goto_0
.end method

.method private handleConnectionResponse(Ljava/lang/String;I)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 612
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    if-eqz v0, :cond_1

    .line 613
    if-nez p1, :cond_0

    .line 614
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v1, "connectionId is null so cleaning up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;->onConnectionFailure(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 616
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->cleanupSocket()V

    .line 625
    :goto_0
    return-void

    .line 618
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    .line 619
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    .line 620
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;->onConnectionSuccess(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;)V

    goto :goto_0

    .line 623
    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v1, "Connection status callback not found! Ignoring response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleIncomingData(IILandroid/os/Bundle;)V
    .locals 12
    .param p1, "channelId"    # I
    .param p2, "fragmentIndex"    # I
    .param p3, "dataBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 639
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    if-eq v1, v11, :cond_1

    .line 640
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v2, "Ignoring data, socket is not yet established"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    const-string v1, "com.samsung.accessory.adapter.extra.READ_BYTES"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 644
    .local v3, "data":[B
    if-nez v3, :cond_2

    .line 645
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v2, "Failed to reassemble! - null data received!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 649
    :cond_2
    const/4 v8, -0x1

    .line 650
    .local v8, "retVal":I
    const-string v1, "com.samsung.accessory.adapter.extra.READ_LENGHT"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 651
    .local v5, "length":I
    const-string v1, "com.samsung.accessory.adapter.extra.READ_OFFSET"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 652
    .local v4, "offset":I
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->getDataKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "handleIncomingData():  "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, v3

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " ["

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "]"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getApduSize()I

    move-result v1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/accessory/SAReassembler;->assembleData(Ljava/lang/Object;II[BII)I

    move-result v8

    .line 657
    if-ne v8, v11, :cond_4

    .line 658
    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAReassembler;->getAppData(Ljava/lang/Object;)[B

    move-result-object v6

    .line 659
    .local v6, "appPayload":[B
    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/sdk/accessory/SASocket;->onReceive(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    .end local v6    # "appPayload":[B
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->recycle([B)V

    .line 668
    if-eq v8, v10, :cond_0

    .line 669
    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAReassembler;->shutDown(Ljava/lang/Object;)V

    goto :goto_0

    .line 660
    :cond_4
    const/4 v1, 0x3

    if-ne v8, v1, :cond_3

    .line 661
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v2, "Failed to reassemble! - closing down the connection..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 664
    :catch_0
    move-exception v7

    .line 665
    .local v7, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v2, "Error in onRead!"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 667
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->recycle([B)V

    .line 668
    if-eq v8, v10, :cond_0

    .line 669
    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAReassembler;->shutDown(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 666
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 667
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->recycle([B)V

    .line 668
    if-eq v8, v10, :cond_5

    .line 669
    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAReassembler;->shutDown(Ljava/lang/Object;)V

    .line 671
    :cond_5
    throw v1
.end method

.method private requestClose()V
    .locals 5

    .prologue
    .line 538
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->closeServiceConnection(Ljava/lang/String;)I

    move-result v1

    .line 539
    .local v1, "response":I
    const/16 v2, 0xa01

    if-ne v1, v2, :cond_1

    .line 540
    sget-object v2, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v3, "Connection is already closed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .end local v1    # "response":I
    :cond_0
    :goto_0
    return-void

    .line 541
    .restart local v1    # "response":I
    :cond_1
    if-nez v1, :cond_0

    .line 542
    sget-object v2, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connection "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " close requested successfully"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 544
    .end local v1    # "response":I
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Lcom/samsung/android/sdk/accessory/SAException;
    sget-object v2, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v3, "Failed to close connection!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendInternal(ILcom/samsung/android/sdk/accessory/SAFragmenter;Z)V
    .locals 11
    .param p1, "channelId"    # I
    .param p2, "fragmenter"    # Lcom/samsung/android/sdk/accessory/SAFragmenter;
    .param p3, "isSecure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->getFragment()Lcom/samsung/android/sdk/accessory/SAFragment;

    move-result-object v9

    .line 504
    .local v9, "fragment":Lcom/samsung/android/sdk/accessory/SAFragment;
    :try_start_0
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 505
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/accessory/SAFragment;->getBuffer()[B

    move-result-object v3

    invoke-virtual {v9}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndex()I

    move-result v5

    .line 506
    invoke-virtual {v9}, Lcom/samsung/android/sdk/accessory/SAFragment;->getPayloadLength()I

    move-result v6

    invoke-virtual {v9}, Lcom/samsung/android/sdk/accessory/SAFragment;->getOffset()I

    move-result v7

    move v2, p1

    move v4, p3

    .line 505
    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/accessory/SAAdapter;->send(Ljava/lang/String;I[BZIII)I

    move-result v10

    .line 507
    .local v10, "status":I
    if-nez v10, :cond_0

    .line 508
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Data sent ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/samsung/android/sdk/accessory/SAFragment;->getPayloadLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->getTotalSent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    invoke-virtual {v9}, Lcom/samsung/android/sdk/accessory/SAFragment;->recycleBuffer()V

    .line 534
    :goto_0
    return-void

    .line 510
    :cond_0
    const/16 v0, 0xa01

    if-ne v10, v0, :cond_1

    .line 511
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    .line 512
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v1, "Write failed:Connection closed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Write failed:Connection already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    .end local v10    # "status":I
    :catch_0
    move-exception v8

    .line 529
    .local v8, "e":Lcom/samsung/android/sdk/accessory/SAException;
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v1, "Send failed!"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Send Failed"

    invoke-direct {v0, v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 531
    .end local v8    # "e":Lcom/samsung/android/sdk/accessory/SAException;
    :catchall_0
    move-exception v0

    .line 532
    invoke-virtual {v9}, Lcom/samsung/android/sdk/accessory/SAFragment;->recycleBuffer()V

    .line 533
    throw v0

    .line 514
    .restart local v10    # "status":I
    :cond_1
    const/16 v0, 0xa06

    if-ne v10, v0, :cond_2

    .line 515
    :try_start_3
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Write failed.Attempt to write on invalid channel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Write failed.Attempt to write on invalid channel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_2
    const/16 v0, 0xa07

    if-ne v10, v0, :cond_4

    .line 519
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v1, "Write failed: Timed out!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->close()V

    .line 521
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Write failed: Timed out!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    .end local v10    # "status":I
    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v1, "Data send failed, connection closed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to send, connection closed!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 532
    .restart local v10    # "status":I
    :cond_4
    invoke-virtual {v9}, Lcom/samsung/android/sdk/accessory/SAFragment;->recycleBuffer()V

    goto/16 :goto_0
.end method

.method private startSocketHandler(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "localAgentId"    # Ljava/lang/String;
    .param p2, "remoteAgentId"    # Ljava/lang/String;

    .prologue
    .line 474
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Socket:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 475
    .local v1, "socketHandlerThread":Landroid/os/HandlerThread;
    new-instance v2, Lcom/samsung/android/sdk/accessory/SASocket$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/accessory/SASocket$3;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;)V

    invoke-virtual {v1, v2}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 491
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 492
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 493
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 494
    sget-object v2, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed get Looper for Socket:initiator:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -  Peer Id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v2, 0x0

    .line 498
    :goto_0
    return v2

    .line 497
    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    .line 498
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method acceptServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;)V
    .locals 2
    .param p1, "localAgentId"    # Ljava/lang/String;
    .param p2, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p3, "adapter"    # Lcom/samsung/android/sdk/accessory/SAAdapter;
    .param p4, "callback"    # Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    .prologue
    .line 449
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 450
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    .line 451
    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    .line 453
    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/accessory/SASocket;->startSocketHandler(Ljava/lang/String;Ljava/lang/String;)Z

    .line 454
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    new-instance v1, Lcom/samsung/android/sdk/accessory/SASocket$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/samsung/android/sdk/accessory/SASocket$2;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SAAdapter;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->post(Ljava/lang/Runnable;)Z

    .line 471
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 402
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 403
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    .line 404
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Application requested to close socket for Peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->requestClose()V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v1, "Connection is already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method forceClose()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 553
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    if-ne v1, v2, :cond_0

    .line 555
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    .line 557
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 558
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x800

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 559
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 560
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Socket:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been force closed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public getConnectedPeerAgent()Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    return-object v0
.end method

.method initiateServiceconnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;)V
    .locals 2
    .param p1, "localAgentId"    # Ljava/lang/String;
    .param p2, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p3, "adapter"    # Lcom/samsung/android/sdk/accessory/SAAdapter;
    .param p4, "callback"    # Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    .prologue
    .line 415
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 416
    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    .line 417
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    .line 419
    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/accessory/SASocket;->startSocketHandler(Ljava/lang/String;Ljava/lang/String;)Z

    .line 420
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    new-instance v1, Lcom/samsung/android/sdk/accessory/SASocket$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SASocket$1;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->post(Ljava/lang/Runnable;)Z

    .line 445
    return-void
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 252
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onError(ILjava/lang/String;I)V
.end method

.method public abstract onReceive(I[B)V
.end method

.method protected abstract onServiceConnectionLost(I)V
.end method

.method public declared-synchronized secureSend(I[B)V
    .locals 8
    .param p1, "channelId"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 352
    monitor-enter p0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 353
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v2, "Send Failed : there is no service channel at the index"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :goto_0
    monitor-exit p0

    return-void

    .line 357
    :cond_0
    if-nez p2, :cond_1

    .line 358
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v2, "SecureSend:Invalaid data:null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid data to send:NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 360
    :cond_1
    :try_start_2
    array-length v1, p2

    if-nez v1, :cond_2

    .line 361
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v2, "SecureSend:Invalaid data length 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalaid data length 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_2
    array-length v1, p2

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getMaxAllowedDataSize()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 364
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SecureSend:Data too long:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Secure send:Data Too long..! Data size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Max allowed Size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 366
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getMaxAllowedDataSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 367
    const-string v3, " .Please check SAPeerAgent.getMaxAllowedDataSize()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :cond_3
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    if-eq v1, v3, :cond_4

    .line 369
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Secure Send failed.Socket already closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 371
    :cond_4
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending data:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->getDataKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 373
    .local v7, "key":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/accessory/SAFragmenter;-><init>(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 375
    .local v0, "fragmeneter":Lcom/samsung/android/sdk/accessory/SAFragmenter;
    :try_start_3
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkMaxHeaderLength()I

    move-result v1

    .line 376
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkMaxFooterLength()I

    move-result v2

    .line 377
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->getConnectedPeerAgent()Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getSsduSize()I

    move-result v3

    .line 378
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->getConnectedPeerAgent()Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getEncryptionPaddingLength()I

    move-result v4

    move-object v5, p2

    .line 375
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->configure(IIII[B)V

    .line 379
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->nextFragment()Lcom/samsung/android/sdk/accessory/SAFragment;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    if-nez v1, :cond_5

    .line 386
    :try_start_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->shutdown()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 380
    :cond_5
    const/4 v1, 0x1

    :try_start_5
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sdk/accessory/SASocket;->sendInternal(ILcom/samsung/android/sdk/accessory/SAFragmenter;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 382
    :catch_0
    move-exception v6

    .line 383
    .local v6, "e":Ljava/io/IOException;
    :try_start_6
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v2, "Send Blob failed"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 385
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    .line 386
    :try_start_7
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->shutdown()V

    .line 387
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized send(I[B)V
    .locals 8
    .param p1, "channelId"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 292
    monitor-enter p0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 293
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v2, "Send Failed : there is no service channel at the index"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :goto_0
    monitor-exit p0

    return-void

    .line 297
    :cond_0
    if-nez p2, :cond_1

    .line 298
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v2, "Send:Invalaid data:null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid data to send:NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 300
    :cond_1
    :try_start_2
    array-length v1, p2

    if-nez v1, :cond_2

    .line 301
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v2, "Send:Invalaid data length 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalaid data length 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_2
    array-length v1, p2

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getMaxAllowedDataSize()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 304
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Data too long:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Data Too long..! Data size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Max allowed Size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 306
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getMaxAllowedDataSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 307
    const-string v3, " .Please check SAPeerAgent.getMaxAllowedDataSize()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_3
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    if-eq v1, v3, :cond_4

    .line 309
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Send failed.Socket already closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :cond_4
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending data:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->getDataKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 313
    .local v7, "key":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/accessory/SAFragmenter;-><init>(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    .local v0, "fragmeneter":Lcom/samsung/android/sdk/accessory/SAFragmenter;
    :try_start_3
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkMaxHeaderLength()I

    move-result v1

    .line 316
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkMaxFooterLength()I

    move-result v2

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->getConnectedPeerAgent()Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getSsduSize()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, p2

    .line 315
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->configure(IIII[B)V

    .line 318
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->nextFragment()Lcom/samsung/android/sdk/accessory/SAFragment;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    if-nez v1, :cond_5

    .line 325
    :try_start_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->shutdown()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 319
    :cond_5
    const/4 v1, 0x0

    :try_start_5
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sdk/accessory/SASocket;->sendInternal(ILcom/samsung/android/sdk/accessory/SAFragmenter;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 321
    :catch_0
    move-exception v6

    .line 322
    .local v6, "e":Ljava/io/IOException;
    :try_start_6
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v2, "Send Blob failed"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 324
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    .line 325
    :try_start_7
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->shutdown()V

    .line 326
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method
