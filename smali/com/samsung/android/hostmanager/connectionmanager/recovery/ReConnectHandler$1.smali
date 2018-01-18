.class Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler$1;
.super Landroid/os/Handler;
.source "ReConnectHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 376
    const-string v1, "ReConnectHandler"

    const-string v2, "mRetryHandler : receviced message"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 379
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 380
    const-string v1, "ReConnectHandler"

    const-string v2, "bluetooth device is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 385
    const-string v1, "ReConnectHandler"

    const-string v2, "device address is null"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_1
    const-string v1, "ReConnectHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMAC][Accessory][RETRY] retry count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->getSppRecoveryTryCnt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;

    invoke-static {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->access$000(Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;Landroid/bluetooth/BluetoothDevice;)V

    .line 395
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/ReConnectHandler;->increaseSppRecoveryTryCnt()V

    goto :goto_0
.end method
