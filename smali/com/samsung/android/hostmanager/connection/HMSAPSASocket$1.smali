.class Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;
.super Ljava/lang/Object;
.source "HMSAPSASocket.java"

# interfaces
.implements Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelAllCompleted(I)V
    .locals 3
    .param p1, "error_code"    # I

    .prologue
    .line 537
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelAllCompleted() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public onProgressChanged(II)V
    .locals 3
    .param p1, "transId"    # I
    .param p2, "progress"    # I

    .prologue
    .line 430
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAP::progress received : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for transaction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public onTransferCompleted(ILjava/lang/String;I)V
    .locals 3
    .param p1, "transId"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .prologue
    .line 435
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAP::onTransferComplete tr id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    packed-switch p3, :pswitch_data_0

    .line 514
    :goto_0
    :pswitch_0
    return-void

    .line 439
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAP::error =  ERROR_CHANNEL_IO"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    const-string v1, "ERROR_CHANNEL_IO"

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;->onFileTransferFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAP::error =  ERROR_COMMAND_DROPPED"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    const-string v1, "ERROR_COMMAND_DROPPED"

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;->onFileTransferFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :pswitch_3
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAP::error =  ERROR_CONNECTION_LOST"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    const-string v1, "ERROR_CONNECTION_LOST"

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;->onFileTransferFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_2
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :pswitch_4
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAP::error =  ERROR_FILE_IO"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 464
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    const-string v1, "ERROR_FILE_IO"

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;->onFileTransferFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 466
    :cond_3
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 469
    :pswitch_5
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAP::error =  ERROR_NONE"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 471
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    const-string v1, "receive"

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;->onTransferComplete(Ljava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 473
    :cond_4
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 476
    :pswitch_6
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAP::error =  ERROR_PEER_AGENT_BUSY"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 478
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    const-string v1, "ERROR_PEER_AGENT_BUSY"

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;->onFileTransferFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 480
    :cond_5
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 483
    :pswitch_7
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAP::error =  ERROR_PEER_AGENT_NO_RESPONSE"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 485
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    const-string v1, "ERROR_PEER_AGENT_NO_RESPONSE"

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;->onFileTransferFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 487
    :cond_6
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 490
    :pswitch_8
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAP::error =  ERROR_PEER_AGENT_REJECTED"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 492
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    const-string v1, "ERROR_PEER_AGENT_REJECTED"

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;->onFileTransferFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 494
    :cond_7
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 498
    :pswitch_9
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAP::error =  ERROR_REQUEST_NOT_QUEUED"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 500
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    const-string v1, "ERROR_REQUEST_NOT_QUEUED"

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;->onFileTransferFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 502
    :cond_8
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 505
    :pswitch_a
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAP::error =  ERROR_SPACE_NOT_AVAILABLE"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 507
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$1;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$100(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;

    move-result-object v0

    const-string v1, "ERROR_SPACE_NOT_AVAILABLE"

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$FileTransfer;->onFileTransferFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 509
    :cond_9
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 437
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public onTransferRequested(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 518
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTransferRequested()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    return-void
.end method
