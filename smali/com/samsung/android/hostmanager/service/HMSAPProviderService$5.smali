.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;
.super Lcom/samsung/android/hostmanager/aidl/ConnectListener$Stub;
.source "HMSAPProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendFileForAppInstall(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

.field final synthetic val$deviceId:Ljava/lang/String;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$from:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .prologue
    .line 2625
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$deviceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$packageName:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$from:I

    invoke-direct {p0}, Lcom/samsung/android/hostmanager/aidl/ConnectListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 6
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2637
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFileForAppInstall(), Wifi P2p Connection error-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    packed-switch p1, :pswitch_data_0

    .line 2661
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$deviceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$filePath:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$from:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->retryAppInstallViaWifiDirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2663
    :goto_0
    return-void

    .line 2642
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wifi P2p Connection fail. Wifi P2p is not avaialable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$filePath:Ljava/lang/String;

    const-wide/32 v2, 0x1400000

    invoke-static {v1, v2, v3}, Lcom/samsung/android/hostmanager/pm/FileManager;->isFileSizeExceedingLimit(Ljava/lang/String;J)Z

    move-result v0

    .line 2644
    .local v0, "isExceedingBTLimit":Z
    if-eqz v0, :cond_1

    .line 2646
    sget-boolean v1, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->mRestoreInstallProgress:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1900(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)Lcom/samsung/android/hostmanager/service/HMSAPProviderService$WappsInstallResultReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2647
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR_WIFIP2P_CONNECT_BUSY onFailure(), packageName-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  deviceId-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$deviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2649
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1900(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)Lcom/samsung/android/hostmanager/service/HMSAPProviderService$WappsInstallResultReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$deviceId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$WappsInstallResultReceiver;->onWappsInstallFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2651
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$filePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$deviceId:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$from:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$2000(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 2654
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1802(Z)Z

    .line 2655
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$filePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$deviceId:Ljava/lang/String;

    const/16 v4, 0x2000

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendFileToRemotePeer(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 2639
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 2628
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendFileForAppInstall(), Wifi P2p Connection Success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1702(Z)Z

    .line 2630
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$filePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->mInstallFilePath:Ljava/lang/String;

    .line 2631
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1802(Z)Z

    .line 2632
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$5;->val$deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->findPeers(Ljava/lang/String;)V

    .line 2633
    return-void
.end method
