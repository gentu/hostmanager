.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$7;
.super Lcom/samsung/android/hostmanager/aidl/ConnectListener$Stub;
.source "HMSAPProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->installAppViaForceWifiDirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

.field final synthetic val$appPath:Ljava/lang/String;

.field final synthetic val$consumerAppPackageName:Ljava/lang/String;

.field final synthetic val$deviceId:Ljava/lang/String;

.field final synthetic val$from:I


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .prologue
    .line 2731
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$7;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$7;->val$appPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$7;->val$deviceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$7;->val$consumerAppPackageName:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$7;->val$from:I

    invoke-direct {p0}, Lcom/samsung/android/hostmanager/aidl/ConnectListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2762
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 2763
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wifi P2p Connection fail. Wifi P2p is not avaialable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2770
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wifi Direct connection not available."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2772
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$7;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$7;->val$consumerAppPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$7;->val$deviceId:Ljava/lang/String;

    const/16 v3, -0x3ea

    iget v4, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$7;->val$from:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$2100(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2773
    return-void

    .line 2764
    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    .line 2765
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wifi P2p Connection timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2766
    :cond_3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 2767
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wifi P2p Connection error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
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

    .line 2734
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wifi P2p Connection Success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1702(Z)Z

    .line 2736
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1802(Z)Z

    .line 2737
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$7;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$7;->val$appPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->mInstallFilePath:Ljava/lang/String;

    .line 2738
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$7;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$7;->val$deviceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->mDeviceId:Ljava/lang/String;

    .line 2754
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$7;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$7;->val$deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->findPeers(Ljava/lang/String;)V

    .line 2756
    return-void
.end method
