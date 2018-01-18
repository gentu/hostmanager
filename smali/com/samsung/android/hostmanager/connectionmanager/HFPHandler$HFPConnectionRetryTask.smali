.class Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$HFPConnectionRetryTask;
.super Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;
.source "HFPHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HFPConnectionRetryTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;
    .param p2, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
    .param p3, "max"    # I

    .prologue
    .line 817
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$HFPConnectionRetryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    .line 818
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler$ConnectionRetryTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ProfileHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;I)V

    .line 820
    return-void
.end method


# virtual methods
.method public endOfMaxRetryTask(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 6
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 834
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "end of max retry task"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$HFPConnectionRetryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->access$400(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    invoke-static {p1}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToBluetoothDevice(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 840
    .local v0, "bDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 849
    :goto_0
    return-void

    .line 844
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$HFPConnectionRetryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setBREDRConnectingFlag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 847
    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$StartRecoveryTask;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$HFPConnectionRetryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$StartRecoveryTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    .line 848
    .local v1, "recoveryTask":Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$StartRecoveryTask;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$HFPConnectionRetryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->access$500(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public task(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 3
    .param p1, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 826
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMAC][HFP][RETRY] retry count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$HFPConnectionRetryTask;->getRetryCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$HFPConnectionRetryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    invoke-static {v0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->access$300(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)Z

    .line 829
    return-void
.end method
