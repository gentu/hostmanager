.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$3;
.super Landroid/content/BroadcastReceiver;
.source "HMSAPProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .prologue
    .line 1805
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$3;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1808
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCS::mSASignOutReceiver action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1811
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.REGISTRATION_CANCELED"

    .line 1812
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1816
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$3;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->requestTokenFromUI(Ljava/lang/String;Z)V

    .line 1818
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$3;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const-string v2, "false"

    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v3

    const-string v4, "Gear"

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getConnectedDeviceIdByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonAutoCFDValueReqMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v2

    const-string v3, "Gear"

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getConnectedDeviceIdByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$3;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->mCallForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->doDisableCallForwardingModemIsOff(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;)V

    .line 1823
    :cond_1
    return-void
.end method
