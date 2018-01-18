.class Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;
.super Ljava/lang/Object;
.source "ServiceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HFPConnectionRetryTask"
.end annotation


# instance fields
.field private mDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
    .param p2, "device"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 2720
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;->mDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 2721
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;->mDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 2723
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HFPConnectionRetryTask for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2724
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2728
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retry HFP Connection for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;->mDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;->mDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SPP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v1

    .line 2731
    .local v1, "isSPPConnected":Z
    if-nez v1, :cond_0

    .line 2733
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPP is also Disconnected. Dont Retry HFP Connection for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;->mDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2754
    :goto_0
    return-void

    .line 2737
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;->mDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v0

    .line 2739
    .local v0, "isHFPConnected":Z
    if-nez v0, :cond_1

    .line 2741
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2742
    .local v3, "reqBundle":Landroid/os/Bundle;
    const-string v4, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->HFP:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2744
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;->mDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 2745
    .local v2, "itemBundle":Landroid/os/Bundle;
    const-string v4, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2747
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Request HFP connection!"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$HFPConnectionRetryTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v4

    const/16 v5, 0x15

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 2751
    .end local v2    # "itemBundle":Landroid/os/Bundle;
    .end local v3    # "reqBundle":Landroid/os/Bundle;
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HFP already connected"

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
