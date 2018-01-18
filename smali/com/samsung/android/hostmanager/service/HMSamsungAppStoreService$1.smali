.class Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;
.super Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;
.source "HMSamsungAppStoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-direct {p0}, Lcom/samsung/android/aidl/ICheckAppInstallState$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelInstall(Ljava/lang/String;Lcom/samsung/android/aidl/ICancelInstallCallback;)V
    .locals 17
    .param p1, "hPackageName"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/samsung/android/aidl/ICancelInstallCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 718
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "cancelInstall called from samsung apps"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->checkSignatureForBind()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 721
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getGearModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 723
    .local v7, "modelName":Ljava/lang/String;
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 724
    .local v5, "isNew":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "installed_clock_app"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 725
    .local v8, "prefsInstalledClock":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "installed_wapp_app"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 726
    .local v12, "prefsInstalledWapp":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "installed_font_app"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 727
    .local v9, "prefsInstalledFont":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "installed_tts_app"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 728
    .local v11, "prefsInstalledTTSapp":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "installed_ime_app"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 730
    .local v10, "prefsInstalledIMEapp":Landroid/content/SharedPreferences;
    const-string v14, "empty"

    move-object/from16 v0, p1

    invoke-interface {v8, v0, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "empty"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 731
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 744
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pref_log cancelInstall() check pref installed_clock_app, installed_wapp_app (isNew "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 747
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "cancelInstall() this app is not installed on watch, cancel-able"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v13, -0x1

    .line 749
    .local v13, "transferID":I
    const/4 v3, 0x0

    .line 750
    .local v3, "filepath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v14}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 751
    .local v6, "mInstallPackageState_count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 752
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v14}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 753
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v14}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->getTransferID()I

    move-result v13

    .line 754
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "cancelInstall() transfer id = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    if-eqz v13, :cond_7

    const/4 v14, -0x1

    if-eq v13, v14, :cond_7

    .line 756
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v14}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->getFilepath()Ljava/lang/String;

    move-result-object v3

    .line 759
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v14}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$400(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 760
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v14}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$400(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v13, v0}, Lcom/samsung/android/hostmanager/service/ICHostManager;->cancelFileonSending(ILjava/lang/String;)V

    .line 763
    :cond_0
    const/4 v14, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v14}, Lcom/samsung/android/aidl/ICancelInstallCallback;->cancelInstallResult(Ljava/lang/String;I)V

    .line 765
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 766
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 767
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v14

    if-nez v14, :cond_1

    .line 768
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to delete file at: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filepath":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "isNew":Ljava/lang/Boolean;
    .end local v6    # "mInstallPackageState_count":I
    .end local v7    # "modelName":Ljava/lang/String;
    .end local v8    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    .end local v9    # "prefsInstalledFont":Landroid/content/SharedPreferences;
    .end local v10    # "prefsInstalledIMEapp":Landroid/content/SharedPreferences;
    .end local v11    # "prefsInstalledTTSapp":Landroid/content/SharedPreferences;
    .end local v12    # "prefsInstalledWapp":Landroid/content/SharedPreferences;
    .end local v13    # "transferID":I
    :cond_1
    :goto_2
    return-void

    .line 732
    .restart local v5    # "isNew":Ljava/lang/Boolean;
    .restart local v7    # "modelName":Ljava/lang/String;
    .restart local v8    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    .restart local v9    # "prefsInstalledFont":Landroid/content/SharedPreferences;
    .restart local v10    # "prefsInstalledIMEapp":Landroid/content/SharedPreferences;
    .restart local v11    # "prefsInstalledTTSapp":Landroid/content/SharedPreferences;
    .restart local v12    # "prefsInstalledWapp":Landroid/content/SharedPreferences;
    :cond_2
    const-string v14, "empty"

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "empty"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 733
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_0

    .line 734
    :cond_3
    const-string v14, "empty"

    move-object/from16 v0, p1

    invoke-interface {v9, v0, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "empty"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 735
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_0

    .line 736
    :cond_4
    const-string v14, "empty"

    move-object/from16 v0, p1

    invoke-interface {v11, v0, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "empty"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 737
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_0

    .line 738
    :cond_5
    const-string v14, "empty"

    move-object/from16 v0, p1

    invoke-interface {v10, v0, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "empty"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 739
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_0

    .line 741
    :cond_6
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "INVALID CASE PLEASE CHECK..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 773
    .restart local v3    # "filepath":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v6    # "mInstallPackageState_count":I
    .restart local v13    # "transferID":I
    :cond_7
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "cancel install failed."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v14, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v14}, Lcom/samsung/android/aidl/ICancelInstallCallback;->cancelInstallResult(Ljava/lang/String;I)V

    goto :goto_2

    .line 751
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 781
    .end local v3    # "filepath":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "isNew":Ljava/lang/Boolean;
    .end local v6    # "mInstallPackageState_count":I
    .end local v7    # "modelName":Ljava/lang/String;
    .end local v8    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    .end local v9    # "prefsInstalledFont":Landroid/content/SharedPreferences;
    .end local v10    # "prefsInstalledIMEapp":Landroid/content/SharedPreferences;
    .end local v11    # "prefsInstalledTTSapp":Landroid/content/SharedPreferences;
    .end local v12    # "prefsInstalledWapp":Landroid/content/SharedPreferences;
    .end local v13    # "transferID":I
    :cond_9
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "cancelInstall() is denied since caller has not permission"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public checkGMState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 916
    const/4 v0, 0x0

    return v0
.end method

.method public checkInstalledWGTVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 804
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkInstalledWGTVersion(), packagename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->checkSignatureForBind()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 807
    const/4 v2, 0x0

    .line 809
    .local v2, "version":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkInstalledWGTVersion() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$300(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v1

    .line 811
    .local v1, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    if-eqz v1, :cond_0

    .line 812
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$500(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$HMInstallStateHandler;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->setCheckInstallStatusHandler(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$HMInstallStateHandler;)V

    .line 813
    invoke-interface {v1, p1}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->getWGTOnlyVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 822
    .end local v1    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkInstalledWGTVersion(), version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    .end local v2    # "version":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 816
    .restart local v1    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    .restart local v2    # "version":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IPackageManager instance is null in checkInstalledWGTVersion"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 818
    .end local v1    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 825
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "version":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkInstalledWGTVersion() is denied since caller has not permission"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public checkInstalledWGTVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 614
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkInstalledWGTVersionName(), packagename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->checkSignatureForBind()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 617
    const/4 v2, 0x0

    .line 619
    .local v2, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkInstalledWGTVersionName() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$300(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v1

    .line 622
    .local v1, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    if-eqz v1, :cond_0

    .line 623
    invoke-interface {v1, p1}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->getWGTOnlyVersionName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 632
    .end local v1    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkInstalledWGTVersionName(), version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    .end local v2    # "versionName":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 626
    .restart local v1    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    .restart local v2    # "versionName":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IPackageManager instance is null in checkInstalledWGTVersionName"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 628
    .end local v1    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 635
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "versionName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkInstalledWGTVersionName() is denied since caller has not permission"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public executeApp(Ljava/lang/String;Z)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 911
    const/4 v0, -0x1

    return v0
.end method

.method public getImageByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 921
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImageByteArray packageName :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$300(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v2

    .line 923
    .local v2, "pmInstance":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v3

    const-string v4, "Gear"

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getConnectedDeviceIdByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, "deviceID":Ljava/lang/String;
    const/4 v1, 0x0

    .line 925
    .local v1, "imageData":[B
    if-eqz v2, :cond_0

    .line 926
    invoke-interface {v2, v0, p1}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->getImageByteArray(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 928
    :cond_0
    return-object v1
.end method

.method public getInstalledResult(Ljava/lang/String;)I
    .locals 6
    .param p1, "hPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 695
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInstalledResult()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->checkSignatureForBind()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 698
    const/4 v2, 0x0

    .line 699
    .local v2, "returnCode":I
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 701
    .local v1, "mInstallPackageState_count":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 703
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 704
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->getInstalledState()I

    move-result v2

    .line 705
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInstalledResult(), returnCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    .end local v0    # "i":I
    .end local v1    # "mInstallPackageState_count":I
    .end local v2    # "returnCode":I
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInstalledResult() is denied since caller has not permission"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const v2, -0x1e240

    :cond_2
    return v2
.end method

.method public getInstalledWGTPackageInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 833
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->checkSignatureForBind()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 834
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInstalledWGTPackageInfo() start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$300(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v0

    .line 836
    .local v0, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    if-eqz v0, :cond_0

    .line 837
    invoke-interface {v0}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->getInstalledWGTPackageInfo()Ljava/util/List;

    move-result-object v1

    .line 845
    .end local v0    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :goto_0
    return-object v1

    .line 840
    .restart local v0    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IPackageManager instance is null in getInstalledWGTPackageInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 844
    .end local v0    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInstalledWGTPackageInfo() is denied since caller has not permission"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInstallingState(Ljava/lang/String;)I
    .locals 6
    .param p1, "hPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInstallingState()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->checkSignatureForBind()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 676
    const/4 v2, 0x0

    .line 677
    .local v2, "state":I
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 679
    .local v1, "mInstallPackageState_count":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 680
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 681
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->getInstallingState()I

    move-result v2

    .line 682
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInstalledResult() STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 687
    .end local v0    # "i":I
    .end local v1    # "mInstallPackageState_count":I
    .end local v2    # "state":I
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInstallingState()is denied since caller has not permission"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const v2, -0x1e240

    :cond_2
    return v2
.end method

.method public getWearableInfo(I)Ljava/lang/String;
    .locals 8
    .param p1, "requestedInfo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 852
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->checkSignatureForBind()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 853
    const-string v1, ""

    .line 854
    .local v1, "info":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    const-string v6, "WearableInfoForSamsungApps"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 856
    .local v4, "samsungAppsPref":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v5

    const-string v6, "Gear"

    invoke-virtual {v5, v6}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getConnectedDeviceIdByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, "deviceID":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 858
    sparse-switch p1, :sswitch_data_0

    .line 890
    .end local v0    # "deviceID":Ljava/lang/String;
    .end local v1    # "info":Ljava/lang/String;
    .end local v4    # "samsungAppsPref":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-object v1

    .line 860
    .restart local v0    # "deviceID":Ljava/lang/String;
    .restart local v1    # "info":Ljava/lang/String;
    .restart local v4    # "samsungAppsPref":Landroid/content/SharedPreferences;
    :sswitch_0
    const-string v5, "CSC"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 861
    goto :goto_0

    .line 863
    :sswitch_1
    const-string v5, "MODELNAME"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 864
    goto :goto_0

    .line 866
    :sswitch_2
    const-string v5, "SERIAL"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 867
    goto :goto_0

    .line 869
    :sswitch_3
    const-string v5, "SWVERSION"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 870
    goto :goto_0

    .line 872
    :sswitch_4
    invoke-static {v0}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getGearOSVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 873
    goto :goto_0

    .line 875
    :sswitch_5
    invoke-static {v0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getGearFakeModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 876
    goto :goto_0

    .line 878
    :sswitch_6
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "DeviceInfo"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 879
    .local v3, "preference":Landroid/content/SharedPreferences;
    const-string v5, "MODEL_NAME"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 880
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getSimpleBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 881
    goto :goto_0

    .line 883
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "preference":Landroid/content/SharedPreferences;
    :sswitch_7
    const-string v1, "false"

    goto :goto_0

    .line 889
    .end local v0    # "deviceID":Ljava/lang/String;
    .end local v1    # "info":Ljava/lang/String;
    .end local v4    # "samsungAppsPref":Landroid/content/SharedPreferences;
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getWearableInfo() is denied since caller has not permission"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 v1, 0x0

    goto :goto_0

    .line 858
    :sswitch_data_0
    .sparse-switch
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_1
        0x7d3 -> :sswitch_3
        0x7d4 -> :sswitch_2
        0x7d5 -> :sswitch_4
        0x7d6 -> :sswitch_5
        0x7d7 -> :sswitch_6
        0xbb9 -> :sswitch_7
    .end sparse-switch
.end method

.method public installViaPackageName(Ljava/lang/String;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)V
    .locals 6
    .param p1, "hPackageName"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installViaPackageName(), packagename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->checkSignatureForBind()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "installViaPackageName() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    move-object v1, p2

    .line 402
    .local v1, "iObserver":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    move-object v2, p1

    .line 403
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$1;-><init>(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$1;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v1    # "iObserver":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 430
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "installViaPackageName() is denied since caller has not permission"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public installWGT(Ljava/lang/String;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)V
    .locals 6
    .param p1, "absolutePathOfWGTFile"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installWGT(), packagename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->checkSignatureForBind()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 443
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "installWGT() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    move-object v1, p1

    .line 446
    .local v1, "filePath":Ljava/lang/String;
    move-object v2, p2

    .line 447
    .local v2, "iObserver":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    new-instance v3, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$2;

    invoke-direct {v3, p0, v2, v1}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$2;-><init>(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;Ljava/lang/String;)V

    .line 462
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$2;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "iObserver":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    :goto_0
    return-void

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 468
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "installWGT() is denied since caller has not permission"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public installWGTOverN(Landroid/net/Uri;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)V
    .locals 6
    .param p1, "absoluteUriOfWGTFile"    # Landroid/net/Uri;
    .param p2, "observer"    # Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installWGTOverN(), uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    move-object v2, p1

    .line 479
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->checkSignatureForBind()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 481
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "installWGTOverN() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    move-object v1, p2

    .line 485
    .local v1, "iObserver":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    new-instance v3, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$3;

    invoke-direct {v3, p0, v1, v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$3;-><init>(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;Landroid/net/Uri;)V

    .line 500
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$3;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    .end local v1    # "iObserver":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    :goto_0
    return-void

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 506
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "installWGTOverN() is denied since caller has not permission"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public installWGTinAPK(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)V
    .locals 7
    .param p1, "hPackageName"    # Ljava/lang/String;
    .param p2, "signatureFilePath"    # Ljava/lang/String;
    .param p3, "observer"    # Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 523
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installWGTinAPK(), packagename: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->checkSignatureForBind()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 527
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "installWGTinAPK() start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    move-object v2, p3

    .line 530
    .local v2, "iObserver":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    move-object v1, p2

    .line 531
    .local v1, "filePath":Ljava/lang/String;
    move-object v3, p1

    .line 532
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$4;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$4;-><init>(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$4;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "iObserver":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 559
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "installWGTinAPK() is denied since caller has not permission"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public installWGTinAPKFromGearStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)V
    .locals 7
    .param p1, "hPackageName"    # Ljava/lang/String;
    .param p2, "absolutePathOfAPKFile"    # Ljava/lang/String;
    .param p3, "signatureFilePath"    # Ljava/lang/String;
    .param p4, "observer"    # Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 646
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installWGTinAPKFromGearStore(), packagename: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->checkSignatureForBind()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 650
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "installWGTinAPKFromGearStore() start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v1, p4}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$202(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    .line 652
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$300(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v0

    .line 653
    .local v0, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    if-eqz v0, :cond_0

    .line 654
    const-string v1, ""

    const/4 v4, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->installAppWithSignatureFromGearStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    .line 668
    .end local v0    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :goto_0
    return-void

    .line 659
    .restart local v0    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IPackageManager instance is null in installWGTinAPKFromGearStore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$200(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    move-result-object v1

    const/16 v2, -0x3e8

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;->packageInstalled(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 662
    .end local v0    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :catch_0
    move-exception v6

    .line 663
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 666
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "installWGTinAPKFromGearStore() is denied since caller has not permission"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public installWGTinAPKOverN(Ljava/lang/String;Landroid/net/Uri;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)V
    .locals 7
    .param p1, "hPackageName"    # Ljava/lang/String;
    .param p2, "signatureFileUri"    # Landroid/net/Uri;
    .param p3, "observer"    # Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 569
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installWGTinAPKOverN(), signatureFileUri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    move-object v3, p2

    .line 572
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->checkSignatureForBind()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 574
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "installWGTinAPK() start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    move-object v1, p3

    .line 578
    .local v1, "iObserver":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    move-object v2, p1

    .line 579
    .local v2, "packageName":Ljava/lang/String;
    new-instance v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$5;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$5;-><init>(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;Ljava/lang/String;Landroid/net/Uri;)V

    .line 599
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$5;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    .end local v1    # "iObserver":Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 606
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "installWGTinAPK() is denied since caller has not permission"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAppExecutable(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 906
    const/4 v0, 0x0

    return v0
.end method

.method public isAppRemovable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 896
    const/4 v0, -0x1

    return v0
.end method

.method public prepareInstall(Ljava/lang/String;)V
    .locals 5
    .param p1, "hPackageName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 789
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HMSamsungAppStoreService prepareInstall(), packagename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->checkSignatureForBind()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 792
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    const-string v3, "prepared_install_from_samsungapps"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 793
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 794
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 795
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 799
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 797
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "prepareInstall() is denied since caller has not permission"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeApp(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/aidl/ICheckAppUnInstallStateCallback;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "iCheckAppUnInstallStateCallback"    # Lcom/samsung/android/aidl/ICheckAppUnInstallStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 902
    return-void
.end method

.method public skipCompanionDeeplinkPopup(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "skipDeepLink"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 512
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$300(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v0

    .line 513
    .local v0, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    if-eqz v0, :cond_0

    .line 514
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->skipCompanionDeeplinkPopup(Ljava/lang/String;Z)V

    .line 516
    :cond_0
    return-void
.end method
