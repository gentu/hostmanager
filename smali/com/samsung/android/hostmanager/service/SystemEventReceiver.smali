.class public Lcom/samsung/android/hostmanager/service/SystemEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemEventReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static TAG_CW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "SystemEventReceiver"

    sput-object v0, Lcom/samsung/android/hostmanager/service/SystemEventReceiver;->TAG:Ljava/lang/String;

    .line 19
    const-string v0, "CrossConnection"

    sput-object v0, Lcom/samsung/android/hostmanager/service/SystemEventReceiver;->TAG_CW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    .line 23
    sget-object v7, Lcom/samsung/android/hostmanager/service/SystemEventReceiver;->TAG:Ljava/lang/String;

    const-string v8, "IU::SystemEventReceiver, onReceive"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "action":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 26
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.samsung.android.hostmanager.service.IUHostManager"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "IUintent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 30
    sget-object v7, Lcom/samsung/android/hostmanager/service/SystemEventReceiver;->TAG:Ljava/lang/String;

    const-string v8, "IU::SystemEventReceiver, start HostManager From BootComplete!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "Booting complete"

    const/4 v8, 0x1

    invoke-static {p1, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 165
    .end local v0    # "IUintent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 112
    const/4 v3, 0x0

    .line 114
    .local v3, "id":Ljava/lang/String;
    :try_start_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_2

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "connected_wearable_id"

    invoke-static {v7, v8}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 122
    :goto_1
    sget-object v7, Lcom/samsung/android/hostmanager/service/SystemEventReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IU::SystemEventReceiver, ACTION_SHUTDOWN::id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 124
    invoke-static {p1, v3}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->updateDeviceRegistryDisconnected(Landroid/content/Context;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "connected_wearable_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_1

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 130
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v3    # "id":Ljava/lang/String;
    :cond_3
    const-string v7, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    sget-object v7, Lcom/samsung/android/hostmanager/service/SystemEventReceiver;->TAG:Ljava/lang/String;

    const-string v8, "IU::SystemEventReceiver, ACTION_PACKAGE_DATA_CLEARED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v7, Lcom/samsung/android/hostmanager/service/SystemEventReceiver;->TAG:Ljava/lang/String;

    const-string v8, "Intent.ACTION_PACKAGE_DATA_CLEARED   Broadcast Received..!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "originalPackageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 138
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 139
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 142
    :cond_4
    sget-object v7, Lcom/samsung/android/hostmanager/service/SystemEventReceiver;->TAG:Ljava/lang/String;

    const-string v8, "data::===================================="

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v7, Lcom/samsung/android/hostmanager/service/SystemEventReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data: data cleared "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-object v7, Lcom/samsung/android/hostmanager/service/SystemEventReceiver;->TAG:Ljava/lang/String;

    const-string v8, "data::===================================="

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-eqz v6, :cond_0

    const-string v7, "com.samsung.android.app.watchmanager"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 147
    sget-object v7, Lcom/samsung/android/hostmanager/service/SystemEventReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data cleared : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v7

    iget-object v7, v7, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v7, :cond_5

    .line 150
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v7

    iget-object v7, v7, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v7, v10}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->stopForeground(Z)V

    .line 151
    sget-object v7, Lcom/samsung/android/hostmanager/service/SystemEventReceiver;->TAG:Ljava/lang/String;

    const-string v8, "stopForeground finished"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_5
    :try_start_3
    const-string v7, "notification"

    .line 156
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 157
    .local v4, "notiManager":Landroid/app/NotificationManager;
    invoke-virtual {v4}, Landroid/app/NotificationManager;->cancelAll()V

    .line 158
    sget-object v7, Lcom/samsung/android/hostmanager/service/SystemEventReceiver;->TAG:Ljava/lang/String;

    const-string v8, "all notification cancelled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 159
    .end local v4    # "notiManager":Landroid/app/NotificationManager;
    :catch_1
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/samsung/android/hostmanager/service/SystemEventReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while cancelling notifications "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 33
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "originalPackageName":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .restart local v0    # "IUintent":Landroid/content/Intent;
    :catch_2
    move-exception v7

    goto/16 :goto_0
.end method
