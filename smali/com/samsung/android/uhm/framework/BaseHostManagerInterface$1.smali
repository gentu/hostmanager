.class Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;
.super Ljava/lang/Thread;
.source "BaseHostManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->manageConnectionInfo(Ljava/lang/String;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

.field final synthetic val$btAdapter:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$connType:I

.field final synthetic val$deviceID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;Ljava/lang/String;Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    iput-object p3, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;->val$btAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object p4, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;->val$deviceID:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;->val$connType:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 218
    iget-object v3, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    iget-object v3, v3, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    invoke-static {v4}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->access$000(Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    const-string v3, "BaseHostManagerInterface"

    const-string v4, "try to enable BT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v3, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;->val$btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v2

    .line 222
    .local v2, "resultBT":Z
    const-string v3, "BaseHostManagerInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result enabling BT is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->access$100()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 226
    :try_start_0
    const-string v3, "BaseHostManagerInterface"

    const-string v5, "waiting Broadcast event..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->access$100()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 228
    const-string v3, "BaseHostManagerInterface"

    const-string v5, "received notify, so can continue to make connection"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :goto_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    iget-object v3, v3, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    invoke-static {v4}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->access$000(Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 240
    :goto_1
    const-string v3, "BaseHostManagerInterface"

    const-string v4, "try to sleep for some time to init CM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-wide/16 v4, 0x7d0

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 246
    :goto_2
    const-string v3, "BaseHostManagerInterface"

    const-string v4, "sleep time is finished, let\'s call connection"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v3, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    iget-object v3, v3, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    if-nez v3, :cond_0

    .line 250
    const-string v3, "BaseHostManagerInterface"

    const-string v4, "mIUHostManager == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v3, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    iget-object v4, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    iget-object v4, v4, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->access$200(Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;Landroid/content/Context;)I

    .line 254
    :cond_0
    :try_start_4
    const-string v3, "BaseHostManagerInterface"

    const-string v4, "mIUHostManager.manageConnectionInfo(deviceID, connType);"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v3, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    iget-object v3, v3, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    if-eqz v3, :cond_1

    .line 256
    iget-object v3, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    iget-object v3, v3, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->mIUHostManager:Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;

    iget-object v4, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;->val$deviceID:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$1;->val$connType:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/hostmanager/aidl/IUHostManagerInterface;->manageConnectionInfo(Ljava/lang/String;I)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 263
    :goto_3
    return-void

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e1":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 232
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 236
    :catch_1
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "BaseHostManagerInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 243
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 244
    .restart local v1    # "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 258
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_6
    const-string v3, "BaseHostManagerInterface"

    const-string v4, "mIUHostManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 260
    :catch_3
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method
