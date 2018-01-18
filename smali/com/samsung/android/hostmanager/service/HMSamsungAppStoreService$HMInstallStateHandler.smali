.class public Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$HMInstallStateHandler;
.super Landroid/os/Handler;
.source "HMSamsungAppStoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HMInstallStateHandler"
.end annotation


# instance fields
.field private mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)V
    .locals 1
    .param p1, "activity"    # Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    .prologue
    .line 220
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 222
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$HMInstallStateHandler;->mService:Ljava/lang/ref/WeakReference;

    .line 224
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$HMInstallStateHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    .line 231
    .local v2, "activity":Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;
    if-eqz v2, :cond_0

    .line 233
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "handleMessage"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 238
    .local v13, "mInstallPackageState_count":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 385
    .end local v13    # "mInstallPackageState_count":I
    :cond_0
    :goto_0
    return-void

    .line 242
    .restart local v13    # "mInstallPackageState_count":I
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "hPackageName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "returnCode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 245
    .local v16, "returnCode":I
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_BAPP_INSTALL_RESULT hPackageName : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", returnCode : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v13, :cond_0

    .line 248
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 249
    .local v14, "packName":Ljava/lang/String;
    if-eqz v14, :cond_1

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "return install callback hpackageName : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->getInstallCallback()Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    move-result-object v4

    move/from16 v0, v16

    invoke-interface {v4, v3, v0}, Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;->packageInstalled(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_2
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", returnCode : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 254
    :catch_0
    move-exception v10

    .line 255
    .local v10, "e":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 261
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_1
    if-nez v14, :cond_2

    .line 262
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "package name null in install state object "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 264
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 247
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 273
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v14    # "packName":Ljava/lang/String;
    .end local v16    # "returnCode":I
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "hPackageName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    .restart local v3    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "state"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 276
    .local v17, "state":I
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_BAPP_INSTALLING_STATE hPackageName : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", state :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    if-ge v12, v13, :cond_0

    .line 279
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 280
    .restart local v14    # "packName":Ljava/lang/String;
    if-eqz v14, :cond_3

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 282
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", state : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->setInstallingState(I)V

    goto/16 :goto_0

    .line 285
    :cond_3
    if-nez v14, :cond_4

    .line 286
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "package name null in install state object "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 294
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v14    # "packName":Ljava/lang/String;
    .end local v17    # "state":I
    :pswitch_2
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 295
    .local v8, "connectedState":I
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_BAPP_CONNECTED_STATE, state: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    if-ge v12, v13, :cond_5

    .line 297
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v4, v8}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->setInstalledResult(I)V

    .line 298
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v4, v8}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->setInstallingState(I)V

    .line 300
    :try_start_1
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->getInstallCallback()Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    move-result-object v5

    .line 301
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4, v8}, Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;->packageInstalled(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 296
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 303
    :catch_1
    move-exception v10

    .line 304
    .restart local v10    # "e":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 307
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_5
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 312
    .end local v8    # "connectedState":I
    .end local v12    # "i":I
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 313
    .local v18, "transferID":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "filePath"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 314
    .local v11, "filePath":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_FILE_TRANSFER_ID, transferID = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", filePath = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_6
    if-ge v12, v13, :cond_0

    .line 317
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->getFilepath()Ljava/lang/String;

    move-result-object v15

    .line 318
    .local v15, "path":Ljava/lang/String;
    if-eqz v15, :cond_6

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 319
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_FILE_TRANSFER_ID save transferID :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->setTransferID(I)V

    goto/16 :goto_0

    .line 322
    :cond_6
    if-nez v15, :cond_7

    .line 323
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "filepath is null in install state object "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 329
    .end local v11    # "filePath":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v15    # "path":Ljava/lang/String;
    .end local v18    # "transferID":I
    :pswitch_4
    const/16 v19, 0x0

    .line 330
    .local v19, "transferID1":I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 331
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_FILE_TRANSFER_COMPLETE, transferID = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_7
    if-ge v12, v13, :cond_0

    .line 334
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->getTransferID()I

    move-result v4

    move/from16 v0, v19

    if-ne v4, v0, :cond_8

    .line 335
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MESSAGE_FILE_TRANSFER_COMPLETE setTransferID to 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->setTransferID(I)V

    goto/16 :goto_0

    .line 333
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 343
    .end local v12    # "i":I
    .end local v19    # "transferID1":I
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "hPackageName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 344
    .restart local v3    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "filePath"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 345
    .local v6, "apkFilePath":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_CREATE_INSTALL_STATE_OBJECT, packageName: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", filePath: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v1, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$200(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;-><init>(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;Ljava/lang/String;IILjava/lang/String;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)V

    .line 348
    .local v1, "ips":Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 353
    .end local v1    # "ips":Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "apkFilePath":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "hPackageName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 354
    .restart local v3    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "filePath"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 356
    .local v20, "wgtOnlyFilePath":Ljava/lang/String;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_8
    if-ge v12, v13, :cond_0

    .line 357
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->getFilepath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 358
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Setting package name to install state object in wgtOnly"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v4, v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->setPackageName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 366
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v20    # "wgtOnlyFilePath":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "hPackageName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 367
    .restart local v3    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "filePath"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 369
    .local v9, "consumerFilePath":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_SET_FILE_PATH, hPackageName : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "filePath:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_9
    if-ge v12, v13, :cond_0

    .line 372
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 373
    .restart local v14    # "packName":Ljava/lang/String;
    if-eqz v14, :cond_a

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 374
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " found in install state list, Setting the file path"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$100(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;

    invoke-virtual {v4, v9}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$installPackageState;->setFilePath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 377
    :cond_a
    if-nez v14, :cond_b

    .line 378
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "package name null in install state object "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 238
    :pswitch_data_0
    .packed-switch 0x7bd
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
