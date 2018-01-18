.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$15;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 13660
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$15;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9
    .param p1, "selfChange"    # Z

    .prologue
    .line 13664
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$15;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "date_format"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 13667
    .local v4, "mFormat":Ljava/lang/String;
    const/4 v1, 0x0

    .line 13670
    .local v1, "connectedWearables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;>;"
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$15;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$2600(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v5

    if-nez v5, :cond_0

    .line 13671
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$15;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$2602(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Lcom/samsung/android/hostmanager/service/IUHostManager;)Lcom/samsung/android/hostmanager/service/IUHostManager;

    .line 13673
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$15;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$2600(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 13674
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$15;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$2600(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getConnectedWearableDevices()Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 13679
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 13680
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dateFormatContentObserver  connectedWearables is Null"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13692
    :goto_1
    return-void

    .line 13676
    :catch_0
    move-exception v3

    .line 13677
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 13683
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dateFormatContentObserver... Date format changed. => "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , connectedWearables.size() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 13684
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 13683
    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13686
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;

    .line 13687
    .local v0, "connectedWearable":Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    .line 13688
    .local v2, "deviceID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dateFormatContentObserver deviceID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13689
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$15;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v6, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendDateFormat(Ljava/lang/String;)V

    goto :goto_2

    .line 13691
    .end local v0    # "connectedWearable":Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;
    .end local v2    # "deviceID":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    goto :goto_1
.end method
