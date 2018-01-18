.class Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SPPConnectionRetryTask;
.super Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;
.source "SPPHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SPPConnectionRetryTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
    .param p2, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p3, "max"    # I

    .prologue
    .line 849
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SPPConnectionRetryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    .line 850
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;I)V

    .line 852
    return-void
.end method


# virtual methods
.method public endOfMaxRetryTask(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 6
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 866
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[Accessory][RETRY] end of max retry task"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SPPConnectionRetryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$800(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 872
    .local v0, "bDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 880
    :goto_0
    return-void

    .line 875
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SPPConnectionRetryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 878
    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$StartRecoveryTask;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SPPConnectionRetryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$StartRecoveryTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    .line 879
    .local v1, "recoveryTask":Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$StartRecoveryTask;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SPPConnectionRetryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$900(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public task(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 3
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 858
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC][Accessory][RETRY] retry count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SPPConnectionRetryTask;->getRetryCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$SPPConnectionRetryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-static {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$700(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    .line 861
    return-void
.end method
