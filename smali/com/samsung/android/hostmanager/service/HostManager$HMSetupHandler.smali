.class public Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;
.super Landroid/os/Handler;
.source "HostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HMSetupHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1551
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 53
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1555
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v10, "deviceId"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1557
    .local v23, "deviceId":Ljava/lang/String;
    const/16 v28, 0x0

    .line 1559
    .local v28, "imageData":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1787
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v10}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToApp(Ljava/lang/String;I)V

    .line 1790
    :cond_0
    :goto_0
    :sswitch_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "handler message = "

    move-object/from16 v0, v52

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    return-void

    .line 1561
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v10, "wakeupvalue"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v47

    .line 1562
    .local v47, "returnCode":I
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    move/from16 v1, v47

    invoke-virtual {v2, v0, v10, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithIntData(Ljava/lang/String;II)V

    goto :goto_0

    .line 1565
    .end local v47    # "returnCode":I
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v10, "smartrelayvalue"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v47

    .line 1566
    .restart local v47    # "returnCode":I
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, " returnCode = "

    move-object/from16 v0, v52

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v47

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    move/from16 v1, v47

    invoke-virtual {v2, v0, v10, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithIntData(Ljava/lang/String;II)V

    goto :goto_0

    .line 1570
    .end local v47    # "returnCode":I
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v10, "AppName"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1571
    .local v12, "appName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, " JSON_MESSAGE_CHANGE_SETTING_PDPRESSING_FROM_WEARABLE"

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v10, v12}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithStringData(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1575
    .end local v12    # "appName":Ljava/lang/String;
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v10, "incomingCall"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1576
    .local v29, "incomingCall":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, " JSON_MESSAGE_CHANGE_SETTING_INCOMING_CALL_FROM_WEARABLE"

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v2, v0, v10, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithStringData(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1580
    .end local v29    # "incomingCall":Ljava/lang/String;
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v10, "gearNumber"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1581
    .local v27, "gearNumber":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, " JSON_MESSAGE_CHANGE_SETTING_GEAR_NUMBER_FROM_WEARABLE"

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v2, v0, v10, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithStringData(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1585
    .end local v27    # "gearNumber":Ljava/lang/String;
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v10, "palmOver"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1586
    .local v40, "palmOver":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, " JSON_MESSAGE_CHANGE_SETTING_PALM_MOTION_PALM_OVER_FROM_WEARABLE"

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v2, v0, v10, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithStringData(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1590
    .end local v40    # "palmOver":Ljava/lang/String;
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v10, "palmSwipe"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1591
    .local v41, "palmSwipe":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, " JSON_MESSAGE_CHANGE_SETTING_PALM_MOTION_SWIPE_CAPTURE_FROM_WEARABLE"

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-virtual {v2, v0, v10, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithStringData(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1595
    .end local v41    # "palmSwipe":Ljava/lang/String;
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v10, "callForwarding"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1596
    .local v17, "callForwarding":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, " JSON_MESSAGE_CHANGE_SETTING_CALL_FORWARDING_FROM_WEARABLE"

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v10, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithStringData(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1600
    .end local v17    # "callForwarding":Ljava/lang/String;
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v10, "imageData"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1601
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v10, "clockPkgName"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1602
    .local v18, "clockPkgName":Ljava/lang/String;
    const-string v11, "//clockPkgName//"

    .line 1603
    .local v11, "CLOCKPKGNAME_SEPARATOR":Ljava/lang/String;
    const/16 v50, 0x0

    .line 1604
    .local v50, "strToSend":Ljava/lang/String;
    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "//clockPkgName//"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    .line 1610
    :goto_1
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, " JSON_MESSAGE_CLOCK_PREVIEW_CAPTURE_FROM_WEARABLE  clockPkgName = "

    move-object/from16 v0, v52

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    move-object/from16 v1, v50

    invoke-virtual {v2, v0, v10, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithStringData(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1607
    :cond_1
    move-object/from16 v50, v28

    goto :goto_1

    .line 1621
    .end local v11    # "CLOCKPKGNAME_SEPARATOR":Ljava/lang/String;
    .end local v18    # "clockPkgName":Ljava/lang/String;
    .end local v50    # "strToSend":Ljava/lang/String;
    :sswitch_a
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, " JSON_MESSAGE_CHANGE_MY_APPS_REORDER_FROM_WEARABLE"

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v10}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToApp(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1625
    :sswitch_b
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$500()V

    goto/16 :goto_0

    .line 1629
    :sswitch_c
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$600()V

    goto/16 :goto_0

    .line 1632
    :sswitch_d
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, "handleMessage RESTORE_PROGRESS_UPDATE"

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    .line 1634
    .local v13, "b":Landroid/os/Bundle;
    const-string v2, "desc"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1635
    .local v22, "desc":Ljava/lang/String;
    const-string v2, "progress"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v43

    .line 1636
    .local v43, "progress":I
    const/16 v2, 0x64

    move/from16 v0, v43

    if-lt v0, v2, :cond_2

    .line 1637
    const/16 v43, 0x64

    .line 1639
    :cond_2
    move-object/from16 v0, v22

    move/from16 v1, v43

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/service/HostManager;->access$700(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1643
    .end local v13    # "b":Landroid/os/Bundle;
    .end local v22    # "desc":Ljava/lang/String;
    .end local v43    # "progress":I
    :sswitch_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    .line 1644
    .local v20, "data":Landroid/os/Bundle;
    const-string v2, "bPackageName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1645
    .local v14, "bPackageName":Ljava/lang/String;
    const-string v2, "reson"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    .line 1646
    .local v44, "reson":I
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1647
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, v23

    move/from16 v1, v44

    invoke-virtual {v2, v0, v14, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->onClockUninstallResultReceived(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1649
    :cond_3
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, "mIUHostManager is null."

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1655
    .end local v14    # "bPackageName":Ljava/lang/String;
    .end local v20    # "data":Landroid/os/Bundle;
    .end local v44    # "reson":I
    :sswitch_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    .line 1656
    .restart local v20    # "data":Landroid/os/Bundle;
    const-string v2, "bPackageName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1657
    .restart local v14    # "bPackageName":Ljava/lang/String;
    const-string v2, "reson"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    .line 1658
    .restart local v44    # "reson":I
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1659
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, v23

    move/from16 v1, v44

    invoke-virtual {v2, v0, v14, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->onWappUninstallResultReceived(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1661
    :cond_4
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, "mIUHostManager is null."

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1668
    .end local v14    # "bPackageName":Ljava/lang/String;
    .end local v20    # "data":Landroid/os/Bundle;
    .end local v44    # "reson":I
    :sswitch_10
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, " JSON_MESSAGE_WALLPAPER_CHANGE_RESPONSE_FROM_WEARABLE"

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    const-string v52, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v52

    invoke-virtual {v2, v0, v10, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithStringData(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1674
    :sswitch_11
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, "JSON_MESSAGE_CHANGE_HOMELAYOUT_ORDERTYPE_FROM_WEARABLE"

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v10}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToApp(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1681
    :sswitch_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v16

    .line 1682
    .local v16, "bundle":Landroid/os/Bundle;
    const-string v2, "setting_value"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1683
    .local v48, "setting_value":Ljava/lang/String;
    const-string v2, "errorCode"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1684
    .local v26, "errorCode":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, " JSON_MESSAGE_3G_CONNECTION_VALUE_SET_FROM_WEARABLE. setting_value = "

    move-object/from16 v0, v52

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v48

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v52, ", errorCode = "

    move-object/from16 v0, v52

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    const/16 v21, 0x0

    .line 1688
    .local v21, "dataStr":Ljava/lang/String;
    if-eqz v26, :cond_5

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 1689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "/"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1694
    :goto_2
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v10, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithStringData(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1691
    :cond_5
    move-object/from16 v21, v48

    goto :goto_2

    .line 1697
    .end local v16    # "bundle":Landroid/os/Bundle;
    .end local v21    # "dataStr":Ljava/lang/String;
    .end local v26    # "errorCode":Ljava/lang/String;
    .end local v48    # "setting_value":Ljava/lang/String;
    :sswitch_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    .line 1698
    .local v19, "dat":Landroid/os/Bundle;
    const-string v2, "RESULT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1699
    .local v3, "result":I
    const-string v2, "LATITUDE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 1700
    .local v4, "latitude":D
    const-string v2, "LONGITUDE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 1701
    .local v6, "longitude":D
    const-string v2, "TIME"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1703
    .local v8, "time":J
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "JSON_MESSAGE_RESPONSE_WEARABLE_LOCATION_FROM_WEARABLE result = "

    move-object/from16 v0, v52

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/samsung/android/hostmanager/service/IUHostManager;->onWearableLocationResultReceived(IDDJLjava/lang/String;)V

    goto/16 :goto_0

    .line 1707
    .end local v3    # "result":I
    .end local v4    # "latitude":D
    .end local v6    # "longitude":D
    .end local v8    # "time":J
    .end local v19    # "dat":Landroid/os/Bundle;
    :sswitch_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    .line 1708
    .local v24, "dle":Landroid/os/Bundle;
    const-string v2, "RESULT"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    .line 1709
    .local v46, "retCode":I
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "JSON_MESSAGE_RESPONSE_FIND_MY_WEARABLE_ALERTSTART_FROM_WEARABLE. result = "

    move-object/from16 v0, v52

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v46

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    const/4 v2, 0x2

    move/from16 v0, v46

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    move/from16 v0, v46

    if-ne v0, v2, :cond_0

    .line 1711
    :cond_6
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-virtual {v2, v0, v10, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithIntData(Ljava/lang/String;II)V

    .line 1712
    const/16 v31, 0x0

    .line 1714
    .local v31, "isStartfromWidget":Z
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v10, "searchingCheck"

    invoke-static {v2, v10}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v31

    .line 1718
    :goto_3
    if-eqz v31, :cond_0

    .line 1720
    new-instance v30, Landroid/content/Intent;

    invoke-direct/range {v30 .. v30}, Landroid/content/Intent;-><init>()V

    .line 1721
    .local v30, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.app.watchmanager.widget.fromfindmywatchmenu.STOP"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1722
    const-string v2, "callState"

    const/4 v10, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1723
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$000()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1715
    .end local v30    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v25

    .line 1716
    .local v25, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual/range {v25 .. v25}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 1728
    .end local v24    # "dle":Landroid/os/Bundle;
    .end local v25    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v31    # "isStartfromWidget":Z
    .end local v46    # "retCode":I
    :sswitch_15
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, "JSON_MESSAGE_RESPONSE_FIND_MY_WEARABLE_DEVICE_ACTIVITY_STARTED_FROM_WEARABLE"

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    .line 1730
    .local v15, "bun":Landroid/os/Bundle;
    const-string v2, "RESULT"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1731
    .local v45, "resultToFMG":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    move-object/from16 v1, v45

    invoke-virtual {v2, v0, v10, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithStringData(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1734
    .end local v15    # "bun":Landroid/os/Bundle;
    .end local v45    # "resultToFMG":Ljava/lang/String;
    :sswitch_16
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, "JSON_MESSAGE_RESPONSE_DISABLECALLFORWARDING_FROM_WEARABLE"

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v36

    .line 1736
    .local v36, "mbBundle":Landroid/os/Bundle;
    const-string v2, "RESULT"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1737
    .local v35, "mResult":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v2, v0, v10, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithStringData(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1740
    .end local v35    # "mResult":Ljava/lang/String;
    .end local v36    # "mbBundle":Landroid/os/Bundle;
    :sswitch_17
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, "JSON_MESSAGE_CHANGE_UPS_STATE_FROM_WEARABLE"

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v51

    .line 1742
    .local v51, "upsbundl":Landroid/os/Bundle;
    const-string v2, "state"

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v49

    .line 1743
    .local v49, "state":I
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    move/from16 v1, v49

    invoke-virtual {v2, v0, v10, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithIntData(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 1747
    .end local v49    # "state":I
    .end local v51    # "upsbundl":Landroid/os/Bundle;
    :sswitch_18
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, "JSON_MESSAGE_CHANGE_HOST_LOCATION_FROM_WEARABLE"

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v37

    .line 1749
    .local v37, "mbBundle2":Landroid/os/Bundle;
    const-string v2, "state"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v49

    .line 1750
    .restart local v49    # "state":I
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    move/from16 v1, v49

    invoke-virtual {v2, v0, v10, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithIntData(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 1754
    .end local v37    # "mbBundle2":Landroid/os/Bundle;
    .end local v49    # "state":I
    :sswitch_19
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, "JSON_MESSAGE_STOP_CALLWORWARDING"

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v10}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToApp(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1759
    :sswitch_1a
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, "JSON_MESSAGE_CLOCK_SETTING_CHANGED_FROM_WEARABLE"

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v34

    .line 1761
    .local v34, "mClockSetting":Landroid/os/Bundle;
    const-string v2, "pkgName"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1762
    .local v42, "pkgName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    move-object/from16 v1, v42

    invoke-virtual {v2, v0, v10, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithStringData(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1766
    .end local v34    # "mClockSetting":Landroid/os/Bundle;
    .end local v42    # "pkgName":Ljava/lang/String;
    :sswitch_1b
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, " JSON_MESSAGE_CHANGE_SETTING_MOBILE_NETWORK_FROM_WEARABLE"

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v39

    .line 1768
    .local v39, "mobileNetworkBundle":Landroid/os/Bundle;
    const-string v2, "mobileNetwork"

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v38

    .line 1769
    .local v38, "mobileNetwork":I
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-virtual {v2, v0, v10, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithIntData(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 1773
    .end local v38    # "mobileNetwork":I
    .end local v39    # "mobileNetworkBundle":Landroid/os/Bundle;
    :sswitch_1c
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, " JSON_MESSAGE_FMG_LOCK_GEAR_RESPONSE"

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v32

    .line 1775
    .local v32, "lockGearBundle":Landroid/os/Bundle;
    const-string v2, "RESULT"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1776
    .local v33, "lockGearResult":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v2, v0, v10, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithStringData(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1780
    .end local v32    # "lockGearBundle":Landroid/os/Bundle;
    .end local v33    # "lockGearResult":Ljava/lang/String;
    :sswitch_1d
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v10, " JSON_MESSAGE_FMG_RESET_GEAR_RESPONSE"

    invoke-static {v2, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v32

    .line 1782
    .restart local v32    # "lockGearBundle":Landroid/os/Bundle;
    const-string v2, "RESULT"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1783
    .restart local v33    # "lockGearResult":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$400()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v2, v0, v10, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendWearableRequestToAppWithStringData(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1559
    :sswitch_data_0
    .sparse-switch
        0xfa1 -> :sswitch_2
        0xfa2 -> :sswitch_1
        0xfa4 -> :sswitch_15
        0xfa7 -> :sswitch_a
        0xfa8 -> :sswitch_3
        0xfa9 -> :sswitch_9
        0xfaa -> :sswitch_0
        0xfab -> :sswitch_10
        0xfac -> :sswitch_11
        0xfae -> :sswitch_12
        0xfaf -> :sswitch_13
        0xfb0 -> :sswitch_14
        0xfb1 -> :sswitch_4
        0xfb3 -> :sswitch_8
        0xfb4 -> :sswitch_5
        0xfb5 -> :sswitch_6
        0xfb6 -> :sswitch_7
        0xfb7 -> :sswitch_16
        0xfb9 -> :sswitch_17
        0xfba -> :sswitch_18
        0xfbd -> :sswitch_19
        0xfbe -> :sswitch_1a
        0xfbf -> :sswitch_1b
        0xfc2 -> :sswitch_1c
        0xfc3 -> :sswitch_1d
        0x1771 -> :sswitch_b
        0x1772 -> :sswitch_c
        0x1773 -> :sswitch_e
        0x1774 -> :sswitch_d
        0x1775 -> :sswitch_0
        0x1777 -> :sswitch_f
    .end sparse-switch
.end method
