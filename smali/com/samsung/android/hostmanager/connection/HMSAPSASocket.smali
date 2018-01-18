.class public Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
.super Lcom/samsung/android/sdk/accessory/SASocket;
.source "HMSAPSASocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;,
        Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;,
        Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$SAPSocketListener;,
        Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$SAPDataReader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private KEY_CHANNEL:Ljava/lang/String;

.field private KEY_DATA:Ljava/lang/String;

.field private final MAX_SAP_BUFFER_SIZE:I

.field private SEND_DATA:I

.field public isConnected:Z

.field public isConnecting:Z

.field public isInitialedGear:Z

.field public isInitialedGearForSCS:Z

.field public isNeedRetry:Z

.field public isRetryCauseRestoreTimeOut:Z

.field private isSendingUserInfo:Z

.field private mCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

.field public mConnectType:I

.field private mDataReader:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$SAPDataReader;

.field mDataReceiveCount:I

.field public mDeviceAliasName:Ljava/lang/String;

.field private mDeviceBTAddress:Ljava/lang/String;

.field public mDeviceName:Ljava/lang/String;

.field public mDeviceSimpleName:Ljava/lang/String;

.field private mDeviceUniqueID:Ljava/lang/String;

.field private mFileTransfer:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

.field private mHandlerByteThread:Landroid/os/Handler;

.field private mLooper:Landroid/os/Looper;

.field private mPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

.field private mRealState:I

.field private mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

.field private mServiceConnection:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$SAPSocketListener;

.field private mWifiPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

.field out:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    const-class v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SASocket;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mHandlerByteThread:Landroid/os/Handler;

    .line 23
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->SEND_DATA:I

    .line 25
    const-string v0, "channel"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->KEY_CHANNEL:Ljava/lang/String;

    .line 26
    const-string v0, "data"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->KEY_DATA:Ljava/lang/String;

    .line 39
    const v0, 0xfff7

    iput v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->MAX_SAP_BUFFER_SIZE:I

    .line 45
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isInitialedGear:Z

    .line 46
    iput-boolean v3, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isInitialedGearForSCS:Z

    .line 47
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isRetryCauseRestoreTimeOut:Z

    .line 48
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isConnected:Z

    .line 49
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isConnecting:Z

    .line 50
    iput-boolean v3, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isNeedRetry:Z

    .line 51
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isSendingUserInfo:Z

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mConnectType:I

    .line 57
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mDeviceBTAddress:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mDeviceUniqueID:Ljava/lang/String;

    .line 59
    iput v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mRealState:I

    .line 122
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    .line 124
    iput v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mDataReceiveCount:I

    .line 425
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    .line 427
    new-instance v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;-><init>(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    .line 542
    iput-object v2, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mWifiPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 30
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v1, "initialize mByteSendThread"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;-><init>()V

    .line 35
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize mByteSendThread with looper looper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mLooper:Landroid/os/Looper;

    .line 37
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mFileTransfer:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    .prologue
    .line 18
    iget v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->SEND_DATA:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->KEY_CHANNEL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->KEY_DATA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$501(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SASocket;->send(I[B)V

    return-void
.end method

.method private getHandlerByteThread(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 757
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAP:: getHandlerByteThread. looper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mHandlerByteThread:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 759
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v1, "SAP:: getHandlerByteThread. mHandlerByteThread is null."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    new-instance v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$2;-><init>(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mHandlerByteThread:Landroid/os/Handler;

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mHandlerByteThread:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getConnectType()I
    .locals 3

    .prologue
    .line 66
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectType()::mConnectType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mConnectType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mConnectType:I

    return v0
.end method

.method public getDeviceBTAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mDeviceBTAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceUniqueID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mDeviceUniqueID:Ljava/lang/String;

    return-object v0
.end method

.method public getRealState()I
    .locals 3

    .prologue
    .line 113
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRealState()::RealState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mRealState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mRealState:I

    return v0
.end method

.method public isSendingUserInfo()Z
    .locals 3

    .prologue
    .line 103
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSendingUserInfo()::isSendingUserInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isSendingUserInfo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isSendingUserInfo:Z

    return v0
.end method

.method public onError(ILjava/lang/String;I)V
    .locals 3
    .param p1, "channID"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "errorcode"    # I

    .prologue
    .line 325
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

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

    .line 326
    return-void
.end method

.method public onReceive(I[B)V
    .locals 11
    .param p1, "ChannelId"    # I
    .param p2, "buf"    # [B

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 330
    sget-object v5, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAP::onReceive  Arg: channID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-array v2, v8, [B

    .line 334
    .local v2, "headerBuf":[B
    aget-byte v5, p2, v9

    aput-byte v5, v2, v9

    .line 335
    aget-byte v5, p2, v10

    aput-byte v5, v2, v10

    .line 337
    new-instance v1, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;

    invoke-direct {v1}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;-><init>()V

    .line 338
    .local v1, "header":Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;
    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->parseFragmentHeader([B)V

    .line 340
    iget-boolean v5, v1, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isFragment:Z

    if-nez v5, :cond_3

    .line 343
    sget-object v5, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v6, "Single Chunk. It is not fragmented..."

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mDataReader:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$SAPDataReader;

    if-eqz v5, :cond_2

    .line 347
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    .line 348
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v6, 0x2

    array-length v7, p2

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v5, p2, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 349
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mDataReader:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$SAPDataReader;

    iget-object v6, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getDeviceBTAddress()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, p1, v6, v7}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$SAPDataReader;->onDataAvailable(ILjava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 351
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    if-eqz v5, :cond_0

    .line 357
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v3

    .line 359
    .local v3, "ioe":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 352
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 353
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    if-eqz v5, :cond_0

    .line 357
    :try_start_3
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 358
    :catch_2
    move-exception v3

    .line 359
    .restart local v3    # "ioe":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 355
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    if-eqz v6, :cond_1

    .line 357
    :try_start_4
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 360
    :cond_1
    :goto_1
    throw v5

    .line 358
    :catch_3
    move-exception v3

    .line 359
    .restart local v3    # "ioe":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 364
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_2
    sget-object v5, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v6, "No Data Listener defined..."

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    if-nez v5, :cond_4

    .line 372
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Initialize the Buffer to hold Fragment Data..."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    .line 374
    iput v9, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mDataReceiveCount:I

    .line 377
    :cond_4
    iget v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mDataReceiveCount:I

    array-length v6, p2

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mDataReceiveCount:I

    .line 381
    :try_start_5
    sget-object v5, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragmented Data...Index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->index:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isLast: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v1, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isLast:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p2

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-boolean v5, v1, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isLast:Z

    if-eqz v5, :cond_6

    .line 385
    sget-object v5, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v6, "This is Last Fragment"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v6, 0x2

    array-length v7, p2

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v5, p2, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 388
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 391
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mDataReader:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$SAPDataReader;

    if-eqz v5, :cond_5

    .line 392
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, "outStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mDataReader:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$SAPDataReader;

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getDeviceBTAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, p1, v4, v6}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$SAPDataReader;->onDataAvailable(ILjava/lang/String;Ljava/lang/String;)V

    .line 397
    .end local v4    # "outStr":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 398
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    .line 400
    sget-object v5, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v6, "This is Last Fragment"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    sget-object v5, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total Data size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mDataReceiveCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 413
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    if-eqz v5, :cond_0

    .line 415
    :try_start_6
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 416
    :catch_4
    move-exception v3

    .line 417
    .restart local v3    # "ioe":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 395
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_5
    :try_start_7
    sget-object v5, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v6, "No Data Listener defined..."

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 410
    :catch_5
    move-exception v0

    .line 411
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 413
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    if-eqz v5, :cond_0

    .line 415
    :try_start_9
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_0

    .line 416
    :catch_6
    move-exception v3

    .line 417
    .restart local v3    # "ioe":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 407
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_6
    :try_start_a
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v6, 0x2

    array-length v7, p2

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v5, p2, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 408
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 413
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    if-eqz v5, :cond_0

    .line 415
    :try_start_b
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_0

    .line 416
    :catch_7
    move-exception v3

    .line 417
    .restart local v3    # "ioe":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 413
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    if-eqz v6, :cond_7

    .line 415
    :try_start_c
    iget-object v6, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 418
    :cond_7
    :goto_3
    throw v5

    .line 416
    :catch_8
    move-exception v3

    .line 417
    .restart local v3    # "ioe":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method protected onServiceConnectionLost(I)V
    .locals 3
    .param p1, "errorcode"    # I

    .prologue
    .line 598
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAP::onServiceConnectionLost errorcode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uniqueID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getConnectedPeerAgent()Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getAccessoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mServiceConnection:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$SAPSocketListener;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mServiceConnection:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$SAPSocketListener;

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getDeviceBTAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$SAPSocketListener;->onConnectionLost(ILjava/lang/String;)V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    if-eqz v0, :cond_1

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    .line 610
    :cond_1
    return-void
.end method

.method public receiveFile(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;I)V
    .locals 2
    .param p1, "SAAgent"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    .param p2, "SelectedFileName"    # Ljava/lang/String;
    .param p3, "txId"    # I

    .prologue
    .line 748
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v1, "receiveFile"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    if-nez v0, :cond_0

    .line 750
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v1, "SAP:: receiveFile :: mSAFileTransfer == null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-virtual {v0, p3, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->receive(ILjava/lang/String;)V

    .line 754
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

    .line 144
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    array-length v8, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    .line 223
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 148
    :cond_1
    :try_start_1
    array-length v1, p2

    .line 149
    .local v1, "dataSize":I
    sget-object v8, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

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

    .line 150
    sget-object v8, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

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

    .line 153
    if-gt v1, v11, :cond_2

    .line 154
    :try_start_2
    sget-object v8, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v9, "secureSend in Single chunk..."

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
    invoke-super {p0, p1, v0}, Lcom/samsung/android/sdk/accessory/SASocket;->secureSend(I[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 216
    .end local v0    # "buf":[B
    :catch_0
    move-exception v2

    .line 217
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_3
    sget-object v8, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

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

    .line 218
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 144
    .end local v1    # "dataSize":I
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 167
    .restart local v1    # "dataSize":I
    :cond_2
    :try_start_4
    sget-object v8, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v9, "secureSend in Multiple chunks..."

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

    .line 177
    .restart local v0    # "buf":[B
    :cond_3
    new-instance v4, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {v4, v8, v9, v3}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;-><init>(ZZI)V

    .line 178
    .local v4, "header":Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;
    add-int/lit8 v3, v3, 0x1

    .line 180
    sub-int v7, v1, v6

    .line 181
    sget-object v8, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

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

    .line 183
    if-gt v7, v11, :cond_4

    .line 185
    sget-object v8, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v9, "Last Fragment..."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isLast:Z

    .line 190
    :goto_1
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->generateFragmentHeader()[B

    move-result-object v5

    .line 192
    .local v5, "headerBuf":[B
    if-nez v5, :cond_5

    .line 193
    sget-object v8, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v9, "Invalid Fragment Index or Max Fragment size, no more allowed."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    .end local v5    # "headerBuf":[B
    :cond_4
    const v7, 0xfff7

    goto :goto_1

    .line 197
    .restart local v5    # "headerBuf":[B
    :cond_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-byte v9, v5, v9

    aput-byte v9, v0, v8

    .line 198
    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-byte v9, v5, v9

    aput-byte v9, v0, v8

    .line 200
    const/4 v8, 0x2

    invoke-static {p2, v6, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    add-int/2addr v6, v7

    .line 204
    sget-object v8, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "secureSend Fragment: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->index:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isLast: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v4, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isLast:Z

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

    .line 208
    add-int/lit8 v8, v7, 0x2

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    invoke-super {p0, p1, v8}, Lcom/samsung/android/sdk/accessory/SASocket;->secureSend(I[B)V

    .line 210
    sget-object v8, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v9, "secureSend Fragment - Complete"

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-boolean v8, v4, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isLast:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_3

    .line 222
    :try_start_5
    sget-object v8, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v9, "Multi-Chunk data transfer Success..."

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public send(I[B)V
    .locals 13
    .param p1, "channelId"    # I
    .param p2, "data"    # [B

    .prologue
    .line 230
    if-eqz p2, :cond_0

    array-length v10, p2

    if-nez v10, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    array-length v2, p2

    .line 235
    .local v2, "dataSize":I
    sget-object v10, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SAP::send :: channelId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v10, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SAP:: Data size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " MAX Buffer Size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0xfff7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const v10, 0xfff7

    if-gt v2, v10, :cond_2

    .line 241
    :try_start_0
    sget-object v10, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v11, "Send in Single chunk..."

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    array-length v10, p2

    add-int/lit8 v10, v10, 0x2

    new-array v0, v10, [B

    .line 245
    .local v0, "buf":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-byte v11, v0, v10

    .line 246
    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-byte v11, v0, v10

    .line 248
    const/4 v10, 0x0

    const/4 v11, 0x2

    array-length v12, p2

    invoke-static {p2, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mLooper:Landroid/os/Looper;

    invoke-direct {p0, v10}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getHandlerByteThread(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->SEND_DATA:I

    invoke-static {v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    .line 252
    .local v8, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v1, "bundleData":Landroid/os/Bundle;
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->KEY_CHANNEL:Ljava/lang/String;

    invoke-virtual {v1, v10, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->KEY_DATA:Ljava/lang/String;

    invoke-virtual {v1, v10, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 255
    invoke-virtual {v8, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 256
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    .end local v0    # "buf":[B
    .end local v1    # "bundleData":Landroid/os/Bundle;
    .end local v8    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v3

    .line 315
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v10, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Multi-Chunk data transfer Failed..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 261
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-object v10, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v11, "Send in Multiple chunks..."

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v7, 0x0

    .line 265
    .local v7, "index":I
    const/4 v4, 0x1

    .line 266
    .local v4, "fragmentIndex":I
    const/4 v9, 0x0

    .line 267
    .local v9, "remaining":I
    const v10, 0xfff9

    new-array v0, v10, [B

    .line 271
    .restart local v0    # "buf":[B
    :cond_3
    new-instance v5, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v5, v10, v11, v4}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;-><init>(ZZI)V

    .line 272
    .local v5, "header":Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;
    add-int/lit8 v4, v4, 0x1

    .line 274
    sub-int v9, v2, v7

    .line 275
    sget-object v10, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "remaining: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const v10, 0xfff7

    if-gt v9, v10, :cond_4

    .line 279
    sget-object v10, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v11, "Last Fragment..."

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v10, 0x1

    iput-boolean v10, v5, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isLast:Z

    .line 284
    :goto_1
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->generateFragmentHeader()[B

    move-result-object v6

    .line 286
    .local v6, "headerBuf":[B
    if-nez v6, :cond_5

    .line 287
    sget-object v10, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v11, "Invalid Fragment Index or Max Fragment size, no more allowed."

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    .end local v6    # "headerBuf":[B
    :cond_4
    const v9, 0xfff7

    goto :goto_1

    .line 291
    .restart local v6    # "headerBuf":[B
    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-byte v11, v6, v11

    aput-byte v11, v0, v10

    .line 292
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget-byte v11, v6, v11

    aput-byte v11, v0, v10

    .line 294
    const/4 v10, 0x2

    invoke-static {p2, v7, v0, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    add-int/2addr v7, v9

    .line 298
    sget-object v10, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Send Fragment: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->index:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isLast: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v5, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isLast:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Chunk Size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mLooper:Landroid/os/Looper;

    invoke-direct {p0, v10}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getHandlerByteThread(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->SEND_DATA:I

    invoke-static {v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    .line 303
    .restart local v8    # "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 304
    .restart local v1    # "bundleData":Landroid/os/Bundle;
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->KEY_CHANNEL:Ljava/lang/String;

    invoke-virtual {v1, v10, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    iget-object v10, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->KEY_DATA:Ljava/lang/String;

    add-int/lit8 v11, v9, 0x2

    invoke-static {v0, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 306
    invoke-virtual {v8, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 307
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 308
    sget-object v10, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v11, "Send Fragment - Complete"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-boolean v10, v5, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FragmentHeader;->isLast:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v10, :cond_3

    .line 320
    sget-object v10, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v11, "Multi-Chunk data transfer Success..."

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public sendFile(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;)I
    .locals 3
    .param p1, "SAAgent"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    .param p2, "mSelectedFileName"    # Ljava/lang/String;

    .prologue
    .line 561
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v1, "sendFile()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    if-nez v0, :cond_0

    .line 563
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v1, "SAP:: sendfile :: mSAFileTransfer == null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    .line 567
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

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

    .line 568
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAP:: sendfile :: mPeerAgent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

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

    .line 570
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    if-eqz v0, :cond_1

    .line 571
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v1, "SAP:: mSAFileTransfer.send"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->send(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;)I

    move-result v0

    .line 574
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
    .line 579
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v1, "sendFileViaWifi()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    if-nez v0, :cond_0

    .line 581
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v1, "SAP:: sendFileViaWifi :: mSAFileTransfer == null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    .line 585
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

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

    .line 586
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAP:: sendFileViaWifi :: mPeerAgent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mWifiPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

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

    .line 588
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mWifiPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    if-eqz v0, :cond_1

    .line 589
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v1, "SAP:: mSAFileTransfer.send"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mWifiPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->send(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;)I

    move-result v0

    .line 592
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setConnectType(I)V
    .locals 3
    .param p1, "mConnectType"    # I

    .prologue
    .line 80
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnectType()::mConnectType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput p1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mConnectType:I

    .line 82
    return-void
.end method

.method public setDataReader(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$SAPDataReader;)V
    .locals 2
    .param p1, "uDataReader"    # Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$SAPDataReader;

    .prologue
    .line 129
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v1, "ConnectionEventListener"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mDataReader:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$SAPDataReader;

    .line 131
    return-void
.end method

.method public setDeviceBTAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "mDeviceBTAddress"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceBTAddress()::mDeviceBTAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mDeviceBTAddress:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setDeviceUniqueID(Ljava/lang/String;)V
    .locals 3
    .param p1, "mDeviceUniqueID"    # Ljava/lang/String;

    .prologue
    .line 98
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceUniqueID()::mDeviceUniqueID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mDeviceUniqueID:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setFileTransfer(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;)V
    .locals 2
    .param p1, "SAAgent"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    .param p2, "trans"    # Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    .prologue
    .line 553
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v1, "setFileTransfer()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mFileTransfer:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    .line 556
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mSAFileTransfer:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    .line 558
    return-void
.end method

.method public setLooper(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mLooper:Landroid/os/Looper;

    .line 63
    return-void
.end method

.method public setPeerAgent(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0
    .param p1, "saPeerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 546
    return-void
.end method

.method public setRealState(I)V
    .locals 3
    .param p1, "realState"    # I

    .prologue
    .line 118
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRealState()::RealState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mRealState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iput p1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mRealState:I

    .line 120
    return-void
.end method

.method public setSendingUserInfo(Z)V
    .locals 3
    .param p1, "isSendingUserInfo"    # Z

    .prologue
    .line 108
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSendingUserInfo()::isSendingUserInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isSendingUserInfo:Z

    .line 110
    return-void
.end method

.method public setServiceConnectionInd(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$SAPSocketListener;)V
    .locals 2
    .param p1, "uServiceConnection"    # Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$SAPSocketListener;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mServiceConnection:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$SAPSocketListener;

    .line 135
    sget-object v0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->TAG:Ljava/lang/String;

    const-string v1, "ServiceConnectionLost registered"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public setWifiPeerAgent(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0
    .param p1, "saPeerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->mWifiPeerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 550
    return-void
.end method
