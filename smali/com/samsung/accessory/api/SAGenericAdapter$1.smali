.class Lcom/samsung/accessory/api/SAGenericAdapter$1;
.super Ljava/lang/Object;
.source "SAGenericAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/api/SAGenericAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 124
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$1()Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v5

    invoke-static {p2}, Lcom/samsung/accessory/api/ISAGenFrameworkManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAGenFrameworkManager;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$2(Lcom/samsung/accessory/api/SAGenericAdapter;Lcom/samsung/accessory/api/ISAGenFrameworkManager;)V

    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$1()Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v6

    monitor-enter v6

    .line 127
    :try_start_0
    const-string v5, "packageName"

    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$1()Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$5(Lcom/samsung/accessory/api/SAGenericAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v5, "sdkVersionCode"

    const/16 v7, 0xa

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$0()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Getting CMxmlreader instance"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v4, 0x0

    .line 131
    .local v4, "xml":[B
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$1()Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$5(Lcom/samsung/accessory/api/SAGenericAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 133
    .local v1, "cmXmlReader":Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;
    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;->readXml()[B
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 137
    :goto_0
    :try_start_2
    const-string v5, "xmlArray"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 126
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$1()Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$6(Lcom/samsung/accessory/api/SAGenericAdapter;)Lcom/samsung/accessory/api/ISAGenFrameworkManager;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 141
    :try_start_3
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$1()Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$6(Lcom/samsung/accessory/api/SAGenericAdapter;)Lcom/samsung/accessory/api/ISAGenFrameworkManager;

    move-result-object v5

    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    invoke-interface {v5, v6, v7, v8, v0}, Lcom/samsung/accessory/api/ISAGenFrameworkManager;->sendCommand(JILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 142
    .local v3, "response":Landroid/os/Bundle;
    const-string v5, "clientId"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$1()Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v5

    const-string v6, "clientId"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$3(Lcom/samsung/accessory/api/SAGenericAdapter;J)V

    .line 144
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$1()Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$6(Lcom/samsung/accessory/api/SAGenericAdapter;)Lcom/samsung/accessory/api/ISAGenFrameworkManager;

    move-result-object v5

    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$1()Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$7(Lcom/samsung/accessory/api/SAGenericAdapter;)J

    move-result-wide v6

    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$8()Lcom/samsung/accessory/api/ICMDeathCallback;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/samsung/accessory/api/ISAGenFrameworkManager;->registerDeathCallback(JLcom/samsung/accessory/api/ICMDeathCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 152
    .end local v3    # "response":Landroid/os/Bundle;
    :cond_0
    :goto_1
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$1()Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$4(Lcom/samsung/accessory/api/SAGenericAdapter;)Landroid/os/ResultReceiver;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 153
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$1()Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v5

    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$1()Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$4(Lcom/samsung/accessory/api/SAGenericAdapter;)Landroid/os/ResultReceiver;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/accessory/api/SAGenericAdapter;->registerAccessoryCallback(Landroid/os/ResultReceiver;)Z

    .line 156
    :cond_1
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Client ID:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$1()Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$7(Lcom/samsung/accessory/api/SAGenericAdapter;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$1()Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v6

    monitor-enter v6

    .line 158
    :try_start_4
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$1()Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 159
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$0()Ljava/lang/String;

    move-result-object v5

    const-string v7, "onServiceConnected: Just notified"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 161
    return-void

    .line 134
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$0()Ljava/lang/String;

    move-result-object v5

    const-string v7, "No Xml found for CM. Sending null to framework!!"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 126
    .end local v1    # "cmXmlReader":Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "xml":[B
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .line 146
    .restart local v1    # "cmXmlReader":Lcom/samsung/android/sdk/accessorymanager/SAPolicyReader;
    .restart local v4    # "xml":[B
    :catch_1
    move-exception v2

    .line 148
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 157
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v5

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 113
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnected from Generic service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$1()Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$2(Lcom/samsung/accessory/api/SAGenericAdapter;Lcom/samsung/accessory/api/ISAGenFrameworkManager;)V

    .line 115
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$1()Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$3(Lcom/samsung/accessory/api/SAGenericAdapter;J)V

    .line 117
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$1()Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$4(Lcom/samsung/accessory/api/SAGenericAdapter;)Landroid/os/ResultReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$1()Lcom/samsung/accessory/api/SAGenericAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/api/SAGenericAdapter;->access$4(Lcom/samsung/accessory/api/SAGenericAdapter;)Landroid/os/ResultReceiver;

    move-result-object v0

    const/16 v1, 0x800

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 120
    :cond_0
    return-void
.end method
