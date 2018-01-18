.class Lcom/samsung/android/hostmanager/service/HostManager$4;
.super Landroid/database/ContentObserver;
.source "HostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HostManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HostManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HostManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HostManager$4;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    .line 592
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connectedWearableContentObserver :: onChange = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const/4 v0, 0x0

    .line 595
    .local v0, "connectedWearable":Ljava/lang/String;
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_2

    .line 596
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 597
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HostManager$4;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HostManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "connected_wearable"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 608
    :goto_0
    const-string v4, "CrossConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connected wearable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 610
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gear"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 611
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HostManager$4;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetAllBondedWearableDevices()Ljava/util/ArrayList;

    move-result-object v2

    .line 612
    .local v2, "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;>;"
    if-eqz v2, :cond_4

    .line 613
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;

    .line 614
    .local v1, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HostManager$4;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/hostmanager/service/HostManager;->isConnected(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 615
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Another device trying to connect. ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is disconnecting."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HostManager$4;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/hostmanager/service/HostManager;->startManageConnectionInfo(Ljava/lang/String;I)I

    goto :goto_1

    .line 599
    .end local v1    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;
    .end local v2    # "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HostManager$4;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HostManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "connected_wearable"

    invoke-static {v4, v5}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 602
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HostManager$4;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HostManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "connected_wearable"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 604
    :catch_0
    move-exception v3

    .line 605
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v3}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 617
    .end local v3    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v1    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;
    .restart local v2    # "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;>;"
    :cond_3
    const-string v5, "Wingtip"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 618
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HostManager$4;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/service/HostManager;->access$300(Lcom/samsung/android/hostmanager/service/HostManager;)Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->shutdown()Z

    goto :goto_1

    .line 624
    .end local v1    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;
    .end local v2    # "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;>;"
    :cond_4
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 625
    return-void
.end method
