.class public Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;
.super Ljava/lang/Object;
.source "SAFileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$BackgroundExceptionHandler;,
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;,
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;,
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;
    }
.end annotation


# static fields
.field public static final ACTION_SAP_FILE_TRANSFER_REQUESTED:Ljava/lang/String; = "com.samsung.accessory.ftconnection"

.field public static final ERROR_CHANNEL_IO:I = 0x1

.field public static final ERROR_COMMAND_DROPPED:I = 0x3

.field public static final ERROR_CONNECTION_LOST:I = 0x5

.field public static final ERROR_FATAL:I = 0x800

.field public static final ERROR_FILE_IO:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_SUPPORTED:I = 0xc

.field public static final ERROR_PEER_AGENT_BUSY:I = 0x8

.field public static final ERROR_PEER_AGENT_NO_RESPONSE:I = 0x4

.field public static final ERROR_PEER_AGENT_REJECTED:I = 0x9

.field public static final ERROR_REQUEST_NOT_QUEUED:I = -0x1

.field public static final ERROR_SPACE_NOT_AVAILABLE:I = 0xb

.field public static final ERROR_TRANSACTION_NOT_FOUND:I = 0xd

.field private static final FILE_PROVIDER:Ljava/lang/String; = "android.support.v4.content.FileProvider"

.field private static final INTERNAL_FTREQUEST_ACTION:Ljava/lang/String; = "com.samsung.accessory.ftconnection.internal"

.field private static final TAG:Ljava/lang/String; = "FileTransferProfileJAR/SAFileTransfer"

.field private static mCurrentTransaction:I

.field private static rng:Ljava/util/Random;


# instance fields
.field private final FT_CANCEL_TRANS_ID:I

.field private final FT_DEFAULT_TRANS_ID:I

.field private isTransferRequested:Z

.field private mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

.field private mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

.field private mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

.field private mFTReceiver:Landroid/content/BroadcastReceiver;

.field private mFileTransferHandlerThread:Landroid/os/HandlerThread;

.field private mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

.field private mLastGeneratedSeed:J

.field mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

.field private mTransactions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;",
            ">;"
        }
    .end annotation
.end field

.field private saft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 168
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->rng:Ljava/util/Random;

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V
    .locals 4
    .param p1, "callingAgent"    # Lcom/samsung/android/sdk/accessory/SAAgent;
    .param p2, "eventListener"    # Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLastGeneratedSeed:J

    .line 158
    iput-boolean v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isTransferRequested:Z

    .line 162
    iput v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->FT_DEFAULT_TRANS_ID:I

    .line 163
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->FT_CANCEL_TRANS_ID:I

    .line 719
    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFTReceiver:Landroid/content/BroadcastReceiver;

    .line 918
    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$2;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    .line 206
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 207
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "FileEventCallback parameter cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    .line 210
    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    .line 211
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->saft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    if-nez v1, :cond_2

    .line 212
    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-direct {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->saft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->saft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->register()Z

    move-result v1

    if-nez v1, :cond_3

    .line 220
    const-string v1, "FileTransferProfileJAR/SAFileTransfer"

    const-string v2, "Agent already registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->getCallingAgentInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    .line 223
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    if-eqz v1, :cond_3

    .line 224
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    .line 225
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getHandler()Landroid/os/Handler;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    iput-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    .line 226
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getTransactionsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 227
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->setAgent(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    .line 228
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->setEventListener(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V

    .line 229
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->setLocalCallback(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;)V

    .line 232
    :cond_3
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 728
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->informIncomingFTRequest(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1008
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->changeFileName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 154
    sget v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    return v0
.end method

.method static synthetic access$5(I)V
    .locals 0

    .prologue
    .line 154
    sput p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    return-void
.end method

.method static synthetic access$6(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isTransferRequested:Z

    return v0
.end method

.method static synthetic access$7(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Z)V
    .locals 0

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isTransferRequested:Z

    return-void
.end method

.method static synthetic access$8(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessory/SAAgent;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    return-object v0
.end method

.method private changeFileName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1010
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1012
    const-string v8, "/"

    invoke-virtual {p2, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p2, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1013
    .local v4, "filePath":Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    const-string v9, "."

    invoke-virtual {p2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1014
    .local v3, "fileName":Ljava/lang/String;
    const-string v8, "."

    invoke-virtual {p2, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1015
    .local v2, "fileExt":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1017
    .local v6, "milliSec":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1018
    .local v0, "diffFileName":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1019
    const-string v5, "FileTransferProfileJAR/SAFileTransfer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "File successfully renamed "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    .end local v0    # "diffFileName":Ljava/lang/String;
    .end local v2    # "fileExt":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v6    # "milliSec":J
    :goto_0
    const/4 v5, 0x1

    :goto_1
    return v5

    .line 1021
    .restart local v0    # "diffFileName":Ljava/lang/String;
    .restart local v2    # "fileExt":Ljava/lang/String;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "filePath":Ljava/lang/String;
    .restart local v6    # "milliSec":J
    :cond_0
    const-string v8, "FileTransferProfileJAR/SAFileTransfer"

    const-string v9, "File rename failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1025
    .end local v0    # "diffFileName":Ljava/lang/String;
    .end local v2    # "fileExt":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v6    # "milliSec":J
    :cond_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1026
    const-string v5, "FileTransferProfileJAR/SAFileTransfer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "File successfully renamed "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1028
    :cond_2
    const-string v8, "FileTransferProfileJAR/SAFileTransfer"

    const-string v9, "File rename failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkReceiveParams(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "tx"    # I

    .prologue
    const/4 v3, 0x0

    .line 871
    const/4 v0, 0x0

    .line 872
    .local v0, "check":Z
    if-nez p1, :cond_2

    .line 873
    const/4 v0, 0x0

    .line 909
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 910
    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 911
    const-string v3, "FileTransferProfileJAR/SAFileTransfer"

    const-string v4, "transactionId already exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/4 v0, 0x0

    :cond_1
    move v3, v0

    .line 915
    :goto_1
    return v3

    .line 874
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 875
    const/4 v0, 0x1

    .line 876
    goto :goto_0

    .line 877
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->checkPathPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 878
    const-string v4, "FileTransferProfileJAR/SAFileTransfer"

    const-string v5, "checkReceiveParams return false, internal path"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 881
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 882
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 883
    const-string v3, "FileTransferProfileJAR/SAFileTransfer"

    const-string v4, "given path is a directory"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const/4 v0, 0x0

    .line 885
    goto :goto_0

    .line 886
    :cond_5
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 887
    .local v2, "name":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 888
    const-string v4, "FileTransferProfileJAR/SAFileTransfer"

    const-string v5, "No extension provided"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 891
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_7

    .line 892
    const-string v4, "FileTransferProfileJAR/SAFileTransfer"

    const-string v5, "extension length is 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 896
    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 897
    if-eqz v1, :cond_8

    .line 898
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 899
    if-nez v0, :cond_0

    .line 900
    const-string v3, "FileTransferProfileJAR/SAFileTransfer"

    const-string v4, "Directory does not exist!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 903
    :cond_8
    const-string v3, "FileTransferProfileJAR/SAFileTransfer"

    const-string v4, "getParentFile() is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private checkSource(Ljava/lang/String;)V
    .locals 14
    .param p1, "localSrc"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 814
    move-object v10, p1

    .line 816
    .local v10, "srcToSend":Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 817
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->checkPathPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 818
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wrong file path"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 821
    :cond_1
    :try_start_0
    const-string v4, "."

    invoke-virtual {v10, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 822
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    .line 821
    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 823
    .local v8, "ext":Ljava/lang/String;
    const-string v4, "FileTransferProfileJAR/SAFileTransfer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "File has a valid extentsion: "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 833
    .local v1, "localUri":Landroid/net/Uri;
    const-string v4, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 834
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 835
    if-eqz v10, :cond_2

    .line 836
    const-string v3, "FileTransferProfileJAR/SAFileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "URI scheme is SCHEME_FILE  File Path : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_2
    :goto_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 859
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    .line 860
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "File doesnot exist"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 825
    .end local v1    # "localUri":Landroid/net/Uri;
    .end local v8    # "ext":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 826
    .local v7, "e":Ljava/lang/StringIndexOutOfBoundsException;
    invoke-virtual {v7}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    .line 827
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wrong file..does not have extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 837
    .end local v7    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v1    # "localUri":Landroid/net/Uri;
    .restart local v8    # "ext":Ljava/lang/String;
    :cond_3
    const-string v4, "content"

    .line 838
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 837
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 838
    if-eqz v4, :cond_2

    .line 839
    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 840
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 841
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v12

    .local v2, "projection":[Ljava/lang/String;
    move-object v4, v3

    move-object v5, v3

    .line 842
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 843
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 845
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 846
    if-eqz v10, :cond_4

    .line 847
    const-string v3, "FileTransferProfileJAR/SAFileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "URI ContentResolver is SCHEME_CONTENT File Path : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 849
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 850
    const/4 v6, 0x0

    .line 853
    :cond_5
    if-eqz v6, :cond_2

    .line 854
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 848
    :catchall_0
    move-exception v3

    .line 849
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 850
    const/4 v6, 0x0

    .line 851
    throw v3

    .line 861
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cur":Landroid/database/Cursor;
    .restart local v9    # "file":Ljava/io/File;
    :cond_6
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 862
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "File is a directory"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 863
    :cond_7
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v12, 0x0

    cmp-long v3, v4, v12

    if-nez v3, :cond_8

    .line 864
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "File length is 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 867
    :cond_8
    const-string v3, "FileTransferProfileJAR/SAFileTransfer"

    const-string v4, "File is valid !!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    return-void
.end method

.method private getContentURIAuthority()Ljava/lang/String;
    .locals 7

    .prologue
    .line 702
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 703
    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const/4 v6, 0x0

    .line 702
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 708
    .local v2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 709
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 716
    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 704
    .end local v2    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 706
    const/4 v2, 0x0

    .restart local v2    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_0

    .line 709
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    .line 710
    .local v1, "prov":Landroid/content/pm/ProviderInfo;
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    const-string v5, "android.support.v4.content.FileProvider"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 711
    const-string v3, "FileTransferProfileJAR/SAFileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Authority:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_1
.end method

.method private getUniqueId()I
    .locals 4

    .prologue
    .line 806
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 807
    .local v0, "seed":J
    iget-wide v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLastGeneratedSeed:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 808
    iput-wide v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLastGeneratedSeed:J

    .line 809
    sget-object v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->rng:Ljava/util/Random;

    invoke-virtual {v2, v0, v1}, Ljava/util/Random;->setSeed(J)V

    .line 810
    sget-object v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->rng:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    return v2
.end method

.method private informIncomingFTRequest(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 729
    const-string v5, "transId"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    .line 732
    const-string v5, "agentClass"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 733
    .local v2, "implClass":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 735
    const-string v5, "AccessoryPreferences"

    const/4 v6, 0x0

    .line 734
    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 736
    .local v4, "spf":Landroid/content/SharedPreferences;
    const-string v5, "peerId"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 738
    .end local v4    # "spf":Landroid/content/SharedPreferences;
    :cond_0
    const-string v5, "FileTransferProfileJAR/SAFileTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "class now:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    if-nez v2, :cond_1

    .line 741
    const-string v5, "FileTransferProfileJAR/SAFileTransfer"

    const-string v6, "Target agent was cleared. Re-registering"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 747
    .local v3, "reregister_ext":Landroid/content/Intent;
    const-string v5, "com.samsung.accessory.action.REGISTER_AGENT"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 801
    .end local v3    # "reregister_ext":Landroid/content/Intent;
    :goto_0
    return-void

    .line 753
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    if-nez v5, :cond_2

    .line 754
    const-string v5, "FileTransferProfileJAR/SAFileTransfer"

    const-string v6, "Calling agent was cleared"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 758
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 759
    const-string v5, "FileTransferProfileJAR/SAFileTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Class name not matched with "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 760
    iget-object v7, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 759
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 764
    :cond_3
    invoke-static {v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->getCallingAgentInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    move-result-object v0

    .line 766
    .local v0, "agentInfo":Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;
    if-nez v0, :cond_4

    .line 767
    const-string v5, "FileTransferProfileJAR/SAFileTransfer"

    const-string v6, "AgentInfo is NULL! Re-Registering"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->register()Z

    .line 769
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->informIncomingFTRequest(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 773
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getEventListener()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object v5

    if-nez v5, :cond_5

    .line 774
    const-string v5, "FileTransferProfileJAR/SAFileTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "callback is not registered for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 777
    :cond_5
    const-string v5, "filePath"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, "fileName":Ljava/lang/String;
    const-string v5, "FileTransferProfileJAR/SAFileTransfer"

    .line 779
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Informing app of incoming file transfer request on registered callback "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 780
    sget v7, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 779
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 778
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v6, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;

    invoke-direct {v6, p0, v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private register()Z
    .locals 8

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->register(Lcom/samsung/android/sdk/accessory/SAAgent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FileTransferHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    .line 237
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$BackgroundExceptionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$BackgroundExceptionHandler;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$BackgroundExceptionHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 239
    const-string v0, "FileTransferProfileJAR/SAFileTransfer"

    const-string v1, "FileTransferHandlerThread started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    .line 241
    .local v7, "looper":Landroid/os/Looper;
    if-eqz v7, :cond_0

    .line 242
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    invoke-direct {v0, v7}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    if-eqz v0, :cond_1

    .line 246
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 247
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    .line 248
    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    iget-object v6, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;Landroid/os/HandlerThread;Landroid/os/Handler;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 247
    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    .line 250
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFTReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.accessory.ftconnection.internal"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 252
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->register(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;)V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$3;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;->post(Ljava/lang/Runnable;)Z

    .line 267
    const/4 v0, 0x1

    .line 270
    .end local v7    # "looper":Landroid/os/Looper;
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel(I)V
    .locals 2
    .param p1, "transactionId"    # I

    .prologue
    .line 581
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v0, :cond_1

    .line 582
    :cond_0
    const-string v0, "FileTransferProfileJAR/SAFileTransfer"

    const-string v1, "Using invalid instance of SAFileTransfer(). Please re-register."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :goto_0
    return-void

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 587
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong transaction id used for cancel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public cancelAll()V
    .locals 5

    .prologue
    .line 623
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v2, :cond_1

    .line 624
    :cond_0
    const-string v2, "FileTransferProfileJAR/SAFileTransfer"

    const-string v3, "Using invalid instance of SAFileTransfer(). Please re-register."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AccessoryPreferences"

    .line 629
    const/4 v4, 0x0

    .line 628
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 630
    .local v1, "prefs":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "localKey":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 632
    const-string v2, "FileTransferProfileJAR/SAFileTransfer"

    const-string v3, "Your service was not found. Please re-register"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 635
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v3, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$8;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$8;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method checkPathPermission(Ljava/lang/String;)Z
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1124
    const-string v2, "FileTransferProfileJAR/SAFileTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkPathPermission calling pkg: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1125
    const-string v4, " file Path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1124
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    if-nez p1, :cond_1

    .line 1136
    :cond_0
    :goto_0
    return v0

    .line 1129
    :cond_1
    const-string v2, "/data/data"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1130
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1131
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1136
    goto :goto_0
.end method

.method public close()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 669
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 670
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot close as File Transfer is in progress!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 672
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-eqz v2, :cond_3

    .line 673
    const-string v2, "FileTransferProfileJAR/SAFileTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stopFileTransferService() called by : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 674
    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 673
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 677
    .local v1, "callerContext":Landroid/content/Context;
    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 678
    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    .line 679
    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFTReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 684
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "agentName":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->stopFileTransferService(Ljava/lang/String;)V

    .line 686
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_1

    .line 687
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 689
    :cond_1
    iput-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    .line 690
    iput-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    .line 694
    .end local v0    # "agentName":Ljava/lang/String;
    .end local v1    # "callerContext":Landroid/content/Context;
    :goto_1
    return-void

    .line 681
    .restart local v1    # "callerContext":Landroid/content/Context;
    :cond_2
    const-string v2, "FileTransferProfileJAR/SAFileTransfer"

    const-string v3, "Could not unregister receiver. Calling context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 693
    .end local v1    # "callerContext":Landroid/content/Context;
    :cond_3
    const-string v2, "FileTransferProfileJAR/SAFileTransfer"

    const-string v3, "Using invalid instance of SAFileTransfer(). Please re-register."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method isInternalPath(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1141
    const-string v0, "/data/data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    const/4 v0, 0x1

    .line 1144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public receive(ILjava/lang/String;)V
    .locals 12
    .param p1, "transactionId"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 424
    iget-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v8, :cond_1

    .line 425
    :cond_0
    const-string v8, "FileTransferProfileJAR/SAFileTransfer"

    .line 426
    const-string v9, "Using invalid instance of SAFileTransfer(). Please re-register."

    .line 425
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iput-boolean v11, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isTransferRequested:Z

    .line 527
    :goto_0
    return-void

    .line 430
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->checkReceiveParams(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 431
    sget v8, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    if-eq p1, v8, :cond_3

    .line 433
    :cond_2
    const-string v8, "FileTransferProfileJAR/SAFileTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "TransactionId: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " | Current TransactionId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iput-boolean v11, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isTransferRequested:Z

    .line 436
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Wrong filepath or transaction id used"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 439
    :cond_3
    new-instance v7, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;

    invoke-direct {v7}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;-><init>()V

    .line 440
    .local v7, "txDetails":Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;
    iput p1, v7, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    .line 441
    iput-object p2, v7, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mFilePath:Ljava/lang/String;

    .line 442
    iget-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const/4 v1, 0x0

    .line 444
    .local v1, "contentUri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->saft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    if-nez v8, :cond_4

    .line 445
    new-instance v8, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-direct {v8}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->saft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    .line 447
    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->saft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    iget-object v9, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 452
    :cond_4
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->saft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    iget-object v9, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->getContentURIAuthority()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "authority":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->saft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getcontentURISupport()Z

    move-result v8

    if-eqz v8, :cond_a

    if-eqz v3, :cond_a

    if-eqz v0, :cond_a

    .line 455
    const/4 v4, 0x0

    .line 457
    .local v4, "privateFile":Ljava/io/File;
    if-nez p2, :cond_6

    .line 458
    :try_start_1
    const-string v8, "FileTransferProfileJAR/SAFileTransfer"

    const-string v9, "File path is wrong!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 479
    :catch_0
    move-exception v2

    .line 480
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    const/4 v1, 0x0

    .line 481
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 482
    const-string v8, "FileTransferProfileJAR/SAFileTransfer"

    const-string v9, "Cannot create the content URI !"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    if-nez v1, :cond_5

    .line 493
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 494
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 495
    const-string v8, "FileTransferProfileJAR/SAFileTransfer"

    const-string v9, "temp file deleted successfully "

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_5
    :goto_4
    if-nez v1, :cond_b

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isInternalPath(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 502
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 503
    const-string v9, "content uri needs to be implemented for receiving to internal folders. Please check file-transfer sdk documentation for more details"

    .line 502
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 448
    .end local v0    # "authority":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "privateFile":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 449
    .local v2, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    goto :goto_1

    .line 461
    .end local v2    # "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    .restart local v0    # "authority":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "privateFile":Ljava/io/File;
    :cond_6
    :try_start_2
    const-string v8, "FileTransferProfileJAR/SAFileTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "File :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_temp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 463
    .end local v4    # "privateFile":Ljava/io/File;
    .local v5, "privateFile":Ljava/io/File;
    :try_start_3
    const-string v8, "FileTransferProfileJAR/SAFileTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Temporary File Created for content URI : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v0, v5}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 466
    if-nez v1, :cond_8

    .line 467
    const-string v8, "FileTransferProfileJAR/SAFileTransfer"

    const-string v9, "Cannot create the content URI !"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 469
    const-string v8, "FileTransferProfileJAR/SAFileTransfer"

    const-string v9, "temp file deleted successfully "

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 470
    .end local v5    # "privateFile":Ljava/io/File;
    .restart local v4    # "privateFile":Ljava/io/File;
    goto/16 :goto_3

    .line 471
    .end local v4    # "privateFile":Ljava/io/File;
    .restart local v5    # "privateFile":Ljava/io/File;
    :cond_7
    const-string v8, "FileTransferProfileJAR/SAFileTransfer"

    const-string v9, "temp file could not be deleted "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 473
    .end local v5    # "privateFile":Ljava/io/File;
    .restart local v4    # "privateFile":Ljava/io/File;
    goto/16 :goto_3

    .line 474
    .end local v4    # "privateFile":Ljava/io/File;
    .restart local v5    # "privateFile":Ljava/io/File;
    :cond_8
    iput-object p2, v7, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mSource:Ljava/lang/String;

    .line 475
    iget-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 477
    const/4 v9, 0x2

    .line 475
    invoke-virtual {v8, v3, v1, v9}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v4, v5

    .line 479
    .end local v5    # "privateFile":Ljava/io/File;
    .restart local v4    # "privateFile":Ljava/io/File;
    goto/16 :goto_3

    .line 483
    :catch_2
    move-exception v2

    .line 484
    .local v2, "e":Ljava/lang/NullPointerException;
    :goto_5
    const/4 v1, 0x0

    .line 485
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 486
    const-string v8, "FileTransferProfileJAR/SAFileTransfer"

    const-string v9, "Cannot create the content URI !!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 487
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v2

    .line 488
    .local v2, "e":Ljava/io/IOException;
    :goto_6
    const/4 v1, 0x0

    .line 489
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 490
    const-string v8, "FileTransferProfileJAR/SAFileTransfer"

    const-string v9, "Cannot create the File !"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 497
    .end local v2    # "e":Ljava/io/IOException;
    :cond_9
    const-string v8, "FileTransferProfileJAR/SAFileTransfer"

    const-string v9, "temp file could not be deleted "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 506
    .end local v4    # "privateFile":Ljava/io/File;
    :cond_a
    const-string v8, "FileTransferProfileJAR/SAFileTransfer"

    const-string v9, "FT CORE version doesnot support content URI !!"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 510
    .local v6, "strURI":Ljava/lang/String;
    :goto_7
    iget-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v9, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$5;

    invoke-direct {v9, p0, p1, p2, v6}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$5;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 509
    .end local v6    # "strURI":Ljava/lang/String;
    :cond_c
    const/4 v6, 0x0

    goto :goto_7

    .line 487
    .restart local v5    # "privateFile":Ljava/io/File;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "privateFile":Ljava/io/File;
    .restart local v4    # "privateFile":Ljava/io/File;
    goto :goto_6

    .line 483
    .end local v4    # "privateFile":Ljava/io/File;
    .restart local v5    # "privateFile":Ljava/io/File;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "privateFile":Ljava/io/File;
    .restart local v4    # "privateFile":Ljava/io/File;
    goto :goto_5

    .line 479
    .end local v4    # "privateFile":Ljava/io/File;
    .restart local v5    # "privateFile":Ljava/io/File;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "privateFile":Ljava/io/File;
    .restart local v4    # "privateFile":Ljava/io/File;
    goto/16 :goto_2
.end method

.method public reject(I)V
    .locals 3
    .param p1, "transactionId"    # I

    .prologue
    .line 540
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v1, :cond_1

    .line 541
    :cond_0
    const-string v1, "FileTransferProfileJAR/SAFileTransfer"

    .line 542
    const-string v2, "Using invalid instance of SAFileTransfer(). Please re-register."

    .line 541
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_0
    return-void

    .line 545
    :cond_1
    const-string v1, ""

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->checkReceiveParams(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 546
    sget v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    if-eq v1, p1, :cond_3

    .line 547
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 548
    const-string v2, "Wrong transaction id used in reject()"

    .line 547
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 549
    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;-><init>()V

    .line 550
    .local v0, "txDetails":Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;
    iput p1, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    .line 551
    const-string v1, ""

    iput-object v1, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mFilePath:Ljava/lang/String;

    .line 552
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$6;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$6;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public send(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;)I
    .locals 17
    .param p1, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v2, :cond_1

    .line 297
    :cond_0
    const-string v2, "FileTransferProfileJAR/SAFileTransfer"

    .line 298
    const-string v3, "Using invalid instance of SAFileTransfer(). Please re-register."

    .line 297
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v8, -0x1

    .line 408
    :goto_0
    return v8

    .line 302
    :cond_1
    if-nez p1, :cond_2

    .line 303
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "PeerAgent cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 305
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->checkSource(Ljava/lang/String;)V

    .line 306
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->getUniqueId()I

    move-result v8

    .line 307
    .local v8, "txId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->saft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    if-nez v2, :cond_3

    .line 308
    new-instance v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-direct {v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->saft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    .line 310
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->saft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_3
    :goto_1
    const/4 v10, 0x0

    .line 317
    .local v10, "contentUri":Landroid/net/Uri;
    const/4 v14, 0x0

    .line 318
    .local v14, "privateFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->saft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 319
    .local v13, "packageName":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->getContentURIAuthority()Ljava/lang/String;

    move-result-object v9

    .line 320
    .local v9, "authority":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->saft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getcontentURISupport()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v13, :cond_6

    if-eqz v9, :cond_6

    .line 322
    if-nez p2, :cond_4

    .line 323
    :try_start_1
    const-string v2, "FileTransferProfileJAR/SAFileTransfer"

    const-string v3, "File path is wrong!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 324
    const/4 v8, -0x1

    goto :goto_0

    .line 311
    .end local v9    # "authority":Ljava/lang/String;
    .end local v10    # "contentUri":Landroid/net/Uri;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "privateFile":Ljava/io/File;
    :catch_0
    move-exception v11

    .line 312
    .local v11, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    invoke-virtual {v11}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    goto :goto_1

    .line 326
    .end local v11    # "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    .restart local v9    # "authority":Ljava/lang/String;
    .restart local v10    # "contentUri":Landroid/net/Uri;
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "privateFile":Ljava/io/File;
    :cond_4
    :try_start_2
    const-string v2, "FileTransferProfileJAR/SAFileTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 328
    .end local v14    # "privateFile":Ljava/io/File;
    .local v15, "privateFile":Ljava/io/File;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v9, v15}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 330
    if-nez v10, :cond_5

    .line 331
    const-string v2, "FileTransferProfileJAR/SAFileTransfer"

    const-string v3, "Cannot create the content URI !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    move-object v14, v15

    .line 346
    .end local v15    # "privateFile":Ljava/io/File;
    .restart local v14    # "privateFile":Ljava/io/File;
    :goto_2
    if-nez v10, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isInternalPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 347
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "content uri needs to be implemented for sending from internal folders.Please check file-transfer sdk documentation for more details"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    .end local v14    # "privateFile":Ljava/io/File;
    .restart local v15    # "privateFile":Ljava/io/File;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 335
    const/4 v3, 0x1

    .line 333
    invoke-virtual {v2, v13, v10, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5

    move-object v14, v15

    .line 337
    .end local v15    # "privateFile":Ljava/io/File;
    .restart local v14    # "privateFile":Ljava/io/File;
    goto :goto_2

    :catch_1
    move-exception v11

    .line 338
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    const/4 v10, 0x0

    .line 339
    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 340
    const-string v2, "FileTransferProfileJAR/SAFileTransfer"

    const-string v3, "Cannot create the content URI !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 341
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v11

    .line 342
    .local v11, "e":Ljava/lang/NullPointerException;
    :goto_4
    const/4 v10, 0x0

    .line 343
    invoke-virtual {v11}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 344
    const-string v2, "FileTransferProfileJAR/SAFileTransfer"

    const-string v3, "Cannot create the content URI !! "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 351
    .end local v11    # "e":Ljava/lang/NullPointerException;
    :cond_6
    const-string v2, "FileTransferProfileJAR/SAFileTransfer"

    const-string v3, "FTCore version doesnot support content uri"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_7
    new-instance v16, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;-><init>()V

    .line 355
    .local v16, "txDetails":Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 357
    .local v6, "strURI":Ljava/lang/String;
    :goto_5
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->isFTBound()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 358
    const/4 v12, -0x1

    .line 360
    .local v12, "id":I
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->getManagerInstance(Lcom/samsung/android/sdk/accessory/SAAgent;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->sendFile(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v12

    .line 367
    :goto_6
    const-string v2, "FileTransferProfileJAR/SAFileTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "received tx from FTCore"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    move-object/from16 v0, v16

    iput v12, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    .line 370
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mFilePath:Ljava/lang/String;

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 355
    .end local v6    # "strURI":Ljava/lang/String;
    .end local v12    # "id":I
    :cond_8
    const/4 v6, 0x0

    goto :goto_5

    .line 362
    .restart local v6    # "strURI":Ljava/lang/String;
    .restart local v12    # "id":I
    :catch_3
    move-exception v11

    .line 363
    .local v11, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v11}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_6

    .line 364
    .end local v11    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v11

    .line 365
    .local v11, "e":Lcom/samsung/android/sdk/accessory/SAException;
    invoke-virtual {v11}, Lcom/samsung/android/sdk/accessory/SAException;->printStackTrace()V

    goto :goto_6

    .line 374
    .end local v11    # "e":Lcom/samsung/android/sdk/accessory/SAException;
    .end local v12    # "id":I
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput v2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    .line 375
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mFilePath:Ljava/lang/String;

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v2, "FileTransferProfileJAR/SAFileTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "returning temorary trasaction id"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v3, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$4;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$4;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 341
    .end local v6    # "strURI":Ljava/lang/String;
    .end local v14    # "privateFile":Ljava/io/File;
    .end local v16    # "txDetails":Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;
    .restart local v15    # "privateFile":Ljava/io/File;
    :catch_5
    move-exception v11

    move-object v14, v15

    .end local v15    # "privateFile":Ljava/io/File;
    .restart local v14    # "privateFile":Ljava/io/File;
    goto/16 :goto_4

    .line 337
    .end local v14    # "privateFile":Ljava/io/File;
    .restart local v15    # "privateFile":Ljava/io/File;
    :catch_6
    move-exception v11

    move-object v14, v15

    .end local v15    # "privateFile":Ljava/io/File;
    .restart local v14    # "privateFile":Ljava/io/File;
    goto/16 :goto_3
.end method
