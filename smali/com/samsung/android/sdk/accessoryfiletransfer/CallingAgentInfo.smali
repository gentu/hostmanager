.class public Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;
.super Ljava/lang/Object;
.source "CallingAgentInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;
    }
.end annotation


# instance fields
.field private mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

.field private mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

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


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;Landroid/os/HandlerThread;Landroid/os/Handler;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .param p1, "callingAgent"    # Lcom/samsung/android/sdk/accessory/SAAgent;
    .param p2, "eventListener"    # Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;
    .param p3, "handlerThread"    # Landroid/os/HandlerThread;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "callback"    # Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/accessory/SAAgent;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;",
            "Landroid/os/HandlerThread;",
            "Landroid/os/Handler;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p6, "transactions":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    .line 23
    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    .line 24
    iput-object p3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mHandlerThread:Landroid/os/HandlerThread;

    .line 25
    iput-object p4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mHandler:Landroid/os/Handler;

    .line 26
    iput-object p6, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    iput-object p5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    .line 28
    return-void
.end method


# virtual methods
.method getCallingAgent()Lcom/samsung/android/sdk/accessory/SAAgent;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    return-object v0
.end method

.method getEventListener()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getHandlerThread()Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method getLocalCallback()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    return-object v0
.end method

.method getTransactionsMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method setAgent(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0
    .param p1, "callingAgent"    # Lcom/samsung/android/sdk/accessory/SAAgent;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mCallingAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    .line 56
    return-void
.end method

.method setEventListener(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V
    .locals 0
    .param p1, "eventListener"    # Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    .line 60
    return-void
.end method

.method setLocalCallback(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    .line 64
    return-void
.end method
