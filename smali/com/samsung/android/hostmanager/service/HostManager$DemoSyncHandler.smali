.class Lcom/samsung/android/hostmanager/service/HostManager$DemoSyncHandler;
.super Landroid/os/Handler;
.source "HostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HostManager;
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
            "Lcom/samsung/android/hostmanager/service/HostManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/service/HostManager;)V
    .locals 1
    .param p1, "service"    # Lcom/samsung/android/hostmanager/service/HostManager;

    .prologue
    .line 2259
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2260
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager$DemoSyncHandler;->mService:Ljava/lang/ref/WeakReference;

    .line 2261
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2265
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2267
    iget-object v9, p0, Lcom/samsung/android/hostmanager/service/HostManager$DemoSyncHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/hostmanager/service/HostManager;

    .line 2268
    .local v6, "service":Lcom/samsung/android/hostmanager/service/HostManager;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2269
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v9, "deviceId"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2270
    .local v5, "deviceID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mDemoSyncHandler handleMessage() msg.what = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", deviceID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 2303
    :goto_0
    return-void

    .line 2274
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mDemoSyncHandler :: GlobalConst.SYNC_IDLE_CLOCK"

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 2276
    .local v1, "b":Landroid/os/Bundle;
    const-string v9, "packageName"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2277
    .local v4, "clockPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

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

    .line 2279
    iget-object v9, v6, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v9, v4, v5}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendClockChangeOrder(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2284
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v4    # "clockPackageName":Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mDemoSyncHandler :: GlobalConst.SYNC_FAVORITE_LIST"

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    iget-object v9, v6, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v9, v5}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendFavoritesChangeOrder(Ljava/lang/String;)V

    goto :goto_0

    .line 2290
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mDemoSyncHandler :: GlobalConst.SYNC_SETTING_LIST"

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2292
    .local v2, "bSetting":Landroid/os/Bundle;
    const-string v9, "smartrelay"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2293
    .local v7, "smartData":Ljava/lang/String;
    const-string v9, "wakeupbygesture"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2294
    .local v8, "wakeUpData":Ljava/lang/String;
    const-string v9, "powerkeydoublepressing"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2295
    .local v0, "PDPressData":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

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

    .line 2297
    iget-object v9, v6, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v9, v5, v7}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updateSmartRelay(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2298
    iget-object v9, v6, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v9, v5, v8}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updateWakeupByGesture(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2299
    iget-object v9, v6, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v9, v5, v0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendPowerKeyDoublePressing(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2272
    nop

    :pswitch_data_0
    .packed-switch 0x1771
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
