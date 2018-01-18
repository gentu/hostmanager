.class Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;
.super Ljava/lang/Object;
.source "HMSAPServiceConnection.java"

# interfaces
.implements Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelAllCompleted(I)V
    .locals 3
    .param p1, "error_code"    # I

    .prologue
    .line 467
    const-string v0, "HMSAPServiceConnection"

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

    .line 468
    return-void
.end method

.method public onProgressChanged(II)V
    .locals 3
    .param p1, "transId"    # I
    .param p2, "progress"    # I

    .prologue
    .line 348
    const-string v0, "HMSAPServiceConnection"

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

    .line 349
    return-void
.end method

.method public onTransferCompleted(ILjava/lang/String;I)V
    .locals 3
    .param p1, "transId"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .prologue
    .line 353
    const-string v0, "HMSAPServiceConnection"

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

    .line 354
    packed-switch p3, :pswitch_data_0

    .line 431
    :goto_0
    :pswitch_0
    return-void

    .line 356
    :pswitch_1
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "SAP::error =  ERROR_CHANNEL_IO"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    const-string v1, "ERROR_CHANNEL_IO"

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;->onFileTransferFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_0
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :pswitch_2
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "SAP::error =  ERROR_COMMAND_DROPPED"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    const-string v1, "ERROR_COMMAND_DROPPED"

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;->onFileTransferFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_1
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :pswitch_3
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "SAP::error =  ERROR_CONNECTION_LOST"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    const-string v1, "ERROR_CONNECTION_LOST"

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;->onFileTransferFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_2
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :pswitch_4
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "SAP::error =  ERROR_FILE_IO"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 381
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    const-string v1, "ERROR_FILE_IO"

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;->onFileTransferFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 383
    :cond_3
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 386
    :pswitch_5
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "SAP::error =  ERROR_NONE"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 388
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    const-string v1, "receive"

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;->onTransferComplete(Ljava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 390
    :cond_4
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 393
    :pswitch_6
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "SAP::error =  ERROR_PEER_AGENT_BUSY"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 395
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    const-string v1, "ERROR_PEER_AGENT_BUSY"

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;->onFileTransferFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 397
    :cond_5
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 400
    :pswitch_7
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "SAP::error =  ERROR_PEER_AGENT_NO_RESPONSE"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 402
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    const-string v1, "ERROR_PEER_AGENT_NO_RESPONSE"

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;->onFileTransferFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    :cond_6
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 407
    :pswitch_8
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "SAP::error =  ERROR_PEER_AGENT_REJECTED"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 409
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    const-string v1, "ERROR_PEER_AGENT_REJECTED"

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;->onFileTransferFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 411
    :cond_7
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 415
    :pswitch_9
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "SAP::error =  ERROR_REQUEST_NOT_QUEUED"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 417
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    const-string v1, "ERROR_REQUEST_NOT_QUEUED"

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;->onFileTransferFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 419
    :cond_8
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 422
    :pswitch_a
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "SAP::error =  ERROR_SPACE_NOT_AVAILABLE"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 424
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$000(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;

    move-result-object v0

    const-string v1, "ERROR_SPACE_NOT_AVAILABLE"

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$FileTransfer;->onFileTransferFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 426
    :cond_9
    const-string v0, "HMSAPServiceConnection"

    const-string v1, "mFileTransfer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 354
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
    .locals 10
    .param p1, "id"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 435
    const-string v7, "HMSAPServiceConnection"

    const-string v8, "onTransferRequested()"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    move-object v3, p2

    .line 438
    .local v3, "path":Ljava/lang/String;
    move v6, p1

    .line 441
    .local v6, "tx":I
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    .local v4, "tFile":Ljava/io/File;
    iget-object v7, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->getConnectedPeerAgent()Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "deviceId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 449
    .local v0, "bnrManager":Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getBackupRestoreManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 454
    :goto_0
    if-eqz v0, :cond_0

    .line 455
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 457
    .local v5, "tempApkPath":Ljava/lang/String;
    const-string v7, "HMSAPServiceConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTransferRequested transId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " src path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", receive path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v7, p0, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;

    invoke-static {v7}, Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;->access$100(Lcom/samsung/android/hostmanager/service/HMSAPServiceConnection;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->receive(ILjava/lang/String;)V

    .line 463
    .end local v5    # "tempApkPath":Ljava/lang/String;
    :goto_1
    return-void

    .line 450
    :catch_0
    move-exception v2

    .line 451
    .local v2, "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 461
    .end local v2    # "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    :cond_0
    const-string v7, "HMSAPServiceConnection"

    const-string v8, "onTransferRequested()::bnrManager is null."

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
