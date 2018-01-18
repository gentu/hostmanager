.class Lcom/samsung/android/hostmanager/pm/GearPackageManager$1;
.super Landroid/content/BroadcastReceiver;
.source "GearPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/pm/GearPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/pm/GearPackageManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/pm/GearPackageManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/pm/GearPackageManager;

    .prologue
    .line 2595
    iput-object p1, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$1;->this$0:Lcom/samsung/android/hostmanager/pm/GearPackageManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2599
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PMResultReceiver::onReceive()-->"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    if-eqz p2, :cond_2

    .line 2602
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2603
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v10, "com.samsung.android.hostmanager.UNKNOWN_SOURCE_RESULT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2604
    const-string v10, "h_packageName"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2605
    .local v4, "hPackageName":Ljava/lang/String;
    const-string v10, "deviceID"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2607
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown source broadcast received  in backend, for hPackageName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    const-string v10, "result"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2609
    .local v9, "result":I
    if-eqz v4, :cond_4

    .line 2610
    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 2611
    iget-object v10, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$1;->this$0:Lcom/samsung/android/hostmanager/pm/GearPackageManager;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v10, v1, v4, v11, v12}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->access$200(Lcom/samsung/android/hostmanager/pm/GearPackageManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2619
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->access$300()Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 2620
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->access$300()Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 2623
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->access$400()Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 2624
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->access$400()Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 2628
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->access$300()Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 2629
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->access$300()Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2630
    .local v5, "hPackagePending":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->access$400()Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2631
    .local v6, "hPendingDeviceId":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UnknownSources: There\'s another pending install. Show dialog for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    iget-object v10, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$1;->this$0:Lcom/samsung/android/hostmanager/pm/GearPackageManager;

    invoke-static {v10, v5, v6}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->access$500(Lcom/samsung/android/hostmanager/pm/GearPackageManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 2655
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "deviceId":Ljava/lang/String;
    .end local v4    # "hPackageName":Ljava/lang/String;
    .end local v5    # "hPackagePending":Ljava/lang/String;
    .end local v6    # "hPendingDeviceId":Ljava/lang/String;
    .end local v9    # "result":I
    :cond_2
    :goto_1
    return-void

    .line 2613
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "deviceId":Ljava/lang/String;
    .restart local v4    # "hPackageName":Ljava/lang/String;
    .restart local v9    # "result":I
    :cond_3
    iget-object v10, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$1;->this$0:Lcom/samsung/android/hostmanager/pm/GearPackageManager;

    invoke-virtual {v10, v4}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->removeProviderApp(Ljava/lang/String;)V

    goto :goto_0

    .line 2616
    :cond_4
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UnknownSources: Error while handling user interaction, H package name is null."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2634
    .end local v1    # "deviceId":Ljava/lang/String;
    .end local v4    # "hPackageName":Ljava/lang/String;
    .end local v9    # "result":I
    :cond_5
    if-eqz v0, :cond_7

    const-string v10, "com.samsung.android.hostmanager.FORCE_WIFI_DIRECT_INSTALL_RESULT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2635
    const-string v10, "consumer_package_name"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2636
    .local v7, "packageName":Ljava/lang/String;
    const-string v10, "force_wifi_install_deviceId"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2637
    .restart local v1    # "deviceId":Ljava/lang/String;
    const-string v10, "result"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2638
    .restart local v9    # "result":I
    const-string v10, "from"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2640
    .local v3, "from":I
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Wifi Direct result broadcast received in backend, for packageName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", result"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", from"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 2643
    iget-object v10, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$1;->this$0:Lcom/samsung/android/hostmanager/pm/GearPackageManager;

    invoke-static {v10}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->access$600(Lcom/samsung/android/hostmanager/pm/GearPackageManager;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "dummy_apk_installed"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 2644
    .local v8, "prefs":Landroid/content/SharedPreferences;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_filepath"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "empty"

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2645
    .local v2, "filePath":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$1;->this$0:Lcom/samsung/android/hostmanager/pm/GearPackageManager;

    invoke-static {v10}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->access$700(Lcom/samsung/android/hostmanager/pm/GearPackageManager;)Lcom/samsung/android/hostmanager/pm/AppInstaller;

    move-result-object v10

    invoke-virtual {v10, v1, v2, v7, v3}, Lcom/samsung/android/hostmanager/pm/AppInstaller;->installAppViaForceWifiDirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2647
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    :cond_6
    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 2649
    iget-object v10, p0, Lcom/samsung/android/hostmanager/pm/GearPackageManager$1;->this$0:Lcom/samsung/android/hostmanager/pm/GearPackageManager;

    invoke-virtual {v10, v7, v3}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->handleAppInstallFailForWifiDirect(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2652
    .end local v1    # "deviceId":Ljava/lang/String;
    .end local v3    # "from":I
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "result":I
    :cond_7
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/GearPackageManager;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Invalid action received by PMResultReceiver."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
