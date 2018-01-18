.class public Lcom/samsung/android/hostmanager/callforward/CallForwardSimChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallForwardSimChangedReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/samsung/android/hostmanager/callforward/CallForwardSimChangedReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardSimChangedReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "action":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/hostmanager/callforward/CallForwardSimChangedReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive() - action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    if-eqz v0, :cond_1

    .line 24
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 25
    sget-object v5, Lcom/samsung/android/hostmanager/callforward/CallForwardSimChangedReceiver;->TAG:Ljava/lang/String;

    const-string v6, "Sim is changed."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v5

    const-string v6, "Gear"

    invoke-virtual {v5, v6}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getConnectedDeviceIdByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "deviceID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/samsung/android/hostmanager/service/IUHostManager;->handleWearableConnected(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 32
    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendUpdateSimInfoReq(Ljava/lang/String;)V

    .line 36
    :cond_0
    new-instance v3, Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;

    invoke-direct {v3}, Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;-><init>()V

    .line 37
    .local v3, "mHMSetupHandler":Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v1, "bundle":Landroid/os/Bundle;
    const/16 v5, 0xfcf

    invoke-virtual {v3, v5}, Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 39
    .local v4, "msg":Landroid/os/Message;
    const-string v5, "deviceId"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v4, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 44
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "deviceID":Ljava/lang/String;
    .end local v3    # "mHMSetupHandler":Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method
