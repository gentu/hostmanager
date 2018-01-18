.class Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;
.super Landroid/os/ResultReceiver;
.source "SAFileTransferCallbackReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FileTransferProfileJAR/FileTransferCallbackReceiver"


# instance fields
.field private mAppCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

.field private mDestFileName:Ljava/lang/String;

.field private mSourceFileName:Ljava/lang/String;

.field private mTransactionArray:[I

.field private mTransactionId:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "uAppCallback"    # Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 29
    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mAppCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    .line 30
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 13
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 34
    .line 35
    const-string v8, "CallBackJson"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "jsonMsg":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 115
    :goto_0
    return-void

    .line 38
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 112
    const-string v8, "FileTransferProfileJAR/FileTransferCallbackReceiver"

    const-string v9, "Wrong resultCode"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :pswitch_0
    new-instance v7, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;

    invoke-direct {v7}, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;-><init>()V

    .line 43
    .local v7, "progressMsg":Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;
    :try_start_0
    invoke-virtual {v7, v4}, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->fromJSON(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v7}, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->getTransactionId()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I

    .line 45
    invoke-virtual {v7}, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->getProgress()J

    move-result-wide v8

    long-to-int v6, v8

    .line 46
    .local v6, "prog":I
    iget-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mAppCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    iget v9, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I

    invoke-interface {v8, v9, v6}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;->onProgressChanged(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    .end local v6    # "prog":I
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v7    # "progressMsg":Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;
    :pswitch_1
    new-instance v0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferCompleteMsg;

    invoke-direct {v0}, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferCompleteMsg;-><init>()V

    .line 55
    .local v0, "completeMsg":Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferCompleteMsg;
    :try_start_1
    invoke-virtual {v0, v4}, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferCompleteMsg;->fromJSON(Ljava/lang/Object;)V

    .line 56
    const-string v8, "FileTransferProfileJAR/FileTransferCallbackReceiver"

    const-string v9, "Transfer Complete"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v0}, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferCompleteMsg;->getTransactionId()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I

    .line 58
    invoke-virtual {v0}, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferCompleteMsg;->getSourcePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mSourceFileName:Ljava/lang/String;

    .line 59
    invoke-virtual {v0}, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferCompleteMsg;->getDestPath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mDestFileName:Ljava/lang/String;

    .line 60
    iget-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mDestFileName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 61
    iget-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mAppCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    iget v9, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I

    .line 62
    iget-object v10, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mSourceFileName:Ljava/lang/String;

    const/4 v11, 0x0

    .line 61
    invoke-interface {v8, v9, v10, v11}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;->onTransferCompleted(ILjava/lang/String;I)V

    .line 67
    :goto_1
    const/4 v8, -0x1

    iput v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 68
    :catch_1
    move-exception v1

    .line 69
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_2
    iget-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mAppCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    iget v9, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I

    .line 65
    iget-object v10, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mDestFileName:Ljava/lang/String;

    const/4 v11, 0x0

    .line 64
    invoke-interface {v8, v9, v10, v11}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;->onTransferCompleted(ILjava/lang/String;I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 74
    .end local v0    # "completeMsg":Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferCompleteMsg;
    :pswitch_2
    const-string v8, "FileTransferProfileJAR/FileTransferCallbackReceiver"

    const-string v9, "FT Error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v2, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;

    invoke-direct {v2}, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;-><init>()V

    .line 77
    .local v2, "errmsg":Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;
    :try_start_3
    invoke-virtual {v2, v4}, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->fromJSON(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v2}, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->getTransactionId()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I

    .line 79
    invoke-virtual {v2}, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->getErrorCode()I

    move-result v3

    .line 81
    .local v3, "errorCode":I
    iget-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mAppCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    iget v9, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10, v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;->onTransferCompleted(ILjava/lang/String;I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 87
    .end local v3    # "errorCode":I
    :goto_2
    iput v12, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I

    .line 88
    iput-object v11, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mSourceFileName:Ljava/lang/String;

    .line 89
    iput-object v11, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mDestFileName:Ljava/lang/String;

    goto/16 :goto_0

    .line 83
    :catch_2
    move-exception v1

    .line 84
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 93
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "errmsg":Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;
    :pswitch_3
    const-string v8, "FileTransferProfileJAR/FileTransferCallbackReceiver"

    const-string v9, "FT Error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v5, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;

    invoke-direct {v5}, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;-><init>()V

    .line 96
    .local v5, "mulerrmsg":Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;
    :try_start_4
    invoke-virtual {v5, v4}, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->fromJSON(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v5}, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->getTransactionId()[I

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionArray:[I

    .line 98
    invoke-virtual {v5}, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->getErrorCode()I

    move-result v3

    .line 100
    .restart local v3    # "errorCode":I
    iget-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mAppCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    iget-object v9, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionArray:[I

    invoke-interface {v8, v9, v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;->onCancelAllCompleted([II)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 106
    .end local v3    # "errorCode":I
    :goto_3
    iput v12, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I

    .line 107
    iput-object v11, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mSourceFileName:Ljava/lang/String;

    .line 108
    iput-object v11, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mDestFileName:Ljava/lang/String;

    goto/16 :goto_0

    .line 102
    :catch_3
    move-exception v1

    .line 103
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 38
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
