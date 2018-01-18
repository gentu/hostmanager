.class public Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationPackageReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationPackageReceiver"


# instance fields
.field private mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isReplacing(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "res":Z
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const-string v1, "NotificationPackageReceiver"

    const-string v2, "this package will be replased, skip this package"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x1

    .line 281
    :cond_0
    return v0
.end method

.method private onPackageAdded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v14}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->getMoreNotiAppList()Ljava/util/ArrayList;

    move-result-object v9

    .line 152
    .local v9, "listApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 153
    .local v5, "intentData":Landroid/net/Uri;
    if-eqz v5, :cond_1

    .line 154
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "addedPackage":Ljava/lang/String;
    const-string v14, "NotificationPackageReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ACTION_PACKAGE_ADDED = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 161
    .local v13, "pm":Landroid/content/pm/PackageManager;
    const/4 v14, 0x0

    :try_start_0
    invoke-virtual {v13, v1, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 168
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v12, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 169
    .local v12, "pkg":Ljava/lang/String;
    invoke-virtual {v3, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, "label":Ljava/lang/String;
    const-string v14, "NotificationPackageReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pkg ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], label ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v2, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    const/16 v14, 0x19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v15, v12}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->getDefaultSet(Ljava/lang/String;)Z

    move-result v15

    invoke-direct {v2, v12, v6, v14, v15}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 175
    .local v2, "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    sget-object v14, Lcom/samsung/android/hostmanager/notification/Utils;->REAL_PACKAGENAME_ALARM:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 176
    const-string v14, "alarm"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/samsung/android/hostmanager/notification/Utils;->getLocaleApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, "labelAlarm":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 178
    invoke-virtual {v2, v7}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->setLabel(Ljava/lang/String;)V

    .line 180
    :cond_0
    const-string v14, "alarm"

    invoke-virtual {v2, v14}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->setPackageName(Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v14}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->getAlertNotiAppList()Ljava/util/ArrayList;

    move-result-object v8

    .line 183
    .local v8, "listAlertNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v14, v8, v2}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->addToList(Ljava/util/ArrayList;Lcom/samsung/android/hostmanager/aidl/NotificationApp;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v14, v8}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->setAlertNotificationsAppList(Ljava/util/ArrayList;)V

    .line 185
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/hostmanager/notification/Utils;->notifyListUpdated(Landroid/content/Context;)V

    .line 224
    .end local v1    # "addedPackage":Ljava/lang/String;
    .end local v2    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "label":Ljava/lang/String;
    .end local v7    # "labelAlarm":Ljava/lang/String;
    .end local v8    # "listAlertNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-void

    .line 162
    .restart local v1    # "addedPackage":Ljava/lang/String;
    .restart local v13    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    .line 163
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "NotificationPackageReceiver"

    const-string v15, "Unable to get package Info"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 190
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "label":Ljava/lang/String;
    .restart local v12    # "pkg":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v15}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->getNormalNotiAppList()Ljava/util/ArrayList;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v14, v15, v2, v0}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->checkNormalNotification(Ljava/util/ArrayList;Lcom/samsung/android/hostmanager/aidl/NotificationApp;Z)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 191
    const-string v14, "NotificationPackageReceiver"

    const-string v15, "added to normal notification list"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v15}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->getNormalNotiAppList()Ljava/util/ArrayList;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->setNormalNotificationsAppList(Ljava/util/ArrayList;)V

    .line 194
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->removeFromMoreNotification(Ljava/lang/String;)Z

    .line 196
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/samsung/android/hostmanager/notification/Utils;->hasMasterAppInManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 197
    .local v10, "masterAppPackageName":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 199
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->removeFromMoreNotification(Ljava/lang/String;)Z

    .line 201
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/hostmanager/notification/Utils;->notifyListUpdated(Landroid/content/Context;)V

    goto :goto_0

    .line 202
    .end local v10    # "masterAppPackageName":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/notification/Utils;->hasLauncherIntent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 204
    invoke-static {v2}, Lcom/samsung/android/hostmanager/notification/Utils;->isExcludeApp(Lcom/samsung/android/hostmanager/aidl/NotificationApp;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 205
    const-string v14, "NotificationPackageReceiver"

    const-string v15, "app is exlclude app"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_5
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Lcom/samsung/android/hostmanager/notification/Utils;->isExistApp(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    move-result-object v11

    .line 210
    .local v11, "original":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    if-eqz v11, :cond_6

    .line 211
    const-string v14, "NotificationPackageReceiver"

    const-string v15, "NOT added"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v14, v9, v2}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->addToList(Ljava/util/ArrayList;Lcom/samsung/android/hostmanager/aidl/NotificationApp;)V

    .line 214
    const-string v14, "NotificationPackageReceiver"

    const-string v15, "added to more notification list"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v14, v9}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->setMoreNotificationsAppList(Ljava/util/ArrayList;)V

    .line 218
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->removeFromNormalNotification(Ljava/lang/String;)Z

    .line 220
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/hostmanager/notification/Utils;->notifyListUpdated(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private onPackageChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 89
    .local v3, "intentData":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "changedPackage":Ljava/lang/String;
    const-string v5, "NotificationPackageReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PACKAGE_CHANGED = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 97
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-boolean v5, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_1

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->onPackageAdded(Landroid/content/Context;Landroid/content/Intent;)V

    .line 110
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "changedPackage":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 98
    .restart local v1    # "changedPackage":Ljava/lang/String;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "NotificationPackageReceiver"

    const-string v6, "Unable to get package Info"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, v5}, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->onPackageRemoved(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPackageRemoved(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 114
    .local v1, "intentData":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "removedPackage":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->isReplacing(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    const-string v4, "NotificationPackageReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This package will be replaced = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.hostmanager.action.NOTIFICATION_PACKAGE_UPDATE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    .end local v2    # "removedPackage":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 122
    .restart local v2    # "removedPackage":Ljava/lang/String;
    :cond_1
    const-string v4, "NotificationPackageReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_PACKAGE_REMOVED = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->removeFromMoreNotification(Ljava/lang/String;)Z

    move-result v3

    .line 125
    .local v3, "res":Z
    if-nez v3, :cond_2

    .line 126
    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->removeFromNormalNotification(Ljava/lang/String;)Z

    move-result v3

    .line 127
    if-eqz v3, :cond_2

    .line 129
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v4

    .line 130
    invoke-virtual {v4, p3}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 131
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->restoreNotificationManager()Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    sget-object v4, Lcom/samsung/android/hostmanager/notification/Utils;->REAL_PACKAGENAME_ALARM:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 139
    const-string v4, "alarm"

    invoke-direct {p0, v4}, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->removeFromAlertNotification(Ljava/lang/String;)Z

    move-result v3

    .line 141
    :cond_3
    if-eqz v3, :cond_0

    .line 142
    invoke-static {p1}, Lcom/samsung/android/hostmanager/notification/Utils;->notifyListUpdated(Landroid/content/Context;)V

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_1
.end method

.method private removeFromAlertNotification(Ljava/lang/String;)Z
    .locals 3
    .param p1, "removedPackage"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v2}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->getAlertNotiAppList()Ljava/util/ArrayList;

    move-result-object v0

    .line 252
    .local v0, "alertsnotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    const/4 v1, 0x0

    .line 253
    .local v1, "res":Z
    if-eqz v0, :cond_0

    .line 254
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->removeFromList(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    .line 255
    if-eqz v1, :cond_0

    .line 256
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v2, v0}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->setAlertNotificationsAppList(Ljava/util/ArrayList;)V

    .line 259
    :cond_0
    return v1
.end method

.method private removeFromList(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 5
    .param p2, "removedPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "notifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    const/4 v1, 0x0

    .line 264
    .local v1, "res":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .line 265
    .local v0, "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 267
    const/4 v1, 0x1

    .line 268
    const-string v2, "NotificationPackageReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v0    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :cond_1
    return v1
.end method

.method private removeFromMoreNotification(Ljava/lang/String;)Z
    .locals 3
    .param p1, "removedPackage"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v2}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->getMoreNotiAppList()Ljava/util/ArrayList;

    move-result-object v0

    .line 228
    .local v0, "morenotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    const/4 v1, 0x0

    .line 229
    .local v1, "res":Z
    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->removeFromList(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    .line 231
    if-eqz v1, :cond_0

    .line 232
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v2, v0}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->setMoreNotificationsAppList(Ljava/util/ArrayList;)V

    .line 235
    :cond_0
    return v1
.end method

.method private removeFromNormalNotification(Ljava/lang/String;)Z
    .locals 3
    .param p1, "removedPackage"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v2}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->getNormalNotiAppList()Ljava/util/ArrayList;

    move-result-object v0

    .line 240
    .local v0, "normalnotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    const/4 v1, 0x0

    .line 241
    .local v1, "res":Z
    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->removeFromList(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    .line 243
    if-eqz v1, :cond_0

    .line 244
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v2, v0}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->setNormalNotificationsAppList(Ljava/util/ArrayList;)V

    .line 247
    :cond_0
    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    if-eqz p2, :cond_2

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "action":Ljava/lang/String;
    const-string v5, "NotificationPackageReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v4, 0x0

    .line 42
    .local v4, "listDeviceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 43
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getAllWearableStatus()Ljava/util/ArrayList;

    move-result-object v4

    .line 45
    :cond_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 46
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    .line 47
    .local v1, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getNotification()Ljava/util/HashMap;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 49
    const/4 v3, 0x0

    .line 50
    .local v3, "listApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    .line 51
    iget-object v6, p0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    if-nez v6, :cond_3

    .line 52
    const-string v6, "NotificationPackageReceiver"

    const-string v7, "mNotificationManager is null."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .end local v3    # "listApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    .end local v4    # "listDeviceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    :cond_2
    :goto_1
    return-void

    .line 56
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .restart local v3    # "listApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    .restart local v4    # "listDeviceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v6}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->isListCreated()Z

    move-result v6

    if-nez v6, :cond_4

    .line 57
    const-string v6, "NotificationPackageReceiver"

    const-string v7, "List is not created yet."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v2    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v6}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->getMoreNotiAppList()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 62
    iget-object v6, p0, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->mNotificationManager:Lcom/samsung/android/hostmanager/manager/INotificationManager;

    invoke-interface {v6}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->getMoreNotiAppList()Ljava/util/ArrayList;

    move-result-object v3

    .line 64
    :cond_5
    if-nez v3, :cond_6

    .line 65
    const-string v6, "NotificationPackageReceiver"

    const-string v7, "App list is empty, we can not handle this case"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 69
    :cond_6
    if-eqz v0, :cond_7

    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->onPackageChanged(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 71
    :cond_7
    if-eqz v0, :cond_8

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->onPackageAdded(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :cond_8
    if-eqz v0, :cond_1

    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 74
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, p2, v6}, Lcom/samsung/android/hostmanager/notification/NotificationPackageReceiver;->onPackageRemoved(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 80
    .end local v3    # "listApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    :cond_9
    const-string v6, "NotificationPackageReceiver"

    const-string v7, "deviceInfo.getNotification() == NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
