.class Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;
.super Ljava/lang/Object;
.source "SAFileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->cancel(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

.field private final synthetic val$transactionId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iput p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;->val$transactionId:I

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 594
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$1(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;->val$transactionId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;

    .line 595
    .local v1, "txDetails":Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;
    if-nez v1, :cond_0

    .line 596
    const-string v2, "FileTransferProfileJAR/SAFileTransfer"

    const-string v3, "cancelFile aborted because service connection or transaction already closed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .end local v1    # "txDetails":Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;
    :goto_0
    return-void

    .line 598
    .restart local v1    # "txDetails":Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;
    :cond_0
    iget v2, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    if-nez v2, :cond_1

    .line 599
    const/4 v2, -0x1

    iput v2, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    .line 600
    const-string v2, "FileTransferProfileJAR/SAFileTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cancel called before transaction id is genereated by FT Core "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;->val$transactionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 607
    .end local v1    # "txDetails":Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 601
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .restart local v1    # "txDetails":Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;
    :cond_1
    :try_start_1
    iget v2, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    if-ne v2, v4, :cond_2

    .line 602
    const-string v2, "FileTransferProfileJAR/SAFileTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cancel called again before transaction id is genereated by FT Core "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;->val$transactionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 609
    .end local v1    # "txDetails":Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;
    :catch_1
    move-exception v0

    .line 610
    .local v0, "e":Lcom/samsung/android/sdk/accessory/SAException;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->printStackTrace()V

    goto :goto_0

    .line 604
    .end local v0    # "e":Lcom/samsung/android/sdk/accessory/SAException;
    .restart local v1    # "txDetails":Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$8(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessory/SAAgent;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->getManagerInstance(Lcom/samsung/android/sdk/accessory/SAAgent;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    move-result-object v2

    iget v3, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->cancelFile(I)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method
