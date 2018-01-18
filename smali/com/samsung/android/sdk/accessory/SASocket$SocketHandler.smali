.class final Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;
.super Landroid/os/Handler;
.source "SASocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SASocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SocketHandler"
.end annotation


# static fields
.field static final MESSAGE_CHANNEL_ERROR:I = 0x3

.field static final MESSAGE_CHANNEL_READ:I = 0x2

.field static final MESSAGE_SERVICE_CONNECTION_LOSS:I = 0x1

.field static final MESSAGE_SERVICE_CONNECTION_RESPONSE:I = 0x4


# instance fields
.field mSocket:Lcom/samsung/android/sdk/accessory/SASocket;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SASocket;Landroid/os/Looper;)V
    .locals 0
    .param p1, "socket"    # Lcom/samsung/android/sdk/accessory/SASocket;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 584
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 585
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;

    .line 586
    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 590
    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 601
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$3()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    :goto_0
    monitor-exit p0

    return-void

    .line 592
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/samsung/android/sdk/accessory/SASocket;->access$0(Lcom/samsung/android/sdk/accessory/SASocket;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 595
    :pswitch_2
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/sdk/accessory/SASocket;->access$1(Lcom/samsung/android/sdk/accessory/SASocket;IILandroid/os/Bundle;)V

    goto :goto_0

    .line 598
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessory/SASocket;->access$2(Lcom/samsung/android/sdk/accessory/SASocket;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 590
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized quit()V
    .locals 1

    .prologue
    .line 606
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    monitor-exit p0

    return-void

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
