.class Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;
.super Ljava/lang/Object;
.source "SAAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessoryConnection"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const-wide/16 v10, -0x1

    .line 229
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v9

    monitor-enter v9

    .line 230
    if-eqz p2, :cond_3

    .line 231
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accessory service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$2(Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/accessory/api/ISAFrameworkManagerV2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :try_start_1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$3(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 235
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$4(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$5(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/IDeathCallback;

    move-result-object v3

    .line 237
    const/16 v4, 0x8

    .line 238
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$6(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

    move-result-object v5

    .line 234
    invoke-interface/range {v0 .. v5}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->makeFrameworkConnection(ILjava/lang/String;Lcom/samsung/accessory/api/IDeathCallback;ILcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback;)Landroid/os/Bundle;

    move-result-object v6

    .line 239
    .local v6, "bundle":Landroid/os/Bundle;
    if-nez v6, :cond_0

    .line 241
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to setup client Identity.Invalid response from Framework"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    .end local v6    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 245
    .restart local v6    # "bundle":Landroid/os/Bundle;
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    const-string v1, "clientId"

    const-wide/16 v2, -0x1

    invoke-virtual {v6, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$7(Lcom/samsung/android/sdk/accessory/SAAdapter;J)V

    .line 246
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$8(Lcom/samsung/android/sdk/accessory/SAAdapter;)J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-nez v0, :cond_1

    .line 247
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 248
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to setup client Identity.Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "errorcode"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    :try_start_4
    monitor-exit v9

    goto :goto_0

    .line 229
    .end local v6    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 252
    .restart local v6    # "bundle":Landroid/os/Bundle;
    :cond_1
    :try_start_5
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received Client ID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$8(Lcom/samsung/android/sdk/accessory/SAAdapter;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 255
    const-string v0, "com.samsung.accessory.adapter.extra.PROCESS_ID"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 256
    .local v8, "fremeworkProcessId":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne v8, v0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkVersion()I

    move-result v0

    .line 257
    const/16 v1, 0x4f

    if-lt v0, v1, :cond_2

    .line 258
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$3(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$8(Lcom/samsung/android/sdk/accessory/SAAdapter;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getClientCallback(J)Landroid/os/ResultReceiver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$9(Lcom/samsung/android/sdk/accessory/SAAdapter;Landroid/os/ResultReceiver;)V

    .line 259
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Running in SAP process, Updated my proxy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$10(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_2
    invoke-static {v8}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->setFrameworkProcessId(I)V

    .line 263
    const-string v0, "com.samsung.accessory.adapter.extra.HEADER_LEN"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->setFrameworkMaxHeaderLength(I)V

    .line 264
    const-string v0, "com.samsung.accessory.adapter.extra.FOOTER_LEN"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->setFrameworkMaxFooterLength(I)V

    .line 265
    const-string v0, "com.samsung.accessory.adapter.extra.MSG_HEADER_LEN"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->setFrameworkMaxMsgHeaderLength(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 274
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v8    # "fremeworkProcessId":I
    :cond_3
    :goto_1
    :try_start_6
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 275
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$12(Lcom/samsung/android/sdk/accessory/SAAdapter;)V

    .line 229
    monitor-exit v9

    goto/16 :goto_0

    .line 266
    :catch_0
    move-exception v7

    .line 268
    .local v7, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to setup client Identity."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 270
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$11(Lcom/samsung/android/sdk/accessory/SAAdapter;Landroid/os/RemoteException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accessory service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 283
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$0()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$13(Lcom/samsung/android/sdk/accessory/SAAdapter;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
