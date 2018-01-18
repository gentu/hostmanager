.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$DemoSyncHandler;
.super Landroid/os/Handler;
.source "HMSAPProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DemoSyncHandler"
.end annotation


# instance fields
.field private final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/hostmanager/service/HMSAPProviderService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)V
    .locals 1
    .param p1, "service"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .prologue
    .line 16901
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 16902
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$DemoSyncHandler;->mService:Ljava/lang/ref/WeakReference;

    .line 16903
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 16907
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 16909
    iget-object v9, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$DemoSyncHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .line 16911
    .local v6, "service":Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 16953
    :goto_0
    return-void

    .line 16913
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mDemoSyncHandler :: GlobalConst.SYNC_IDLE_CLOCK"

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16914
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 16915
    .local v1, "b":Landroid/os/Bundle;
    const-string v9, "packageName"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 16916
    .local v4, "clockPackageName":Ljava/lang/String;
    const-string v9, "DEVICEID"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16917
    .local v5, "deviceID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IDLE_CLOCK = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16919
    invoke-virtual {v6, v4, v5}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendClockChangeOrder(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16929
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v4    # "clockPackageName":Ljava/lang/String;
    .end local v5    # "deviceID":Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mDemoSyncHandler :: GlobalConst.SYNC_FAVORITE_LIST"

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16931
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 16932
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v9, "deviceId"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16934
    .restart local v5    # "deviceID":Ljava/lang/String;
    invoke-virtual {v6, v5}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendFavoritesChangeOrder(Ljava/lang/String;)V

    goto :goto_0

    .line 16939
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "deviceID":Ljava/lang/String;
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mDemoSyncHandler :: GlobalConst.SYNC_SETTING_LIST"

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16940
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 16941
    .local v2, "bSetting":Landroid/os/Bundle;
    const-string v9, "DEVICEID"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16942
    .restart local v5    # "deviceID":Ljava/lang/String;
    const-string v9, "smartrelay"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 16943
    .local v7, "smartData":Ljava/lang/String;
    const-string v9, "wakeupbygesture"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 16944
    .local v8, "wakeUpData":Ljava/lang/String;
    const-string v9, "powerkeydoublepressing"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16945
    .local v0, "PDPressData":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SmartRelay = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", wakeUpData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", PDPressData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16947
    invoke-virtual {v6, v5, v7}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updateSmartRelay(Ljava/lang/String;Ljava/lang/String;)Z

    .line 16948
    invoke-virtual {v6, v5, v8}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updateWakeupByGesture(Ljava/lang/String;Ljava/lang/String;)Z

    .line 16949
    invoke-virtual {v6, v5, v0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendPowerKeyDoublePressing(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 16911
    nop

    :pswitch_data_0
    .packed-switch 0x1771
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
