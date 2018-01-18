.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;
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
    .line 1497
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 43
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1501
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "action = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 1504
    .local v5, "action":Ljava/lang/String;
    const-string v39, "plugin"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1505
    .local v30, "pluginName":Ljava/lang/String;
    if-eqz v5, :cond_22

    .line 1506
    const-string v39, "Change_Token_Mode"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_3

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->FixedToken:Z

    move/from16 v39, v0

    if-nez v39, :cond_1

    const/16 v39, 0x1

    :goto_0
    move/from16 v0, v39

    move-object/from16 v1, v40

    iput-boolean v0, v1, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->FixedToken:Z

    .line 1508
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "SCS::Change Token mode to "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->FixedToken:Z

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->FixedToken:Z

    move/from16 v39, v0

    if-eqz v39, :cond_2

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getBaseContext()Landroid/content/Context;

    move-result-object v39

    const-string v40, "Change Token mode - use Test Token"

    const/16 v41, 0x0

    invoke-static/range {v39 .. v41}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/widget/Toast;->show()V

    .line 1767
    :cond_0
    :goto_1
    return-void

    .line 1507
    :cond_1
    const/16 v39, 0x0

    goto :goto_0

    .line 1512
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getBaseContext()Landroid/content/Context;

    move-result-object v39

    const-string v40, "Change Token mode - use Commercial Token "

    const/16 v41, 0x0

    invoke-static/range {v39 .. v41}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1517
    :cond_3
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "G1G2switch:: HMSAPProviderService receive action = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    const-string v39, "com.samsung.android.plugin.ACTION_PLUGIN_CHANGE_NOTI"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_4

    .line 1519
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "G1G2switch::pluginName = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    const-string v39, "Gear1"

    move-object/from16 v0, v39

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_0

    .line 1521
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    const-string v40, "G1G2switch::HMSAPProviderService is Stop!!"

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->stopSelf()V

    goto :goto_1

    .line 1524
    :cond_4
    const-string v39, "com.samsung.android.watchmanager.ACTION_HM_REQUEST_DISCONNECT"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_7

    .line 1525
    const-string v39, "device_address"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1526
    .local v14, "deviceid":Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 1528
    const-string v39, "request_app_package_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_5

    .line 1529
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Disconnect is requsted from ("

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "request_app_package_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ")."

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    :goto_2
    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Lcom/samsung/android/hostmanager/service/IUHostManager;->isConnectedWithCM(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_6

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->disconnectDevice(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1531
    :cond_5
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    const-string v40, "Disconnect is requsted from Unknown...It may be tUHM."

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1537
    :cond_6
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Gear("

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ") is already disconnected state."

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    new-instance v36, Landroid/content/Intent;

    const-string v39, "com.samsung.android.watchmanager.ACTION_BROADCAST_HM_BACKUP_COMPLETE"

    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1539
    .local v36, "uhmIntent":Landroid/content/Intent;
    const-string v39, "com.samsung.android.hostmanager.permission.ACCESS_UNIFIED_HOST_MANAGER"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1544
    .end local v14    # "deviceid":Ljava/lang/String;
    .end local v36    # "uhmIntent":Landroid/content/Intent;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v39

    const-string v40, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_8

    .line 1547
    const-string v39, "dual_clock_city_pref"

    const/16 v40, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 1548
    .local v31, "pref":Landroid/content/SharedPreferences;
    const-string v39, "uniqueid"

    const/16 v40, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v37

    .line 1549
    .local v37, "uniqueid":I
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "onReceive()  android.intent.action.LOCALE_CHANGED   uniqueid = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    const/16 v39, -0x1

    move/from16 v0, v37

    move/from16 v1, v39

    if-eq v0, v1, :cond_0

    .line 1551
    new-instance v18, Landroid/content/Intent;

    const-string v39, "watchdualclock.request.CITYINFO"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1552
    .local v18, "i":Landroid/content/Intent;
    const-string v39, "uniqueid"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1553
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1557
    .end local v18    # "i":Landroid/content/Intent;
    .end local v31    # "pref":Landroid/content/SharedPreferences;
    .end local v37    # "uniqueid":I
    :cond_8
    const-string v39, "watchdualclock.response.CITYINFO"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_9

    .line 1559
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 1560
    .local v9, "data":Landroid/os/Bundle;
    if-eqz v9, :cond_0

    .line 1561
    const-string v39, "uniqueid"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v37

    .line 1562
    .restart local v37    # "uniqueid":I
    const-string v39, "cityname"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1563
    .local v6, "cityname":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "onReceive()  watchdualclock.response.CITYINFO  cityname = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", uniqueid = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    const-string v39, "dual_clock_city_pref"

    const/16 v40, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 1566
    .restart local v31    # "pref":Landroid/content/SharedPreferences;
    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 1567
    .local v16, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v39, "cityname"

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1568
    const-string v39, "uniqueid"

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    move/from16 v2, v37

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1569
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 1573
    .end local v6    # "cityname":Ljava/lang/String;
    .end local v9    # "data":Landroid/os/Bundle;
    .end local v16    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v31    # "pref":Landroid/content/SharedPreferences;
    .end local v37    # "uniqueid":I
    :cond_9
    const-string v39, "watchdualclock.WATCH_DUALCLOCK_SETTINGINFO"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_a

    .line 1579
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 1580
    .restart local v9    # "data":Landroid/os/Bundle;
    if-eqz v9, :cond_0

    .line 1581
    const-string v39, "cityname"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1582
    .restart local v6    # "cityname":Ljava/lang/String;
    const-string v39, "uniqueid"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v37

    .line 1583
    .restart local v37    # "uniqueid":I
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "onReceive watchdualclock.WATCH_DUALCLOCK_SETTINGINFO  cityname = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", uniqueid = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    const-string v39, "dual_clock_city_pref"

    const/16 v40, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 1587
    .restart local v31    # "pref":Landroid/content/SharedPreferences;
    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 1588
    .restart local v16    # "edit":Landroid/content/SharedPreferences$Editor;
    const-string v39, "cityname"

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1589
    const-string v39, "uniqueid"

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    move/from16 v2, v37

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1590
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 1592
    .end local v6    # "cityname":Ljava/lang/String;
    .end local v9    # "data":Landroid/os/Bundle;
    .end local v16    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v31    # "pref":Landroid/content/SharedPreferences;
    .end local v37    # "uniqueid":I
    :cond_a
    const-string v39, "android.intent.action.PACKAGE_DATA_CLEARED"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_b

    .line 1593
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    const-string v40, "Intent.ACTION_PACKAGE_DATA_CLEARED   Broadcast Received..!!"

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1595
    :cond_b
    const-string v39, "com.samsung. android.neckletplugin.NECKLET_CONNECTED"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_c

    .line 1596
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    const-string v40, "Action = com.samsung. android.neckletplugin.NECKLET_CONNECTED"

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1100(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 1598
    .local v10, "deviceAddress":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v39

    const-string v40, "Gear"

    invoke-virtual/range {v39 .. v40}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getConnectedDeviceIdByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1599
    .local v17, "gearDeviceID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    const-string v40, "Gear Circle"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v17

    invoke-virtual {v0, v10, v1, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendAutoPairingRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1600
    .end local v10    # "deviceAddress":Ljava/lang/String;
    .end local v17    # "gearDeviceID":Ljava/lang/String;
    :cond_c
    const-string v39, "com.samsung.android.necklet.service.STATE_CHANGE"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_e

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1100(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    .line 1602
    .local v29, "neckletBTAddress":Ljava/lang/String;
    const-string v39, "circle_wearing_detection"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_d

    .line 1603
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    const-string v40, "Action = com.samsung.android.necklet.service.STATE_CHANGE, doesn\'t have circle_wearing_detection..."

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1606
    :cond_d
    const-string v39, "circle_wearing_detection"

    const/16 v40, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 1607
    .local v38, "wearingValue":I
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Action = com.samsung.android.necklet.service.STATE_CHANGE, value = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendCircleWeaingStateToGear(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1609
    .end local v29    # "neckletBTAddress":Ljava/lang/String;
    .end local v38    # "wearingValue":I
    :cond_e
    const-string v39, "com.samsung.android.hostmanager.action.WORDS_COPY_DONE"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_17

    .line 1610
    const-string v39, "isSIPLmFileExsts"

    const/16 v40, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 1611
    .local v21, "isSIPLmFileExsts":Z
    const-string v39, "isSIPJsonFileExists"

    const/16 v40, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 1613
    .local v20, "isSIPJsonFileExists":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "WordsTransfer::onReceive() com.samsung.android.hostmanager.action.WORDS_COPY_DONE. , isSIPLmFileExsts="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", isSIPJsonFileExists="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    if-eqz v21, :cond_f

    if-nez v21, :cond_10

    .line 1617
    :cond_f
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v39

    const-string v40, "Gear"

    invoke-virtual/range {v39 .. v40}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getConnectedDeviceIdByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1618
    .restart local v17    # "gearDeviceID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    const-string v40, "failure"

    const/16 v41, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, v17

    move-object/from16 v2, v40

    move/from16 v3, v41

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1200(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1623
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    const-string v40, "Calling StopService for WordTransfer"

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    new-instance v40, Landroid/content/Intent;

    const-string v41, "com.samsung.android.hostmanager.action.EVT_WORDS_TRANSFER_REQUEST"

    invoke-direct/range {v40 .. v41}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v40}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 1629
    .end local v17    # "gearDeviceID":Ljava/lang/String;
    :cond_10
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v39

    const-string v40, "Gear"

    invoke-virtual/range {v39 .. v40}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getConnectedDeviceIdByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1630
    .local v13, "deviceType":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "/"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "/app_SwiftKey"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1631
    .local v35, "swiftHMStoragePath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1633
    .local v8, "cr":Landroid/content/ContentResolver;
    new-instance v34, Ljava/io/File;

    invoke-direct/range {v34 .. v35}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1634
    .local v34, "swiftFileDir":Ljava/io/File;
    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->exists()Z

    move-result v39

    if-nez v39, :cond_11

    .line 1635
    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->mkdir()Z

    move-result v19

    .line 1636
    .local v19, "isCreated":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v40

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "WordsTransfer::onReceive() "

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v41, " directory creation "

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    if-eqz v19, :cond_13

    const-string v39, "Success"

    :goto_3
    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    .end local v19    # "isCreated":Z
    :cond_11
    const-string v39, "content://com.samsung.android.app.wordstransfer/swift/dynamic.lm"

    invoke-static/range {v39 .. v39}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    .line 1641
    .local v28, "lmUri":Landroid/net/Uri;
    const/16 v27, 0x0

    .line 1643
    .local v27, "lmPdf":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v39, "r"

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v27

    .line 1649
    :goto_4
    if-eqz v27, :cond_14

    .line 1650
    invoke-virtual/range {v27 .. v27}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v26

    .line 1651
    .local v26, "lmFileDesc":Ljava/io/FileDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "/dynamic.lm"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1300(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/io/FileDescriptor;Ljava/lang/String;)Z

    .line 1653
    :try_start_1
    invoke-virtual/range {v27 .. v27}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1657
    :goto_5
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "WordsTransfer::onReceive() dynamic.lm copy done To HM. "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "/dynamic.lm ========================"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    .end local v26    # "lmFileDesc":Ljava/io/FileDescriptor;
    :goto_6
    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->exists()Z

    move-result v39

    if-nez v39, :cond_12

    .line 1664
    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->mkdir()Z

    move-result v19

    .line 1665
    .restart local v19    # "isCreated":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v40

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "WordsTransfer::onReceive() "

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v41, " directory creation "

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    if-eqz v19, :cond_15

    const-string v39, "Success"

    :goto_7
    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    .end local v19    # "isCreated":Z
    :cond_12
    const-string v39, "content://com.samsung.android.app.wordstransfer/swift/learned.json"

    invoke-static/range {v39 .. v39}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 1670
    .local v25, "jsonUri":Landroid/net/Uri;
    const/16 v24, 0x0

    .line 1672
    .local v24, "jsonPdf":Landroid/os/ParcelFileDescriptor;
    :try_start_2
    const-string v39, "r"

    move-object/from16 v0, v25

    move-object/from16 v1, v39

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v24

    .line 1678
    :goto_8
    if-eqz v24, :cond_16

    .line 1679
    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v23

    .line 1680
    .local v23, "jsonFileDesc":Ljava/io/FileDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "/learned.json"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v23

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1300(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/io/FileDescriptor;Ljava/lang/String;)Z

    .line 1682
    :try_start_3
    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1686
    :goto_9
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "WordsTransfer::onReceive() learned.json copy done in "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "/learned.json ========================"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    .end local v23    # "jsonFileDesc":Ljava/io/FileDescriptor;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "/dynamic.lm"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v41

    const-string v42, "Gear"

    .line 1693
    invoke-virtual/range {v41 .. v42}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getConnectedDeviceIdByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1692
    invoke-virtual/range {v39 .. v41}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendIMEFileReqMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    const-string v40, "Calling StopService for WordTransfer"

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    new-instance v40, Landroid/content/Intent;

    const-string v41, "com.samsung.android.hostmanager.action.EVT_WORDS_TRANSFER_REQUEST"

    invoke-direct/range {v40 .. v41}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v40}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 1636
    .end local v24    # "jsonPdf":Landroid/os/ParcelFileDescriptor;
    .end local v25    # "jsonUri":Landroid/net/Uri;
    .end local v27    # "lmPdf":Landroid/os/ParcelFileDescriptor;
    .end local v28    # "lmUri":Landroid/net/Uri;
    .restart local v19    # "isCreated":Z
    :cond_13
    const-string v39, "Failed"

    goto/16 :goto_3

    .line 1644
    .end local v19    # "isCreated":Z
    .restart local v27    # "lmPdf":Landroid/os/ParcelFileDescriptor;
    .restart local v28    # "lmUri":Landroid/net/Uri;
    :catch_0
    move-exception v15

    .line 1646
    .local v15, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v15}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 1654
    .end local v15    # "e":Ljava/io/FileNotFoundException;
    .restart local v26    # "lmFileDesc":Ljava/io/FileDescriptor;
    :catch_1
    move-exception v15

    .line 1655
    .local v15, "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 1660
    .end local v15    # "e":Ljava/io/IOException;
    .end local v26    # "lmFileDesc":Ljava/io/FileDescriptor;
    :cond_14
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    const-string v40, "WordsTransfer::onReceive() lmPdf is Null ====================="

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1665
    .restart local v19    # "isCreated":Z
    :cond_15
    const-string v39, "Failed"

    goto/16 :goto_7

    .line 1673
    .end local v19    # "isCreated":Z
    .restart local v24    # "jsonPdf":Landroid/os/ParcelFileDescriptor;
    .restart local v25    # "jsonUri":Landroid/net/Uri;
    :catch_2
    move-exception v15

    .line 1675
    .local v15, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v15}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_8

    .line 1683
    .end local v15    # "e":Ljava/io/FileNotFoundException;
    .restart local v23    # "jsonFileDesc":Ljava/io/FileDescriptor;
    :catch_3
    move-exception v15

    .line 1684
    .local v15, "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 1689
    .end local v15    # "e":Ljava/io/IOException;
    .end local v23    # "jsonFileDesc":Ljava/io/FileDescriptor;
    :cond_16
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    const-string v40, "WordsTransfer::onReceive() jsonPdf is Null  ========================"

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1697
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v13    # "deviceType":Ljava/lang/String;
    .end local v20    # "isSIPJsonFileExists":Z
    .end local v21    # "isSIPLmFileExsts":Z
    .end local v24    # "jsonPdf":Landroid/os/ParcelFileDescriptor;
    .end local v25    # "jsonUri":Landroid/net/Uri;
    .end local v27    # "lmPdf":Landroid/os/ParcelFileDescriptor;
    .end local v28    # "lmUri":Landroid/net/Uri;
    .end local v34    # "swiftFileDir":Ljava/io/File;
    .end local v35    # "swiftHMStoragePath":Ljava/lang/String;
    :cond_17
    const-string v39, "android.intent.action.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1f

    .line 1699
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1400()Lcom/samsung/android/hostmanager/connection/IWSocketManager;

    move-result-object v39

    if-eqz v39, :cond_1e

    .line 1700
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1400()Lcom/samsung/android/hostmanager/connection/IWSocketManager;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Lcom/samsung/android/hostmanager/connection/IWSocketManager;->getSASockets()Ljava/util/Map;

    move-result-object v33

    .line 1701
    .local v33, "sockets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    if-eqz v33, :cond_1d

    .line 1702
    invoke-interface/range {v33 .. v33}, Ljava/util/Map;->size()I

    move-result v39

    if-lez v39, :cond_1c

    .line 1704
    :try_start_4
    invoke-interface/range {v33 .. v33}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :cond_18
    :goto_b
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_0

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/Map$Entry;

    .line 1705
    .local v32, "socket":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-virtual/range {v39 .. v39}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isSendingUserInfo()Z

    move-result v39

    if-nez v39, :cond_1b

    .line 1706
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-virtual/range {v39 .. v39}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getDeviceBTAddress()Ljava/lang/String;

    move-result-object v11

    .line 1707
    .local v11, "deviceID":Ljava/lang/String;
    if-eqz v11, :cond_18

    .line 1708
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "user::onreceive android.intent.action.SAMSUNGACCOUNT_SIGNIN_COMPLETED():: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    const-string v39, "scs"

    move-object/from16 v0, v39

    invoke-static {v11, v0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isSupportFeatureWearable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_19

    .line 1711
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "user::["

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "] is supportable for SCS. skip this action."

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 1732
    .end local v11    # "deviceID":Ljava/lang/String;
    .end local v32    # "socket":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    :catch_4
    move-exception v15

    .line 1733
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1714
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v11    # "deviceID":Ljava/lang/String;
    .restart local v32    # "socket":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    :cond_19
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    const-string v41, "user_data_setting_value"

    const/16 v42, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1716
    .local v4, "Pref":Landroid/content/SharedPreferences;
    if-eqz v4, :cond_1a

    .line 1717
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v4, v11, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 1718
    .local v22, "isSentData":Z
    if-eqz v22, :cond_1a

    .line 1719
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "user:: android.intent.action.SAMSUNGACCOUNT_SIGNIN_COMPLETED() "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " is already sent userdata"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1724
    .end local v22    # "isSentData":Z
    :cond_1a
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    const-string v41, "user:: android.intent.action.SAMSUNGACCOUNT_SIGNIN_COMPLETED() sendUserData()"

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-static {v0, v11}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1500(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1728
    .end local v4    # "Pref":Landroid/content/SharedPreferences;
    .end local v11    # "deviceID":Ljava/lang/String;
    :cond_1b
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v41

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "user:: android.intent.action.SAMSUNGACCOUNT_SIGNIN_COMPLETED() device is sending "

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    .line 1729
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-virtual/range {v39 .. v39}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getDeviceBTAddress()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1728
    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_b

    .line 1737
    .end local v32    # "socket":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    :cond_1c
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    const-string v40, "user:: android.intent.action.SAMSUNGACCOUNT_SIGNIN_COMPLETED() sockets.size() is null"

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1740
    :cond_1d
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    const-string v40, "user:: android.intent.action.SAMSUNGACCOUNT_SIGNIN_COMPLETED() sockets is null"

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1743
    .end local v33    # "sockets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    :cond_1e
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    const-string v40, "user:: android.intent.action.SAMSUNGACCOUNT_SIGNIN_COMPLETED() mConnectionManager is null"

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1745
    :cond_1f
    const-string v39, "com.samsung.android.uhm.db.CONNECTION_UPDATED"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_21

    .line 1746
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    const-string v40, "Action = com.samsung.android.uhm.db.CONNECTION_UPDATED"

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    const-string v39, "conntected"

    const/16 v40, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1748
    .local v7, "connectedState":I
    const-string v39, "deviceId"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1750
    .restart local v11    # "deviceID":Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1752
    .local v12, "deviceName":Ljava/lang/String;
    if-eqz v12, :cond_0

    const-string v39, "Gear Circle"

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v39

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_0

    .line 1753
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Gear Circle\'s DB is changed. connected state = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    const/16 v39, 0x1

    move/from16 v0, v39

    if-ne v7, v0, :cond_20

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendCircleConnectedMessageToGear(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1756
    :cond_20
    const/16 v39, 0x2

    move/from16 v0, v39

    if-ne v7, v0, :cond_0

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$2;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendCircleConnectedMessageToGear(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1762
    .end local v7    # "connectedState":I
    .end local v11    # "deviceID":Ljava/lang/String;
    .end local v12    # "deviceName":Ljava/lang/String;
    :cond_21
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "onReceive() Unknown action: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1765
    :cond_22
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v39

    const-string v40, "onReceive() Invalid action."

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
