.class public Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;
.super Lcom/samsung/android/sdk/accessory/SASocket;
.source "HMSAPServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;,
        Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;,
        Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$ServiceConnection;,
        Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$DataReader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HMSAPServiceConnection"


# instance fields
.field private final MAX_SAP_BUFFER_SIZE:I

.field private mCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

.field private mDataReader:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$DataReader;

.field mDataReceiveCount:I

.field private mFileTransfer:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

.field private mPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

.field private mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

.field private mServiceConnection:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$ServiceConnection;

.field private mWifiPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

.field out:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const-class v0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SASocket;-><init>(Ljava/lang/String;)V

    .line 26
    const v0, 0xfff7

    iput v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->MAX_SAP_BUFFER_SIZE:I

    .line 32
    iput-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mDataReceiveCount:I

    .line 342
    iput-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    .line 345
    new-instance v0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;-><init>(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    .line 474
    iput-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mWifiPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mFileTransfer:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    return-object v0
.end method


# virtual methods
.method public onError(ILjava/lang/String;I)V
    .locals 3
    .param p1, "channID"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "errorcode"    # I

    .prologue
    .line 228
    const-string v0, "HMSAPServiceConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError  Arg: channID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorcode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public onReceive(I[B)V
    .locals 12
    .param p1, "ChannelId"    # I
    .param p2, "buf"    # [B

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 234
    const-string v6, "HMSAPServiceConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SAP::onReceive  Arg: channID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-array v3, v9, [B

    .line 238
    .local v3, "headerBuf":[B
    aget-byte v6, p2, v10

    aput-byte v6, v3, v10

    .line 239
    aget-byte v6, p2, v11

    aput-byte v6, v3, v11

    .line 241
    new-instance v2, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;

    invoke-direct {v2}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;-><init>()V

    .line 242
    .local v2, "header":Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;
    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;->parseFragmentHeader([B)V

    .line 244
    iget-boolean v6, v2, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;->isFragment:Z

    if-nez v6, :cond_3

    .line 247
    const-string v6, "HMSAPServiceConnection"

    const-string v7, "Single Chunk. It is not fragmented..."

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mDataReader:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$DataReader;

    if-eqz v6, :cond_2

    .line 251
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    .line 252
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v7, 0x2

    array-length v8, p2

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v6, p2, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "btAddress":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->getConnectedPeerAgent()Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->changeAddressToBTaddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mDataReader:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$DataReader;

    iget-object v7, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, p1, v7, v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$DataReader;->onDataAvailable(ILjava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 257
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    if-eqz v6, :cond_0

    .line 263
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 337
    .end local v0    # "btAddress":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 264
    .restart local v0    # "btAddress":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 265
    .local v4, "ioe":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 258
    .end local v0    # "btAddress":Ljava/lang/String;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 259
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    if-eqz v6, :cond_0

    .line 263
    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 264
    :catch_2
    move-exception v4

    .line 265
    .restart local v4    # "ioe":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 261
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    if-eqz v7, :cond_1

    .line 263
    :try_start_4
    iget-object v7, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 266
    :cond_1
    :goto_1
    throw v6

    .line 264
    :catch_3
    move-exception v4

    .line 265
    .restart local v4    # "ioe":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 271
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_2
    const-string v6, "HMSAPServiceConnection"

    const-string v7, "No Data Listener defined..."

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    if-nez v6, :cond_4

    .line 279
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Initialize the Buffer to hold Fragment Data..."

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 280
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    .line 281
    iput v10, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mDataReceiveCount:I

    .line 284
    :cond_4
    iget v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mDataReceiveCount:I

    array-length v7, p2

    add-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mDataReceiveCount:I

    .line 288
    :try_start_5
    const-string v6, "HMSAPServiceConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fragmented Data...Index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;->index:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isLast: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v2, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;->isLast:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-boolean v6, v2, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;->isLast:Z

    if-eqz v6, :cond_6

    .line 291
    const-string v6, "HMSAPServiceConnection"

    const-string v7, "This is Last Fragment"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v7, 0x2

    array-length v8, p2

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v6, p2, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 294
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 297
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mDataReader:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$DataReader;

    if-eqz v6, :cond_5

    .line 298
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "outStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mDataReader:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$DataReader;

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->getConnectedPeerAgent()Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, p1, v5, v7}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$DataReader;->onDataAvailable(ILjava/lang/String;Ljava/lang/String;)V

    .line 304
    .end local v5    # "outStr":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 305
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    .line 307
    const-string v6, "HMSAPServiceConnection"

    const-string v7, "This is Last Fragment"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v6, "HMSAPServiceConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Total Data size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mDataReceiveCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 320
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    if-eqz v6, :cond_0

    .line 322
    :try_start_6
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 323
    :catch_4
    move-exception v4

    .line 324
    .restart local v4    # "ioe":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 302
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_5
    :try_start_7
    const-string v6, "HMSAPServiceConnection"

    const-string v7, "No Data Listener defined..."

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 317
    :catch_5
    move-exception v1

    .line 318
    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 320
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    if-eqz v6, :cond_0

    .line 322
    :try_start_9
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_0

    .line 323
    :catch_6
    move-exception v4

    .line 324
    .restart local v4    # "ioe":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 314
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_6
    :try_start_a
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v7, 0x2

    array-length v8, p2

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v6, p2, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 315
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 320
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    if-eqz v6, :cond_0

    .line 322
    :try_start_b
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_0

    .line 323
    :catch_7
    move-exception v4

    .line 324
    .restart local v4    # "ioe":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 320
    .end local v4    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    if-eqz v7, :cond_7

    .line 322
    :try_start_c
    iget-object v7, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 325
    :cond_7
    :goto_3
    throw v6

    .line 323
    :catch_8
    move-exception v4

    .line 324
    .restart local v4    # "ioe":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method protected onServiceConnectionLost(I)V
    .locals 5
    .param p1, "errorcode"    # I

    .prologue
    const/4 v4, 0x0

    .line 530
    const-string v0, "HMSAPServiceConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAP::onServiceConnectionLost errorcode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v0, :cond_0

    .line 532
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, v4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->resetReadyForRestoreTimer(Ljava/lang/String;)V

    .line 535
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "HOSTMANAGER_GLOBAL_PREFERENCE"

    const-string v2, "isFirstConnection"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->updatePreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 537
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mServiceConnection:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$ServiceConnection;

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mServiceConnection:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$ServiceConnection;

    invoke-interface {v0, p1}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$ServiceConnection;->onConnectionLost(I)V

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    if-eqz v0, :cond_2

    .line 541
    iput-object v4, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    .line 543
    :cond_2
    return-void
.end method

.method public receiveFile(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;I)V
    .locals 2
    .param p1, "SAAgent"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    .param p2, "SelectedFileName"    # Ljava/lang/String;
    .param p3, "txId"    # I

    .prologue
    .line 681
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "receiveFile"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    if-nez v0, :cond_0

    .line 683
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "SAP:: receiveFile :: mSAFileTransfer == null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-virtual {v0, p3, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->receive(ILjava/lang/String;)V

    .line 687
    return-void
.end method

.method public declared-synchronized secureSend(I[B)V
    .locals 12
    .param p1, "channelId"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v11, 0xfff7

    .line 57
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    array-length v8, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    .line 136
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 61
    :cond_1
    :try_start_1
    array-length v1, p2

    .line 62
    .local v1, "dataSize":I
    const-string v8, "HMSAPServiceConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SAP::secureSend :: channelId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v8, "HMSAPServiceConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SAP:: Data size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MAX Buffer Size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0xfff7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    if-gt v1, v11, :cond_2

    .line 67
    :try_start_2
    const-string v8, "HMSAPServiceConnection"

    const-string v9, "secureSend in Single chunk..."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    array-length v8, p2

    add-int/lit8 v8, v8, 0x2

    new-array v0, v8, [B

    .line 71
    .local v0, "buf":[B
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-byte v9, v0, v8

    .line 72
    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-byte v9, v0, v8

    .line 74
    const/4 v8, 0x0

    const/4 v9, 0x2

    array-length v10, p2

    invoke-static {p2, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    invoke-super {p0, p1, v0}, Lcom/samsung/android/sdk/accessory/SASocket;->secureSend(I[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 130
    .end local v0    # "buf":[B
    :catch_0
    move-exception v2

    .line 131
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "HMSAPServiceConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Multi-Chunk data transfer Failed..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 57
    .end local v1    # "dataSize":I
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 80
    .restart local v1    # "dataSize":I
    :cond_2
    :try_start_4
    const-string v8, "HMSAPServiceConnection"

    const-string v9, "secureSend in Multiple chunks..."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v6, 0x0

    .line 84
    .local v6, "index":I
    const/4 v3, 0x1

    .line 85
    .local v3, "fragmentIndex":I
    const/4 v7, 0x0

    .line 86
    .local v7, "remaining":I
    const v8, 0xfff9

    new-array v0, v8, [B

    .line 91
    .restart local v0    # "buf":[B
    :cond_3
    new-instance v4, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {v4, v8, v9, v3}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;-><init>(ZZI)V

    .line 92
    .local v4, "header":Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;
    add-int/lit8 v3, v3, 0x1

    .line 94
    sub-int v7, v1, v6

    .line 95
    const-string v8, "HMSAPServiceConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remaining: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-gt v7, v11, :cond_4

    .line 99
    const-string v8, "HMSAPServiceConnection"

    const-string v9, "Last Fragment..."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;->isLast:Z

    .line 105
    :goto_1
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;->generateFragmentHeader()[B

    move-result-object v5

    .line 107
    .local v5, "headerBuf":[B
    if-nez v5, :cond_5

    .line 108
    const-string v8, "HMSAPServiceConnection"

    const-string v9, "Invalid Fragment Index or Max Fragment size, no more allowed."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    .end local v5    # "headerBuf":[B
    :cond_4
    const v7, 0xfff7

    goto :goto_1

    .line 112
    .restart local v5    # "headerBuf":[B
    :cond_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-byte v9, v5, v9

    aput-byte v9, v0, v8

    .line 113
    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-byte v9, v5, v9

    aput-byte v9, v0, v8

    .line 115
    const/4 v8, 0x2

    invoke-static {p2, v6, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    add-int/2addr v6, v7

    .line 119
    const-string v8, "HMSAPServiceConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "secureSend Fragment: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;->index:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isLast: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v4, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;->isLast:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Chunk Size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    add-int/lit8 v8, v7, 0x2

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    invoke-super {p0, p1, v8}, Lcom/samsung/android/sdk/accessory/SASocket;->secureSend(I[B)V

    .line 124
    const-string v8, "HMSAPServiceConnection"

    const-string v9, "secureSend Fragment - Complete"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-boolean v8, v4, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;->isLast:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_3

    .line 136
    :try_start_5
    const-string v8, "HMSAPServiceConnection"

    const-string v9, "Multi-Chunk data transfer Success..."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public send(I[B)V
    .locals 12
    .param p1, "channelId"    # I
    .param p2, "data"    # [B

    .prologue
    const v11, 0xfff7

    .line 144
    if-eqz p2, :cond_0

    array-length v8, p2

    if-nez v8, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    array-length v1, p2

    .line 149
    .local v1, "dataSize":I
    const-string v8, "HMSAPServiceConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SAP::send :: channelId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v8, "HMSAPServiceConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SAP:: Data size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MAX Buffer Size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-gt v1, v11, :cond_2

    .line 154
    :try_start_0
    const-string v8, "HMSAPServiceConnection"

    const-string v9, "Send in Single chunk..."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    array-length v8, p2

    add-int/lit8 v8, v8, 0x2

    new-array v0, v8, [B

    .line 158
    .local v0, "buf":[B
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-byte v9, v0, v8

    .line 159
    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-byte v9, v0, v8

    .line 161
    const/4 v8, 0x0

    const/4 v9, 0x2

    array-length v10, p2

    invoke-static {p2, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    invoke-super {p0, p1, v0}, Lcom/samsung/android/sdk/accessory/SASocket;->send(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    .end local v0    # "buf":[B
    :catch_0
    move-exception v2

    .line 218
    .local v2, "ex":Ljava/lang/Exception;
    const-string v8, "HMSAPServiceConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Multi-Chunk data transfer Failed..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 167
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v8, "HMSAPServiceConnection"

    const-string v9, "Send in Multiple chunks..."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v6, 0x0

    .line 171
    .local v6, "index":I
    const/4 v3, 0x1

    .line 172
    .local v3, "fragmentIndex":I
    const/4 v7, 0x0

    .line 173
    .local v7, "remaining":I
    const v8, 0xfff9

    new-array v0, v8, [B

    .line 178
    .restart local v0    # "buf":[B
    :cond_3
    new-instance v4, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {v4, v8, v9, v3}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;-><init>(ZZI)V

    .line 179
    .local v4, "header":Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;
    add-int/lit8 v3, v3, 0x1

    .line 181
    sub-int v7, v1, v6

    .line 182
    const-string v8, "HMSAPServiceConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remaining: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    if-gt v7, v11, :cond_4

    .line 186
    const-string v8, "HMSAPServiceConnection"

    const-string v9, "Last Fragment..."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;->isLast:Z

    .line 192
    :goto_1
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;->generateFragmentHeader()[B

    move-result-object v5

    .line 194
    .local v5, "headerBuf":[B
    if-nez v5, :cond_5

    .line 195
    const-string v8, "HMSAPServiceConnection"

    const-string v9, "Invalid Fragment Index or Max Fragment size, no more allowed."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    .end local v5    # "headerBuf":[B
    :cond_4
    const v7, 0xfff7

    goto :goto_1

    .line 199
    .restart local v5    # "headerBuf":[B
    :cond_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-byte v9, v5, v9

    aput-byte v9, v0, v8

    .line 200
    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-byte v9, v5, v9

    aput-byte v9, v0, v8

    .line 202
    const/4 v8, 0x2

    invoke-static {p2, v6, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    add-int/2addr v6, v7

    .line 206
    const-string v8, "HMSAPServiceConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Send Fragment: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;->index:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isLast: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v4, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;->isLast:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Chunk Size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    add-int/lit8 v8, v7, 0x2

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    invoke-super {p0, p1, v8}, Lcom/samsung/android/sdk/accessory/SASocket;->send(I[B)V

    .line 211
    const-string v8, "HMSAPServiceConnection"

    const-string v9, "Send Fragment - Complete"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-boolean v8, v4, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FragmentHeader;->isLast:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v8, :cond_3

    .line 223
    const-string v8, "HMSAPServiceConnection"

    const-string v9, "Multi-Chunk data transfer Success..."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public sendFile(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;)I
    .locals 3
    .param p1, "SAAgent"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    .param p2, "mSelectedFileName"    # Ljava/lang/String;

    .prologue
    .line 493
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "sendFile()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    if-nez v0, :cond_0

    .line 495
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "SAP:: sendfile :: mSAFileTransfer == null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    .line 499
    :cond_0
    const-string v0, "HMSAPServiceConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAP:: sendfile :: SAAgent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v0, "HMSAPServiceConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAP:: sendfile :: mPeerAgent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v0, "HMSAPServiceConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAP:: sendfile :: mSelectedFileName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    if-eqz v0, :cond_1

    .line 503
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "SAP:: mSAFileTransfer.send"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->send(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;)I

    move-result v0

    .line 506
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public sendFileViaWifi(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;)I
    .locals 3
    .param p1, "SAAgent"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    .param p2, "mSelectedFileName"    # Ljava/lang/String;

    .prologue
    .line 511
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "sendFileViaWifi()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    if-nez v0, :cond_0

    .line 513
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "SAP:: sendFileViaWifi :: mSAFileTransfer == null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    .line 517
    :cond_0
    const-string v0, "HMSAPServiceConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAP:: sendFileViaWifi :: SAAgent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v0, "HMSAPServiceConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAP:: sendFileViaWifi :: mPeerAgent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mWifiPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v0, "HMSAPServiceConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAP:: sendFileViaWifi :: mSelectedFileName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mWifiPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    if-eqz v0, :cond_1

    .line 521
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "SAP:: mSAFileTransfer.send"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mWifiPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->send(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;)I

    move-result v0

    .line 524
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setDataReader(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$DataReader;)V
    .locals 2
    .param p1, "uDataReader"    # Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$DataReader;

    .prologue
    .line 43
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "ConnectionEventListener"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mDataReader:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$DataReader;

    .line 45
    return-void
.end method

.method public setFileTransfer(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;)V
    .locals 2
    .param p1, "SAAgent"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    .param p2, "trans"    # Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    .prologue
    .line 485
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "setFileTransfer()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iput-object p2, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mFileTransfer:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    .line 488
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    .line 490
    return-void
.end method

.method public setPeerAgent(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0
    .param p1, "saPeerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 478
    return-void
.end method

.method public setServiceConnectionInd(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$ServiceConnection;)V
    .locals 2
    .param p1, "uServiceConnection"    # Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$ServiceConnection;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mServiceConnection:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$ServiceConnection;

    .line 48
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "ServiceConnectionLost registered"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public setWifiPeerAgent(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0
    .param p1, "saPeerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->mWifiPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 482
    return-void
.end method
