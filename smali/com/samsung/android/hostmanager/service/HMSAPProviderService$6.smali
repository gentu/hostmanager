.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$6;
.super Lcom/samsung/android/hostmanager/aidl/ConnectListener$Stub;
.source "HMSAPProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->retryAppInstallViaWifiDirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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
    .line 2680
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$6;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$6;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$6;->val$deviceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$6;->val$packageName:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$6;->val$from:I

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
    .line 2692
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wifi P2p Connection error-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    packed-switch p1, :pswitch_data_0

    .line 2706
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wifi P2p Connection fail. Wifi P2p connection failed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$6;->val$filePath:Ljava/lang/String;

    const-wide/32 v2, 0x1400000

    invoke-static {v1, v2, v3}, Lcom/samsung/android/hostmanager/pm/FileManager;->isFileSizeExceedingLimit(Ljava/lang/String;J)Z

    move-result v0

    .line 2710
    .local v0, "isExceedingBTLimit":Z
    if-eqz v0, :cond_1

    .line 2711
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2712
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wifi Direct connection not available."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$6;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$6;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$6;->val$deviceId:Ljava/lang/String;

    const/16 v4, -0x3ea

    iget v5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$6;->val$from:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$2100(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2719
    :goto_1
    return-void

    .line 2697
    .end local v0    # "isExceedingBTLimit":Z
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wifi P2p Connection fail. Wifi P2p connection busy again."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2700
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wifi P2p Connection fail. Wifi P2p connection timeout again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2703
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wifi P2p Connection fail. Wifi P2p connection error again."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2716
    .restart local v0    # "isExceedingBTLimit":Z
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1802(Z)Z

    .line 2717
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$6;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$6;->val$filePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$6;->val$deviceId:Ljava/lang/String;

    const/16 v4, 0x2000

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendFileToRemotePeer(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 2693
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
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

    .line 2683
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wifi P2p Connection Success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1702(Z)Z

    .line 2685
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$6;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$6;->val$filePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->mInstallFilePath:Ljava/lang/String;

    .line 2686
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1802(Z)Z

    .line 2687
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$6;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$6;->val$deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->findPeers(Ljava/lang/String;)V

    .line 2688
    return-void
.end method
