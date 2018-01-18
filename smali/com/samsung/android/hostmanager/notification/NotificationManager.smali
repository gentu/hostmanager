.class public abstract Lcom/samsung/android/hostmanager/notification/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/manager/INotificationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/notification/NotificationManager$AppListComparator;
    }
.end annotation


# static fields
.field public static final NOTI_ALERT:I = 0x1

.field public static final NOTI_MORE:I = 0x2

.field public static final NOTI_NORMAL:I = 0x4

.field private static final SETTING_IS_ON:Ljava/lang/String; = "IS_ENABLED"

.field private static final SETTING_LIMIT_NOTIFICATION:Ljava/lang/String; = "LIMIT_NOTIFICATION"

.field private static final SETTING_PREVIEW_MESSAGE:Ljava/lang/String; = "PREVIEW_MESSAGE"

.field private static final SETTING_SCREEN_ONOFF:Ljava/lang/String; = "SCREEN_ONOFF"

.field private static final SETTING_SUMMARY_PANEL:Ljava/lang/String; = "SUMMARY_PANEL"

.field private static final TAG:Ljava/lang/String; = "NotificationManager"

.field private static final XML_ALERT_NOTIFICATIONS_FILENAME:Ljava/lang/String; = "notification_alertnotifications.xml"

.field private static final XML_MORE_NOTIFICATIONS_FILENAME:Ljava/lang/String; = "notification_morenotifications.xml"

.field private static final XML_NORMAL_NOTIFICATIONS_FILENAME:Ljava/lang/String; = "notification_normalnotifications.xml"

.field private static final XML_SETTINGS_NOTIFICATIONS_FILENAME:Ljava/lang/String; = "notification_settings.xml"


# instance fields
.field private XML_ALERT_NOTIFICATIONS:Ljava/lang/String;

.field private XML_MORE_NOTIFICATIONS:Ljava/lang/String;

.field private XML_NORMAL_NOTIFICATIONS:Ljava/lang/String;

.field private XML_SETTINGS_NOTIFICATIONS:Ljava/lang/String;

.field private alertNotificationsListApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field private isInitialized:Z

.field private isListCreated:Z

.field private mConnectedType:I

.field private mDefault:Z

.field protected mDeviceId:Ljava/lang/String;

.field private mIsVZWMessageSupported:Z

.field private moreNotificationsListApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;"
        }
    .end annotation
.end field

.field private normalNotificationsListApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;"
        }
    .end annotation
.end field

.field private final sync:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "notification_alertnotifications.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_ALERT_NOTIFICATIONS:Ljava/lang/String;

    .line 75
    const-string v0, "notification_normalnotifications.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_NORMAL_NOTIFICATIONS:Ljava/lang/String;

    .line 76
    const-string v0, "notification_morenotifications.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_MORE_NOTIFICATIONS:Ljava/lang/String;

    .line 77
    const-string v0, "notification_settings.xml"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_SETTINGS_NOTIFICATIONS:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->normalNotificationsListApp:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->moreNotificationsListApp:Ljava/util/ArrayList;

    .line 83
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->isInitialized:Z

    .line 84
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->isListCreated:Z

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mConnectedType:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mDefault:Z

    .line 87
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mIsVZWMessageSupported:Z

    .line 746
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->sync:Ljava/lang/Object;

    .line 97
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->init(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/notification/NotificationManager;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/notification/NotificationManager;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->createAppList(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/notification/NotificationManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/notification/NotificationManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->sync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/notification/NotificationManager;ILjava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/notification/NotificationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->saveAppMarkedList(ILjava/util/ArrayList;)V

    return-void
.end method

.method private copyFileFromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "srcFileName"    # Ljava/lang/String;
    .param p3, "destinationFileName"    # Ljava/lang/String;

    .prologue
    .line 1048
    if-eqz p1, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1049
    :cond_0
    const-string v14, "NotificationManager"

    const-string v15, "copyFileFromAsset :: context is null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_1
    :goto_0
    return-void

    .line 1052
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1053
    .local v7, "filename":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1054
    .local v12, "manager":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    .line 1057
    .local v11, "mApkResources":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 1061
    :goto_1
    if-eqz v11, :cond_1

    .line 1062
    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 1066
    .local v2, "assetManager":Landroid/content/res/AssetManager;
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1068
    .local v1, "ais":Landroid/content/res/AssetManager$AssetInputStream;
    const/4 v8, 0x0

    .line 1070
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1073
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    const/16 v13, 0x3f6

    .line 1074
    .local v13, "sizeBuffer":I
    :try_start_3
    new-array v3, v13, [B

    .line 1076
    .local v3, "buffer":[B
    :goto_2
    const/4 v14, 0x0

    invoke-virtual {v1, v3, v14, v13}, Landroid/content/res/AssetManager$AssetInputStream;->read([BII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    .local v10, "len":I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_3

    .line 1077
    if-nez v10, :cond_5

    .line 1083
    :cond_3
    if-eqz v9, :cond_4

    .line 1084
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1086
    :cond_4
    if-eqz v1, :cond_1

    .line 1087
    invoke-virtual {v1}, Landroid/content/res/AssetManager$AssetInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1095
    .end local v1    # "ais":Landroid/content/res/AssetManager$AssetInputStream;
    .end local v3    # "buffer":[B
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "len":I
    .end local v13    # "sizeBuffer":I
    :catch_0
    move-exception v6

    .line 1096
    .local v6, "e1":Ljava/lang/Exception;
    const-string v14, "NotificationManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "copyFileFromAsset Error = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1098
    const-string v14, "NotificationManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "due to error let\'s delete file = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v4

    .line 1100
    .local v4, "deleted":Z
    const-string v14, "NotificationManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "file was deleted = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1058
    .end local v2    # "assetManager":Landroid/content/res/AssetManager;
    .end local v4    # "deleted":Z
    .end local v6    # "e1":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 1059
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 1079
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "ais":Landroid/content/res/AssetManager$AssetInputStream;
    .restart local v2    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v3    # "buffer":[B
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "len":I
    .restart local v13    # "sizeBuffer":I
    :cond_5
    const/4 v14, 0x0

    :try_start_5
    invoke-virtual {v9, v3, v14, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1083
    .end local v3    # "buffer":[B
    .end local v10    # "len":I
    :catchall_0
    move-exception v14

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "sizeBuffer":I
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v8, :cond_6

    .line 1084
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1086
    :cond_6
    if-eqz v1, :cond_7

    .line 1087
    invoke-virtual {v1}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    :cond_7
    throw v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1083
    :catchall_1
    move-exception v14

    goto :goto_3
.end method

.method private createAppList(Landroid/content/Context;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 458
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/hostmanager/notification/Utils;->getListOfApplicableAppsForNormalNotifications(Landroid/content/Context;)Ljava/util/List;

    move-result-object v16

    .line 463
    .local v16, "pkgAppsListforNormalNotification":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->getNormalNotiAppList()Ljava/util/ArrayList;

    move-result-object v18

    if-nez v18, :cond_1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v11, "normalNotiListApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->getMoreNotiAppList()Ljava/util/ArrayList;

    move-result-object v18

    if-nez v18, :cond_2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v9, "moreNotiListApp1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    :goto_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v10, "moreNotiListApp2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v8, "masterListApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageInfo;

    .line 474
    .local v13, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v14, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 476
    .local v14, "pkg":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/samsung/android/hostmanager/notification/Utils;->isEligibleForNormalNotification(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 477
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 478
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 480
    .local v6, "label":Ljava/lang/String;
    new-instance v3, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    const/16 v19, 0x19

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->getDefaultSet(Ljava/lang/String;)Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v3, v14, v6, v0, v1}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 482
    .local v3, "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v11, v3, v1}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->checkNormalNotification(Ljava/util/ArrayList;Lcom/samsung/android/hostmanager/aidl/NotificationApp;Z)Z

    .line 483
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/samsung/android/hostmanager/notification/Utils;->hasMasterAppInManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 485
    .local v7, "masterAppPackageName":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 486
    new-instance v19, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    const/16 v20, 0x19

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v7, v6, v1, v2}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 491
    .end local v3    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .end local v4    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "label":Ljava/lang/String;
    .end local v7    # "masterAppPackageName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 492
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 463
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "masterListApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    .end local v9    # "moreNotiListApp1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    .end local v10    # "moreNotiListApp2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    .end local v11    # "normalNotiListApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    .end local v13    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->getNormalNotiAppList()Ljava/util/ArrayList;

    move-result-object v11

    goto/16 :goto_0

    .line 464
    .restart local v11    # "normalNotiListApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->getMoreNotiAppList()Ljava/util/ArrayList;

    move-result-object v9

    goto/16 :goto_1

    .line 489
    .restart local v8    # "masterListApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    .restart local v9    # "moreNotiListApp1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    .restart local v10    # "moreNotiListApp2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    .restart local v13    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v14    # "pkg":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v19, "NotificationManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "exclude package from normal notifications = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 496
    .end local v13    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/hostmanager/notification/Utils;->getListOfApplicableApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v15

    .line 498
    .local v15, "pkgAppsListforMoreNotification":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_5
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 499
    .local v17, "rInfo":Landroid/content/pm/ResolveInfo;
    const-string v14, ""

    .line 500
    .restart local v14    # "pkg":Ljava/lang/String;
    const-string v6, ""

    .line 501
    .restart local v6    # "label":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 502
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 503
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 512
    :goto_4
    new-instance v3, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    const/16 v19, 0x19

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->getDefaultSet(Ljava/lang/String;)Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v3, v14, v6, v0, v1}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 514
    .restart local v3    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    invoke-static {v3}, Lcom/samsung/android/hostmanager/notification/Utils;->isExcludeApp(Lcom/samsung/android/hostmanager/aidl/NotificationApp;)Z

    move-result v19

    if-nez v19, :cond_5

    invoke-static {v11, v14}, Lcom/samsung/android/hostmanager/notification/Utils;->isExistApp(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    move-result-object v19

    if-nez v19, :cond_5

    invoke-static {v8, v14}, Lcom/samsung/android/hostmanager/notification/Utils;->isExistApp(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    move-result-object v19

    if-nez v19, :cond_5

    .line 518
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Lcom/samsung/android/hostmanager/notification/Utils;->isExistApp(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    move-result-object v12

    .line 519
    .local v12, "original":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    if-eqz v12, :cond_9

    .line 520
    const-string v19, "NotificationManager"

    const-string v20, "NOT added to list1"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    if-eqz v12, :cond_6

    .line 522
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->updateAppNameForNotificationApp(Landroid/content/Context;Lcom/samsung/android/hostmanager/aidl/NotificationApp;)V

    .line 524
    :cond_6
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v10, v0}, Lcom/samsung/android/hostmanager/notification/Utils;->isExistApp(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    move-result-object v19

    if-nez v19, :cond_5

    .line 525
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->addToList(Ljava/util/ArrayList;Lcom/samsung/android/hostmanager/aidl/NotificationApp;)V

    .line 526
    const-string v19, "NotificationManager"

    const-string v20, "added to list2"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 504
    .end local v3    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .end local v12    # "original":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :cond_7
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 505
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 506
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    .line 508
    :cond_8
    const-string v19, "NotificationManager"

    const-string v20, "Neither activity or Service"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 529
    .restart local v3    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .restart local v12    # "original":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :cond_9
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->addToList(Ljava/util/ArrayList;Lcom/samsung/android/hostmanager/aidl/NotificationApp;)V

    .line 531
    const-string v19, "NotificationManager"

    const-string v20, "added to both lists"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 551
    .end local v3    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .end local v6    # "label":Ljava/lang/String;
    .end local v12    # "original":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_a
    const-string v18, "NotificationManager"

    const-string v19, "try to set list of app to Manager"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->setAlertNotificationsAppList(Ljava/util/ArrayList;)V

    .line 553
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->setNormalNotificationsAppList(Ljava/util/ArrayList;)V

    .line 554
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->setMoreNotificationsAppList(Ljava/util/ArrayList;)V

    .line 555
    const-string v18, "NotificationManager"

    const-string v19, "list is setted"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v18, "NotificationManager"

    const-string v19, "set flag isListCreated to true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/hostmanager/notification/NotificationManager;->isListCreated:Z

    .line 559
    return-void
.end method

.method private static createNotificaitonItemForXML(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/w3c/dom/Element;
    .locals 8
    .param p0, "root"    # Lorg/w3c/dom/Document;
    .param p1, "mPackname"    # Ljava/lang/String;
    .param p2, "mEntryname"    # Ljava/lang/String;
    .param p3, "appId"    # I
    .param p4, "maxB"    # I
    .param p5, "mMarked"    # Ljava/lang/String;

    .prologue
    .line 847
    const-string v6, "entry"

    invoke-interface {p0, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 848
    .local v0, "Items":Lorg/w3c/dom/Element;
    const-string v6, "package"

    invoke-interface {p0, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 849
    .local v5, "packname":Lorg/w3c/dom/Element;
    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 850
    const-string v6, "type"

    const-string v7, "text"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    invoke-interface {v5, p1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 853
    const-string v6, "entryname"

    invoke-interface {p0, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 854
    .local v1, "entryname":Lorg/w3c/dom/Element;
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 855
    invoke-interface {v1, p2}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 857
    const-string v6, "id"

    invoke-interface {p0, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 858
    .local v2, "id":Lorg/w3c/dom/Element;
    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 859
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 861
    const-string v6, "maxByte"

    invoke-interface {p0, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 862
    .local v4, "maxByte":Lorg/w3c/dom/Element;
    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 863
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 865
    const-string v6, "marked"

    invoke-interface {p0, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 866
    .local v3, "marked":Lorg/w3c/dom/Element;
    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 867
    invoke-interface {v3, p5}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 869
    return-object v0
.end method

.method private static deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 1345
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1346
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method private generateAppID(Ljava/lang/String;)I
    .locals 3
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    .line 412
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 413
    .local v1, "hash":I
    const/16 v0, 0xfa

    .line 414
    .local v0, "DEFAULT_APP_ID_VALUE":I
    const/16 v2, 0x7f05

    rem-int v2, v1, v2

    add-int/lit16 v2, v2, 0x7fff

    add-int v1, v2, v0

    .line 429
    return v1
.end method

.method private getAlertNotificationPredefinedXMLFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 188
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "deviceSalesCode":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mDefault:Z

    if-nez v3, :cond_0

    const-string v3, "ATT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "TMB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    :cond_0
    const-string v1, "notification_alertnotifications_samsung.xml"

    .line 196
    .local v1, "XML_ASSERT_ALERT_NOTIFICATIONS_SAMSUNG_DEVICES":Ljava/lang/String;
    :goto_0
    const-string v0, "notification_alertnotifications_notsamsung.xml"

    .line 197
    .local v0, "XML_ASSERT_ALERT_NOTIFICATIONS_NOTSAMSUNG_DEVICES":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/notification/Utils;->isSamsungDevice()Z

    move-result v3

    if-eqz v3, :cond_2

    .end local v1    # "XML_ASSERT_ALERT_NOTIFICATIONS_SAMSUNG_DEVICES":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 193
    .end local v0    # "XML_ASSERT_ALERT_NOTIFICATIONS_NOTSAMSUNG_DEVICES":Ljava/lang/String;
    :cond_1
    const-string v1, "notification_alertnotifications_samsung_default_off.xml"

    .restart local v1    # "XML_ASSERT_ALERT_NOTIFICATIONS_SAMSUNG_DEVICES":Ljava/lang/String;
    goto :goto_0

    .restart local v0    # "XML_ASSERT_ALERT_NOTIFICATIONS_NOTSAMSUNG_DEVICES":Ljava/lang/String;
    :cond_2
    move-object v1, v0

    .line 197
    goto :goto_1
.end method

.method private getAppId(Ljava/lang/String;)I
    .locals 4
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    .line 433
    iget-object v1, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/hostmanager/notification/Utils;->getPredefinedAppId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 435
    .local v0, "predefinedAppId":Ljava/lang/Integer;
    const-string v1, "NotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "predefinedAppId ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], for package ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 439
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->generateAppID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private getNormalNotificationPredefinedXMLFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mDefault:Z

    if-nez v2, :cond_0

    .line 177
    const-string v1, "notification_normalnotifications_samsung_default_off.xml"

    .line 182
    .local v1, "XML_ASSERT_NORMAL_NOTIFICATIONS_SAMSUNG_DEVICES":Ljava/lang/String;
    :goto_0
    const-string v0, "notification_normalnotifications_notsamsung.xml"

    .line 183
    .local v0, "XML_ASSERT_NORMAL_NOTIFICATIONS_NOTSAMSUNG_DEVICES":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/notification/Utils;->isSamsungDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .end local v1    # "XML_ASSERT_NORMAL_NOTIFICATIONS_SAMSUNG_DEVICES":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 179
    .end local v0    # "XML_ASSERT_NORMAL_NOTIFICATIONS_NOTSAMSUNG_DEVICES":Ljava/lang/String;
    :cond_0
    const-string v1, "notification_normalnotifications_samsung.xml"

    .restart local v1    # "XML_ASSERT_NORMAL_NOTIFICATIONS_SAMSUNG_DEVICES":Ljava/lang/String;
    goto :goto_0

    .restart local v0    # "XML_ASSERT_NORMAL_NOTIFICATIONS_NOTSAMSUNG_DEVICES":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    .line 183
    goto :goto_1
.end method

.method private getPackageNameByAppId(II)Ljava/lang/String;
    .locals 5
    .param p1, "flags"    # I
    .param p2, "appId"    # I

    .prologue
    .line 977
    const/4 v2, 0x0

    .line 979
    .local v2, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 980
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 981
    iget-object v1, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->moreNotificationsListApp:Ljava/util/ArrayList;

    .line 988
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 989
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .line 990
    .local v0, "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getAppId()I

    move-result v4

    if-ne v4, p2, :cond_1

    .line 991
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 996
    .end local v0    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :cond_2
    return-object v2

    .line 982
    :cond_3
    and-int/lit8 v3, p1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 983
    iget-object v1, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->normalNotificationsListApp:Ljava/util/ArrayList;

    goto :goto_0

    .line 984
    :cond_4
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 985
    iget-object v1, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static getPluginCodeVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1268
    const-string v3, "-1"

    .line 1270
    .local v3, "versionCode":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 1271
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1274
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v5, "com.samsung.android.hostmanager"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1275
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v5, "NotificationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HostManager application versionCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " versionName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    move-object v4, v3

    .line 1283
    .end local v3    # "versionCode":Ljava/lang/String;
    .local v4, "versionCode":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 1277
    .end local v4    # "versionCode":Ljava/lang/String;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "versionCode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1278
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "NotificationManager"

    const-string v6, "NameNotFoundException!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v4, v3

    .line 1280
    .end local v3    # "versionCode":Ljava/lang/String;
    .restart local v4    # "versionCode":Ljava/lang/String;
    goto :goto_0
.end method

.method private init(Ljava/lang/String;)V
    .locals 9
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 101
    iput-boolean v6, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->isInitialized:Z

    .line 102
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    .line 103
    iput-object p1, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mDeviceId:Ljava/lang/String;

    .line 105
    iget-object v6, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mDeviceId:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "deviceType":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 107
    iput-boolean v7, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->isInitialized:Z

    .line 108
    const-string v6, "NotificationManager"

    const-string v7, "NotificationManager() deviceType is null... cannot get deviceType!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/notification/Utils;->isDefaultOff()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 113
    iput-boolean v7, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mDefault:Z

    .line 116
    :cond_1
    const-string v6, "1"

    iget-object v7, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mDeviceId:Ljava/lang/String;

    const-string v8, "Messaging/SupportVZW+"

    invoke-static {v7, v8}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getAppFeatureWearable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mIsVZWMessageSupported:Z

    .line 118
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getConnectedType(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mConnectedType:I

    .line 120
    iget-object v6, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->setNotificationAccess(Landroid/content/Context;)V

    .line 122
    const-string v6, "NotificationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "pathToFiles":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "baseF":Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 128
    .local v1, "baseFolderCreated":Z
    const-string v6, "NotificationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "base folder ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] was created = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v1    # "baseFolderCreated":Z
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "notification_alertnotifications.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_ALERT_NOTIFICATIONS:Ljava/lang/String;

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "notification_normalnotifications.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_NORMAL_NOTIFICATIONS:Ljava/lang/String;

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "notification_morenotifications.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_MORE_NOTIFICATIONS:Ljava/lang/String;

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "notification_settings.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_SETTINGS_NOTIFICATIONS:Ljava/lang/String;

    .line 136
    const-string v6, "NotificationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XML_ALERT_NOTIFICATIONS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_ALERT_NOTIFICATIONS:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v6, "NotificationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XML_NORMAL_NOTIFICATIONS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_NORMAL_NOTIFICATIONS:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v6, "NotificationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XML_MORE_NOTIFICATIONS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_MORE_NOTIFICATIONS:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v6, 0x1

    :try_start_0
    invoke-direct {p0, v6}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->readXML(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 142
    const-string v6, "NotificationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_ALERT_NOTIFICATIONS:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] does not exist, so let\'s copy from assets folder"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->getAlertNotificationPredefinedXMLFileName()Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "srcFile":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_ALERT_NOTIFICATIONS:Ljava/lang/String;

    invoke-direct {p0, v6, v5, v7}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->copyFileFromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v6, "NotificationManager"

    const-string v7, "copied, try to parse"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->readXML(I)Z

    .line 148
    .end local v5    # "srcFile":Ljava/lang/String;
    :cond_3
    const-string v6, "NotificationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_ALERT_NOTIFICATIONS:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] parsed correctly"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->readXML(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 151
    const-string v6, "NotificationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_NORMAL_NOTIFICATIONS:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] does not exist, so let\'s copy from assets folder"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->getNormalNotificationPredefinedXMLFileName()Ljava/lang/String;

    move-result-object v5

    .line 153
    .restart local v5    # "srcFile":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_NORMAL_NOTIFICATIONS:Ljava/lang/String;

    invoke-direct {p0, v6, v5, v7}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->copyFileFromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v6, "NotificationManager"

    const-string v7, "copied, try to parse"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->readXML(I)Z

    .line 157
    .end local v5    # "srcFile":Ljava/lang/String;
    :cond_4
    const-string v6, "NotificationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_NORMAL_NOTIFICATIONS:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] parsed correctly"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->readXML(I)Z

    .line 161
    new-instance v6, Lcom/samsung/android/hostmanager/notification/NotificationManager$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/hostmanager/notification/NotificationManager$1;-><init>(Lcom/samsung/android/hostmanager/notification/NotificationManager;)V

    .line 166
    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/notification/NotificationManager$1;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 167
    :catch_0
    move-exception v3

    .line 168
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "NotificationManager"

    const-string v7, "Exception while loading app list"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private isAlertTypeSupported(Ljava/lang/String;)Z
    .locals 7
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 217
    const-string v0, "Notifications/AlertType"

    .line 221
    .local v0, "ALERT_TYPE":Ljava/lang/String;
    const-string v4, "Notifications/AlertType"

    invoke-static {p1, v4}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getAppFeatureWearable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "alertTypeStr":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 224
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 229
    .local v2, "intAlertType":Ljava/lang/Integer;
    :goto_0
    const-string v4, "NotificationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intAlertType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 226
    .end local v2    # "intAlertType":Ljava/lang/Integer;
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .restart local v2    # "intAlertType":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private isSummaryPanelSupported(Ljava/lang/String;)Z
    .locals 7
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 201
    const-string v0, "Notifications/SummaryPannel"

    .line 205
    .local v0, "SUMMARY_PANEL":Ljava/lang/String;
    const-string v4, "Notifications/SummaryPannel"

    invoke-static {p1, v4}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getAppFeatureWearable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "summaryPanelStr":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 207
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 212
    .local v1, "intSummaryPanel":Ljava/lang/Integer;
    :goto_0
    const-string v4, "NotificationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intSummaryPanel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 209
    .end local v1    # "intSummaryPanel":Ljava/lang/Integer;
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "intSummaryPanel":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private printNotificationListInformation(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    if-eqz p1, :cond_0

    .line 329
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .line 330
    .local v0, "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    const-string v3, "NotificationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app: getPackageName ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], getAppId ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getAppId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], getLabel ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], getMark ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getMark()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], getMaxByte ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getMaxByte()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    .end local v0    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/util/ConcurrentModificationException;
    const-string v2, "NotificationManager"

    const-string v3, "printNotificationListInformation() ConcurrentModificationException occured."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .end local v1    # "e":Ljava/util/ConcurrentModificationException;
    :cond_0
    return-void
.end method

.method private printNotificationSetting(Lcom/samsung/android/hostmanager/aidl/NotificationSettings;)V
    .locals 3
    .param p1, "notificaionSetting"    # Lcom/samsung/android/hostmanager/aidl/NotificationSettings;

    .prologue
    .line 1223
    if-eqz p1, :cond_0

    .line 1224
    const-string v0, "NotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNotificationSettings :: notificaionSetting.isOn() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->isOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    const-string v0, "NotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNotificationSettings :: notificaionSetting.getPreviewMessage() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->getPreviewMessage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const-string v0, "NotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNotificationSettings :: notificaionSetting.getLimitNotification() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->getLimitNotification()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const-string v0, "NotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNotificationSettings :: notificaionSetting.getScreenOnoff() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->getScreenOnoff()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const-string v0, "NotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNotificationSettings :: notificaionSetting.getSummaryPanel() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->getSummaryPanel()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_0
    return-void
.end method

.method private readXML(I)Z
    .locals 29
    .param p1, "flags"    # I

    .prologue
    .line 570
    const/16 v21, 0x1

    .line 571
    .local v21, "res":Z
    const/4 v13, 0x0

    .line 572
    .local v13, "loadfile":Ljava/io/File;
    const/16 v24, 0x0

    .line 586
    .local v24, "xmlData":Ljava/io/InputStream;
    and-int/lit8 v26, p1, 0x2

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 587
    new-instance v13, Ljava/io/File;

    .end local v13    # "loadfile":Ljava/io/File;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_MORE_NOTIFICATIONS:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    .restart local v13    # "loadfile":Ljava/io/File;
    :cond_0
    :goto_0
    const-string v26, "NotificationManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "read "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    if-eqz v13, :cond_8

    .line 598
    :try_start_0
    new-instance v25, Ljava/io/BufferedInputStream;

    new-instance v26, Ljava/io/FileInputStream;

    move-object/from16 v0, v26

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v25 .. v26}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 599
    .end local v24    # "xmlData":Ljava/io/InputStream;
    .local v25, "xmlData":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 600
    .local v6, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v22

    .line 603
    .local v22, "root":Lorg/w3c/dom/Document;
    const-string v26, "entry"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 605
    .local v3, "InformationNode":Lorg/w3c/dom/NodeList;
    and-int/lit8 v26, p1, 0x2

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->moreNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->moreNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 619
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/hostmanager/status/StatusUtils;->supportMessaging(Landroid/content/Context;)Z

    move-result v11

    .line 620
    .local v11, "isSupportMessaging":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/hostmanager/status/StatusUtils;->supportTelephony(Landroid/content/Context;)Z

    move-result v12

    .line 622
    .local v12, "isSupportTelephony":Z
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 623
    .local v4, "InformationNode_count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v4, :cond_12

    .line 624
    const-string v26, "package"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 625
    .local v20, "nodeList":Lorg/w3c/dom/NodeList;
    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 626
    .local v8, "element":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v19

    .line 628
    .local v19, "mPackname":Ljava/lang/String;
    const-string v26, "entryname"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 629
    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .end local v8    # "element":Lorg/w3c/dom/Element;
    check-cast v8, Lorg/w3c/dom/Element;

    .line 630
    .restart local v8    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v15

    .line 632
    .local v15, "mEntryname":Ljava/lang/String;
    const-string v26, "id"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 633
    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .end local v8    # "element":Lorg/w3c/dom/Element;
    check-cast v8, Lorg/w3c/dom/Element;

    .line 634
    .restart local v8    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 636
    .local v16, "mId":I
    const-string v26, "maxByte"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 637
    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .end local v8    # "element":Lorg/w3c/dom/Element;
    check-cast v8, Lorg/w3c/dom/Element;

    .line 638
    .restart local v8    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 640
    .local v18, "mMaxByte":I
    const-string v26, "marked"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 641
    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .end local v8    # "element":Lorg/w3c/dom/Element;
    check-cast v8, Lorg/w3c/dom/Element;

    .line 642
    .restart local v8    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v17

    .line 644
    .local v17, "mMarked":Ljava/lang/String;
    const-string v26, "NotificationManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Read: mPackname : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " mEntryname : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "   mId : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " mMarked : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/notification/Utils;->getLocaleApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 647
    .local v14, "localeApplication":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 648
    move-object v15, v14

    .line 651
    :cond_2
    new-instance v5, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v26

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v5, v0, v15, v1, v2}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 652
    .local v5, "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->setAppId(I)V

    .line 654
    if-nez v11, :cond_a

    const-string v26, "messages"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v26

    if-eqz v26, :cond_a

    .line 623
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 588
    .end local v3    # "InformationNode":Lorg/w3c/dom/NodeList;
    .end local v4    # "InformationNode_count":I
    .end local v5    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "i":I
    .end local v11    # "isSupportMessaging":Z
    .end local v12    # "isSupportTelephony":Z
    .end local v14    # "localeApplication":Ljava/lang/String;
    .end local v15    # "mEntryname":Ljava/lang/String;
    .end local v16    # "mId":I
    .end local v17    # "mMarked":Ljava/lang/String;
    .end local v18    # "mMaxByte":I
    .end local v19    # "mPackname":Ljava/lang/String;
    .end local v20    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v22    # "root":Lorg/w3c/dom/Document;
    .end local v25    # "xmlData":Ljava/io/InputStream;
    .restart local v24    # "xmlData":Ljava/io/InputStream;
    :cond_4
    and-int/lit8 v26, p1, 0x4

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    .line 589
    new-instance v13, Ljava/io/File;

    .end local v13    # "loadfile":Ljava/io/File;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_NORMAL_NOTIFICATIONS:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v13    # "loadfile":Ljava/io/File;
    goto/16 :goto_0

    .line 590
    :cond_5
    and-int/lit8 v26, p1, 0x1

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 591
    new-instance v13, Ljava/io/File;

    .end local v13    # "loadfile":Ljava/io/File;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_ALERT_NOTIFICATIONS:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v13    # "loadfile":Ljava/io/File;
    goto/16 :goto_0

    .line 609
    .end local v24    # "xmlData":Ljava/io/InputStream;
    .restart local v3    # "InformationNode":Lorg/w3c/dom/NodeList;
    .restart local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v22    # "root":Lorg/w3c/dom/Document;
    .restart local v25    # "xmlData":Ljava/io/InputStream;
    :cond_6
    and-int/lit8 v26, p1, 0x4

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 610
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->normalNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->normalNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 705
    .end local v3    # "InformationNode":Lorg/w3c/dom/NodeList;
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v22    # "root":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v7

    move-object/from16 v24, v25

    .line 706
    .end local v25    # "xmlData":Ljava/io/InputStream;
    .local v7, "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v24    # "xmlData":Ljava/io/InputStream;
    :goto_4
    :try_start_3
    const-string v26, "NotificationManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "ParserConfigurationException e = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 713
    if-eqz v24, :cond_7

    .line 715
    :try_start_4
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 721
    .end local v7    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_7
    :goto_5
    const/16 v23, 0x0

    .line 722
    .local v23, "size":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_16

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 727
    :goto_6
    const-string v26, "NotificationManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "read alert_notification.xml is finished, list size is ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->normalNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_17

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->normalNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 734
    :goto_7
    const-string v26, "NotificationManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "read normal_notification.xml is finished, list size is ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->moreNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_18

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->moreNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 741
    :goto_8
    const-string v26, "NotificationManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "read more_notification.xml is finished, list size is ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    .end local v23    # "size":I
    :cond_8
    return v21

    .line 613
    .end local v24    # "xmlData":Ljava/io/InputStream;
    .restart local v3    # "InformationNode":Lorg/w3c/dom/NodeList;
    .restart local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v22    # "root":Lorg/w3c/dom/Document;
    .restart local v25    # "xmlData":Ljava/io/InputStream;
    :cond_9
    and-int/lit8 v26, p1, 0x1

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 614
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V
    :try_end_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 707
    .end local v3    # "InformationNode":Lorg/w3c/dom/NodeList;
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v22    # "root":Lorg/w3c/dom/Document;
    :catch_1
    move-exception v7

    move-object/from16 v24, v25

    .line 708
    .end local v25    # "xmlData":Ljava/io/InputStream;
    .local v7, "e":Ljava/lang/RuntimeException;
    .restart local v24    # "xmlData":Ljava/io/InputStream;
    :goto_9
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 713
    if-eqz v24, :cond_7

    .line 715
    :try_start_7
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_5

    .line 716
    :catch_2
    move-exception v10

    .line 717
    .local v10, "ioe":Ljava/io/IOException;
    const-string v26, "NotificationManager"

    const-string v27, "XML file Close FAIL!!!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 658
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "ioe":Ljava/io/IOException;
    .end local v24    # "xmlData":Ljava/io/InputStream;
    .restart local v3    # "InformationNode":Lorg/w3c/dom/NodeList;
    .restart local v4    # "InformationNode_count":I
    .restart local v5    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .restart local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "element":Lorg/w3c/dom/Element;
    .restart local v9    # "i":I
    .restart local v11    # "isSupportMessaging":Z
    .restart local v12    # "isSupportTelephony":Z
    .restart local v14    # "localeApplication":Ljava/lang/String;
    .restart local v15    # "mEntryname":Ljava/lang/String;
    .restart local v16    # "mId":I
    .restart local v17    # "mMarked":Ljava/lang/String;
    .restart local v18    # "mMaxByte":I
    .restart local v19    # "mPackname":Ljava/lang/String;
    .restart local v20    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v22    # "root":Lorg/w3c/dom/Document;
    .restart local v25    # "xmlData":Ljava/io/InputStream;
    :cond_a
    if-nez v12, :cond_b

    :try_start_8
    const-string v26, "call"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    const-string v26, "missedcall"

    .line 659
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    const-string v26, "voicemail"

    .line 660
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 664
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/notification/Utils;->isInstalledDefaultApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 668
    and-int/lit8 v26, p1, 0x2

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->moreNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->moreNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    .line 709
    .end local v3    # "InformationNode":Lorg/w3c/dom/NodeList;
    .end local v4    # "InformationNode_count":I
    .end local v5    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "i":I
    .end local v11    # "isSupportMessaging":Z
    .end local v12    # "isSupportTelephony":Z
    .end local v14    # "localeApplication":Ljava/lang/String;
    .end local v15    # "mEntryname":Ljava/lang/String;
    .end local v16    # "mId":I
    .end local v17    # "mMarked":Ljava/lang/String;
    .end local v18    # "mMaxByte":I
    .end local v19    # "mPackname":Ljava/lang/String;
    .end local v20    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v22    # "root":Lorg/w3c/dom/Document;
    :catch_3
    move-exception v7

    move-object/from16 v24, v25

    .line 710
    .end local v25    # "xmlData":Ljava/io/InputStream;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v24    # "xmlData":Ljava/io/InputStream;
    :goto_a
    const/16 v21, 0x0

    .line 711
    :try_start_9
    const-string v26, "NotificationManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "There is no file ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 713
    if-eqz v24, :cond_7

    .line 715
    :try_start_a
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_5

    .line 716
    :catch_4
    move-exception v10

    .line 717
    .restart local v10    # "ioe":Ljava/io/IOException;
    const-string v26, "NotificationManager"

    const-string v27, "XML file Close FAIL!!!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 672
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "ioe":Ljava/io/IOException;
    .end local v24    # "xmlData":Ljava/io/InputStream;
    .restart local v3    # "InformationNode":Lorg/w3c/dom/NodeList;
    .restart local v4    # "InformationNode_count":I
    .restart local v5    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .restart local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "element":Lorg/w3c/dom/Element;
    .restart local v9    # "i":I
    .restart local v11    # "isSupportMessaging":Z
    .restart local v12    # "isSupportTelephony":Z
    .restart local v14    # "localeApplication":Ljava/lang/String;
    .restart local v15    # "mEntryname":Ljava/lang/String;
    .restart local v16    # "mId":I
    .restart local v17    # "mMarked":Ljava/lang/String;
    .restart local v18    # "mMaxByte":I
    .restart local v19    # "mPackname":Ljava/lang/String;
    .restart local v20    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v22    # "root":Lorg/w3c/dom/Document;
    .restart local v25    # "xmlData":Ljava/io/InputStream;
    :cond_c
    :try_start_b
    const-string v26, "NotificationManager"

    const-string v27, "readXML :: moreNotificationsListApp is NULL"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    .line 713
    .end local v3    # "InformationNode":Lorg/w3c/dom/NodeList;
    .end local v4    # "InformationNode_count":I
    .end local v5    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "i":I
    .end local v11    # "isSupportMessaging":Z
    .end local v12    # "isSupportTelephony":Z
    .end local v14    # "localeApplication":Ljava/lang/String;
    .end local v15    # "mEntryname":Ljava/lang/String;
    .end local v16    # "mId":I
    .end local v17    # "mMarked":Ljava/lang/String;
    .end local v18    # "mMaxByte":I
    .end local v19    # "mPackname":Ljava/lang/String;
    .end local v20    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v22    # "root":Lorg/w3c/dom/Document;
    :catchall_0
    move-exception v26

    move-object/from16 v24, v25

    .end local v25    # "xmlData":Ljava/io/InputStream;
    .restart local v24    # "xmlData":Ljava/io/InputStream;
    :goto_b
    if-eqz v24, :cond_d

    .line 715
    :try_start_c
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 718
    :cond_d
    :goto_c
    throw v26

    .line 674
    .end local v24    # "xmlData":Ljava/io/InputStream;
    .restart local v3    # "InformationNode":Lorg/w3c/dom/NodeList;
    .restart local v4    # "InformationNode_count":I
    .restart local v5    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .restart local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "element":Lorg/w3c/dom/Element;
    .restart local v9    # "i":I
    .restart local v11    # "isSupportMessaging":Z
    .restart local v12    # "isSupportTelephony":Z
    .restart local v14    # "localeApplication":Ljava/lang/String;
    .restart local v15    # "mEntryname":Ljava/lang/String;
    .restart local v16    # "mId":I
    .restart local v17    # "mMarked":Ljava/lang/String;
    .restart local v18    # "mMaxByte":I
    .restart local v19    # "mPackname":Ljava/lang/String;
    .restart local v20    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v22    # "root":Lorg/w3c/dom/Document;
    .restart local v25    # "xmlData":Ljava/io/InputStream;
    :cond_e
    and-int/lit8 v26, p1, 0x4

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    .line 675
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->normalNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_f

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->normalNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 678
    :cond_f
    const-string v26, "NotificationManager"

    const-string v27, "readXML :: normalNotificationsListApp is NULL"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 680
    :cond_10
    and-int/lit8 v26, p1, 0x1

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_11

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 684
    :cond_11
    const-string v26, "NotificationManager"

    const-string v27, "readXML :: alertNotificationsListApp is NULL"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 689
    .end local v5    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .end local v8    # "element":Lorg/w3c/dom/Element;
    .end local v14    # "localeApplication":Ljava/lang/String;
    .end local v15    # "mEntryname":Ljava/lang/String;
    .end local v16    # "mId":I
    .end local v17    # "mMarked":Ljava/lang/String;
    .end local v18    # "mMaxByte":I
    .end local v19    # "mPackname":Ljava/lang/String;
    .end local v20    # "nodeList":Lorg/w3c/dom/NodeList;
    :cond_12
    and-int/lit8 v26, p1, 0x1

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_13

    .line 690
    invoke-static {}, Lcom/samsung/android/hostmanager/notification/Utils;->isSamsungDevice()Z

    move-result v26

    if-eqz v26, :cond_15

    .line 691
    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_14

    .line 692
    const-string v26, "NotificationManager"

    const-string v27, "Alert notis should be 3"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 693
    const/16 v21, 0x0

    .line 713
    :cond_13
    :goto_d
    if-eqz v25, :cond_19

    .line 715
    :try_start_e
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    move-object/from16 v24, v25

    .line 718
    .end local v25    # "xmlData":Ljava/io/InputStream;
    .restart local v24    # "xmlData":Ljava/io/InputStream;
    goto/16 :goto_5

    .line 694
    .end local v24    # "xmlData":Ljava/io/InputStream;
    .restart local v25    # "xmlData":Ljava/io/InputStream;
    :cond_14
    if-nez v12, :cond_13

    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_13

    .line 695
    const-string v26, "NotificationManager"

    const-string v27, "Alert notis should be 2 (not support telephony)"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/16 v21, 0x0

    goto :goto_d

    .line 699
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_13

    .line 700
    const-string v26, "NotificationManager"

    const-string v27, "Alert notis should be 1 - nonsamsung"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 701
    const/16 v21, 0x0

    goto :goto_d

    .line 716
    :catch_5
    move-exception v10

    .line 717
    .restart local v10    # "ioe":Ljava/io/IOException;
    const-string v26, "NotificationManager"

    const-string v27, "XML file Close FAIL!!!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v24, v25

    .line 718
    .end local v25    # "xmlData":Ljava/io/InputStream;
    .restart local v24    # "xmlData":Ljava/io/InputStream;
    goto/16 :goto_5

    .line 716
    .end local v3    # "InformationNode":Lorg/w3c/dom/NodeList;
    .end local v4    # "InformationNode_count":I
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v9    # "i":I
    .end local v10    # "ioe":Ljava/io/IOException;
    .end local v11    # "isSupportMessaging":Z
    .end local v12    # "isSupportTelephony":Z
    .end local v22    # "root":Lorg/w3c/dom/Document;
    .local v7, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_6
    move-exception v10

    .line 717
    .restart local v10    # "ioe":Ljava/io/IOException;
    const-string v26, "NotificationManager"

    const-string v27, "XML file Close FAIL!!!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 716
    .end local v7    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v10    # "ioe":Ljava/io/IOException;
    :catch_7
    move-exception v10

    .line 717
    .restart local v10    # "ioe":Ljava/io/IOException;
    const-string v27, "NotificationManager"

    const-string v28, "XML file Close FAIL!!!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 725
    .end local v10    # "ioe":Ljava/io/IOException;
    .restart local v23    # "size":I
    :cond_16
    const-string v26, "NotificationManager"

    const-string v27, "ALERT Notifications app list is NULL"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 732
    :cond_17
    const-string v26, "NotificationManager"

    const-string v27, "NORMAL Notifications app list is NULL"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 739
    :cond_18
    const-string v26, "NotificationManager"

    const-string v27, "MORE Notifications app list is NULL"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 713
    .end local v23    # "size":I
    :catchall_1
    move-exception v26

    goto/16 :goto_b

    .line 709
    :catch_8
    move-exception v7

    goto/16 :goto_a

    .line 707
    :catch_9
    move-exception v7

    goto/16 :goto_9

    .line 705
    :catch_a
    move-exception v7

    goto/16 :goto_4

    .end local v24    # "xmlData":Ljava/io/InputStream;
    .restart local v3    # "InformationNode":Lorg/w3c/dom/NodeList;
    .restart local v4    # "InformationNode_count":I
    .restart local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v9    # "i":I
    .restart local v11    # "isSupportMessaging":Z
    .restart local v12    # "isSupportTelephony":Z
    .restart local v22    # "root":Lorg/w3c/dom/Document;
    .restart local v25    # "xmlData":Ljava/io/InputStream;
    :cond_19
    move-object/from16 v24, v25

    .end local v25    # "xmlData":Ljava/io/InputStream;
    .restart local v24    # "xmlData":Ljava/io/InputStream;
    goto/16 :goto_5
.end method

.method private saveAppMarkedList(ILjava/util/ArrayList;)V
    .locals 17
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 770
    .local p2, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    const-string v13, "NotificationManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saveAppMarkedList for = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const-string v13, "NotificationManager"

    const-string v14, "CREATE XML FILE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    .line 780
    .local v10, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v9

    .line 782
    .local v9, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 783
    .local v1, "doc":Lorg/w3c/dom/Document;
    const/4 v12, 0x0

    .line 785
    .local v12, "rootElement":Lorg/w3c/dom/Element;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .line 786
    .local v8, "anAppList":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 787
    .local v2, "mPackname":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 788
    .local v3, "mEntryname":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getAppId()I

    move-result v4

    .line 789
    .local v4, "mId":I
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getMaxByte()I

    move-result v5

    .line 790
    .local v5, "mMaxByte":I
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getMark()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    .line 792
    .local v6, "mNotification":Ljava/lang/String;
    const-string v14, "NotificationManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Packname : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "   mNotification : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->createNotificaitonItemForXML(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 794
    .local v7, "Items":Lorg/w3c/dom/Element;
    if-nez v12, :cond_0

    .line 795
    const-string v14, "notifications"

    invoke-interface {v1, v14}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 796
    invoke-interface {v1, v12}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 799
    :cond_0
    invoke-interface {v12, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 801
    .end local v2    # "mPackname":Ljava/lang/String;
    .end local v3    # "mEntryname":Ljava/lang/String;
    .end local v4    # "mId":I
    .end local v5    # "mMaxByte":I
    .end local v6    # "mNotification":Ljava/lang/String;
    .end local v7    # "Items":Lorg/w3c/dom/Element;
    .end local v8    # "anAppList":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :cond_1
    const/4 v11, 0x0

    .line 802
    .local v11, "filename":Ljava/lang/String;
    and-int/lit8 v13, p1, 0x2

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 803
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_MORE_NOTIFICATIONS:Ljava/lang/String;

    .line 809
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->saveDocToXMLFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 810
    return-void

    .line 804
    :cond_3
    and-int/lit8 v13, p1, 0x4

    const/4 v14, 0x4

    if-ne v13, v14, :cond_4

    .line 805
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_NORMAL_NOTIFICATIONS:Ljava/lang/String;

    goto :goto_1

    .line 806
    :cond_4
    and-int/lit8 v13, p1, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 807
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_ALERT_NOTIFICATIONS:Ljava/lang/String;

    goto :goto_1
.end method

.method private saveDocToXMLFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .locals 10
    .param p1, "root"    # Lorg/w3c/dom/Document;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 815
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v7

    .line 816
    .local v7, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v7}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v6

    .line 818
    .local v6, "transformer":Ljavax/xml/transform/Transformer;
    const-string v8, "encoding"

    const-string v9, "utf-8"

    invoke-virtual {v6, v8, v9}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string v8, "indent"

    const-string v9, "yes"

    invoke-virtual {v6, v8, v9}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v5, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 822
    .local v5, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 825
    .local v3, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 827
    .local v1, "fOs":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 828
    .end local v1    # "fOs":Ljava/io/FileOutputStream;
    .local v2, "fOs":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v4, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 829
    .local v4, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v6, v5, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 831
    if-eqz v2, :cond_0

    .line 832
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 844
    .end local v2    # "fOs":Ljava/io/FileOutputStream;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v5    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v6    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v7    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_0
    :goto_0
    return-void

    .line 831
    .restart local v1    # "fOs":Ljava/io/FileOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v6    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v7    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catchall_0
    move-exception v8

    :goto_1
    if-eqz v1, :cond_1

    .line 832
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw v8
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 836
    .end local v1    # "fOs":Ljava/io/FileOutputStream;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v6    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v7    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 838
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 839
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_0

    .line 840
    .end local v0    # "e":Ljavax/xml/transform/TransformerException;
    :catch_2
    move-exception v0

    .line 841
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 831
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fOs":Ljava/io/FileOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v6    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v7    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "fOs":Ljava/io/FileOutputStream;
    .restart local v1    # "fOs":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private saveListInThread(ILjava/util/ArrayList;)V
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 749
    .local p2, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    const-string v0, "NotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveListInThread, isListCreated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->isListCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->isListCreated:Z

    if-eqz v0, :cond_0

    .line 751
    new-instance v0, Lcom/samsung/android/hostmanager/notification/NotificationManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/hostmanager/notification/NotificationManager$2;-><init>(Lcom/samsung/android/hostmanager/notification/NotificationManager;ILjava/util/ArrayList;)V

    .line 762
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/notification/NotificationManager$2;->start()V

    .line 766
    :goto_0
    return-void

    .line 764
    :cond_0
    const-string v0, "NotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveListInThread, isListCreated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->isListCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", so we can not perform saving to xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAppMarked(ILjava/lang/String;Z)Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .locals 6
    .param p1, "flags"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "marked"    # Z

    .prologue
    .line 383
    const/4 v3, 0x0

    .line 385
    .local v3, "res":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    const/4 v2, 0x0

    .line 386
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 387
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->moreNotificationsListApp:Ljava/util/ArrayList;

    .line 393
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 394
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .line 395
    .local v0, "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 396
    move-object v3, v0

    .line 397
    invoke-virtual {v0, p3}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->setMark(Z)V

    .line 400
    :try_start_0
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->saveListInThread(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v0    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :cond_2
    :goto_1
    return-object v3

    .line 388
    :cond_3
    and-int/lit8 v4, p1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 389
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->normalNotificationsListApp:Ljava/util/ArrayList;

    goto :goto_0

    .line 390
    :cond_4
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 391
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    goto :goto_0

    .line 401
    .restart local v0    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setNotificationAccess(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1233
    const-string v4, "NotificationManager"

    const-string v5, "setNotificationAccess"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/4 v2, 0x0

    .line 1236
    .local v2, "bUpdate":Z
    const-string v1, "first_installed"

    .line 1238
    .local v1, "PREF_FIRST_INSTALLED":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->getPluginCodeVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "HOSTMANAGER_GLOBAL_PREFERENCE"

    invoke-static {p1, v5, v1}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1239
    const-string v4, "NotificationManager"

    const-string v5, "setNotificationAccess : PREF_FIRST_INSTALLED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const-string v4, "HOSTMANAGER_GLOBAL_PREFERENCE"

    invoke-static {p1}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->getPluginCodeVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v1, v5}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->updatePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    invoke-static {}, Lcom/samsung/android/hostmanager/notification/Utils;->isSamsungDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-le v4, v5, :cond_1

    .line 1243
    const-string v4, "NotificationManager"

    const-string v5, "Turn Notification access on with user agreement for the first time"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->ENABLED_NOTIFICATION_LISTENERS()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1245
    .local v3, "notificationAccessSetting":Ljava/lang/String;
    const-string v4, "NotificationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Before set, notificationAccessSetting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    const-string v0, "com.samsung.accessory.goproviders/com.samsung.accessory.goproviders.sanotificationservice.SANotificationServiceSystemNotificationListener"

    .line 1248
    .local v0, "NOTIFICATION_LISTENER":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1249
    move-object v3, v0

    .line 1250
    const/4 v2, 0x1

    .line 1260
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1261
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/settings/SystemSettingsFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/settings/SystemSettingsInterface;->ENABLED_NOTIFICATION_LISTENERS()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1262
    const-string v4, "NotificationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "After set, notificationAccessSetting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    .end local v0    # "NOTIFICATION_LISTENER":Ljava/lang/String;
    .end local v3    # "notificationAccessSetting":Ljava/lang/String;
    :cond_1
    return-void

    .line 1251
    .restart local v0    # "NOTIFICATION_LISTENER":Ljava/lang/String;
    .restart local v3    # "notificationAccessSetting":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1252
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 1253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1257
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1255
    :cond_3
    move-object v3, v0

    goto :goto_1
.end method

.method private updateAppName(ILandroid/content/Context;)V
    .locals 5
    .param p1, "flags"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1014
    const/4 v2, 0x0

    .line 1015
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1016
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    .line 1023
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1024
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1025
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1026
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .line 1027
    .local v0, "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->updateAppNameForNotificationApp(Landroid/content/Context;Lcom/samsung/android/hostmanager/aidl/NotificationApp;)V

    goto :goto_1

    .line 1017
    .end local v0    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    :cond_1
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1018
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->moreNotificationsListApp:Ljava/util/ArrayList;

    goto :goto_0

    .line 1019
    :cond_2
    and-int/lit8 v3, p1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 1020
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->normalNotificationsListApp:Ljava/util/ArrayList;

    goto :goto_0

    .line 1030
    :cond_3
    return-void
.end method

.method private updateAppNameForNotificationApp(Landroid/content/Context;Lcom/samsung/android/hostmanager/aidl/NotificationApp;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app"    # Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .prologue
    .line 1033
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1035
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1036
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->setLabel(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 1037
    :catch_0
    move-exception v1

    .line 1038
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1040
    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/samsung/android/hostmanager/notification/Utils;->getLocaleApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1041
    .local v2, "localeApplication":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1042
    invoke-virtual {p2, v2}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->setLabel(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addToList(Ljava/util/ArrayList;Lcom/samsung/android/hostmanager/aidl/NotificationApp;)V
    .locals 5
    .param p2, "app"    # Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    const/4 v0, 0x1

    .line 445
    .local v0, "addPackage":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .line 446
    .local v1, "appElement":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    const/4 v0, 0x0

    .line 450
    .end local v1    # "appElement":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :cond_1
    if-eqz v0, :cond_2

    .line 451
    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->getAppId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->setAppId(I)V

    .line 452
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_2
    return-void
.end method

.method public checkNormalNotification(Ljava/util/ArrayList;Lcom/samsung/android/hostmanager/aidl/NotificationApp;Z)Z
    .locals 6
    .param p2, "app"    # Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .param p3, "defaultSet"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 874
    .local p1, "normalNotiListApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    const/4 v2, 0x0

    .line 875
    .local v2, "res":Z
    iget-object v3, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/notification/Utils;->isEligibleForNormalNotification(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 876
    const-string v3, "NotificationManager"

    const-string v4, "It has Enable Notification permission, skip."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/samsung/android/hostmanager/notification/Utils;->isExistApp(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    move-result-object v0

    .line 879
    .local v0, "helperApp":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    if-eqz v0, :cond_0

    .line 880
    iget-object v3, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->updateAppNameForNotificationApp(Landroid/content/Context;Lcom/samsung/android/hostmanager/aidl/NotificationApp;)V

    .line 883
    :cond_0
    if-nez v0, :cond_5

    .line 885
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/notification/Utils;->hasNotificationMaxByteInManifest(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 886
    .local v1, "maxByteApp":I
    if-ltz v1, :cond_1

    .line 887
    invoke-virtual {p2, v1}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->setMaxByte(I)V

    .line 890
    :cond_1
    if-nez v0, :cond_3

    .line 891
    if-eqz p3, :cond_2

    .line 892
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->setMark(Z)V

    .line 894
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->addToList(Ljava/util/ArrayList;Lcom/samsung/android/hostmanager/aidl/NotificationApp;)V

    .line 895
    const-string v3, "NotificationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "to normal list added pkg ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_3
    const/4 v2, 0x1

    .line 899
    .end local v0    # "helperApp":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .end local v1    # "maxByteApp":I
    :cond_4
    return v2

    .restart local v0    # "helperApp":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :cond_5
    move-object p2, v0

    .line 883
    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->isListCreated:Z

    .line 92
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->isInitialized:Z

    .line 93
    const-string v0, "NotificationManager"

    const-string v1, "instance is destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public getAlertNotiAppList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 281
    const-string v2, "NotificationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAlertNotiAppList, size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mConnectedType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v1, "filteredAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    const-string v2, "NotificationManager"

    const-string v3, "getAlertNotiAppList, connected type is SCS"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .line 289
    .local v0, "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    invoke-static {v0}, Lcom/samsung/android/hostmanager/notification/Utils;->isSCSExcludeApp(Lcom/samsung/android/hostmanager/aidl/NotificationApp;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 290
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    .end local v0    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .end local v1    # "filteredAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    :cond_1
    const-string v2, "NotificationManager"

    const-string v3, "getAlertNotiAppList, alertNotificationsListApp is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    :cond_3
    return-object v1
.end method

.method public getDefaultSet(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mIsVZWMessageSupported:Z

    if-eqz v0, :cond_0

    const-string v0, "com.verizon.messaging.vzmsgs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    const/4 v0, 0x0

    .line 566
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mDefault:Z

    goto :goto_0
.end method

.method public getMoreNotiAppList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->moreNotificationsListApp:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "NotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMoreNotiAppList, size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->moreNotificationsListApp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->moreNotificationsListApp:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNormalNotiAppList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->normalNotificationsListApp:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "NotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNormalNotiAppList, size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->normalNotificationsListApp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->normalNotificationsListApp:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNotificationSettings()Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    .locals 19

    .prologue
    .line 1151
    const-string v16, "NotificationManager"

    const-string v17, "getNotificationSettings starts"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const/4 v2, 0x1

    .line 1153
    .local v2, "isOn":Z
    const/4 v3, 0x0

    .line 1154
    .local v3, "preview":I
    const/4 v4, 0x1

    .line 1155
    .local v4, "limit":Z
    const/4 v5, 0x0

    .line 1156
    .local v5, "screenOnoff":Z
    const/4 v6, 0x1

    .line 1169
    .local v6, "summaryPanel":Z
    new-instance v12, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_SETTINGS_NOTIFICATIONS:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1170
    .local v12, "loadfile":Ljava/io/File;
    const/4 v14, 0x0

    .line 1177
    .local v14, "xmlData":Ljava/io/InputStream;
    :try_start_0
    new-instance v15, Ljava/io/BufferedInputStream;

    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v15 .. v16}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1178
    .end local v14    # "xmlData":Ljava/io/InputStream;
    .local v15, "xmlData":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v8

    .line 1179
    .local v8, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v13

    .line 1181
    .local v13, "root":Lorg/w3c/dom/Document;
    const-string v16, "IS_ENABLED"

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 1182
    .local v7, "InformationNode":Lorg/w3c/dom/NodeList;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v7, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 1183
    .local v10, "element":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1185
    const-string v16, "PREVIEW_MESSAGE"

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 1186
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v7, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .end local v10    # "element":Lorg/w3c/dom/Element;
    check-cast v10, Lorg/w3c/dom/Element;

    .line 1187
    .restart local v10    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1189
    const-string v16, "LIMIT_NOTIFICATION"

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 1190
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v7, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .end local v10    # "element":Lorg/w3c/dom/Element;
    check-cast v10, Lorg/w3c/dom/Element;

    .line 1191
    .restart local v10    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1193
    const-string v16, "SCREEN_ONOFF"

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 1194
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v7, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .end local v10    # "element":Lorg/w3c/dom/Element;
    check-cast v10, Lorg/w3c/dom/Element;

    .line 1195
    .restart local v10    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1197
    const-string v16, "SUMMARY_PANEL"

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 1198
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v7, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .end local v10    # "element":Lorg/w3c/dom/Element;
    check-cast v10, Lorg/w3c/dom/Element;

    .line 1199
    .restart local v10    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 1208
    if-eqz v15, :cond_2

    .line 1210
    :try_start_2
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v14, v15

    .line 1216
    .end local v7    # "InformationNode":Lorg/w3c/dom/NodeList;
    .end local v8    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v10    # "element":Lorg/w3c/dom/Element;
    .end local v13    # "root":Lorg/w3c/dom/Document;
    .end local v15    # "xmlData":Ljava/io/InputStream;
    .restart local v14    # "xmlData":Ljava/io/InputStream;
    :cond_0
    :goto_0
    new-instance v1, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;-><init>(ZIZZZ)V

    .line 1219
    .local v1, "notificaionSetting":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    return-object v1

    .line 1211
    .end local v1    # "notificaionSetting":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    .end local v14    # "xmlData":Ljava/io/InputStream;
    .restart local v7    # "InformationNode":Lorg/w3c/dom/NodeList;
    .restart local v8    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v10    # "element":Lorg/w3c/dom/Element;
    .restart local v13    # "root":Lorg/w3c/dom/Document;
    .restart local v15    # "xmlData":Ljava/io/InputStream;
    :catch_0
    move-exception v11

    .line 1212
    .local v11, "ioe":Ljava/io/IOException;
    const-string v16, "NotificationManager"

    const-string v17, "XML file Close FAIL!!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v15

    .line 1213
    .end local v15    # "xmlData":Ljava/io/InputStream;
    .restart local v14    # "xmlData":Ljava/io/InputStream;
    goto :goto_0

    .line 1201
    .end local v7    # "InformationNode":Lorg/w3c/dom/NodeList;
    .end local v8    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v10    # "element":Lorg/w3c/dom/Element;
    .end local v11    # "ioe":Ljava/io/IOException;
    .end local v13    # "root":Lorg/w3c/dom/Document;
    :catch_1
    move-exception v9

    .line 1202
    .local v9, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_1
    :try_start_3
    const-string v16, "NotificationManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ParserConfigurationException e = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1208
    if-eqz v14, :cond_0

    .line 1210
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1211
    :catch_2
    move-exception v11

    .line 1212
    .restart local v11    # "ioe":Ljava/io/IOException;
    const-string v16, "NotificationManager"

    const-string v17, "XML file Close FAIL!!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1203
    .end local v9    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v11    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 1204
    .local v9, "e":Ljava/lang/RuntimeException;
    :goto_2
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1208
    if-eqz v14, :cond_0

    .line 1210
    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 1211
    :catch_4
    move-exception v11

    .line 1212
    .restart local v11    # "ioe":Ljava/io/IOException;
    const-string v16, "NotificationManager"

    const-string v17, "XML file Close FAIL!!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1205
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v11    # "ioe":Ljava/io/IOException;
    :catch_5
    move-exception v9

    .line 1206
    .local v9, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    const-string v16, "NotificationManager"

    const-string v17, "There is no notification_settings.xml"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1208
    if-eqz v14, :cond_0

    .line 1210
    :try_start_8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 1211
    :catch_6
    move-exception v11

    .line 1212
    .restart local v11    # "ioe":Ljava/io/IOException;
    const-string v16, "NotificationManager"

    const-string v17, "XML file Close FAIL!!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1208
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    :goto_4
    if-eqz v14, :cond_1

    .line 1210
    :try_start_9
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 1213
    :cond_1
    :goto_5
    throw v16

    .line 1211
    :catch_7
    move-exception v11

    .line 1212
    .restart local v11    # "ioe":Ljava/io/IOException;
    const-string v17, "NotificationManager"

    const-string v18, "XML file Close FAIL!!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1208
    .end local v11    # "ioe":Ljava/io/IOException;
    .end local v14    # "xmlData":Ljava/io/InputStream;
    .restart local v15    # "xmlData":Ljava/io/InputStream;
    :catchall_1
    move-exception v16

    move-object v14, v15

    .end local v15    # "xmlData":Ljava/io/InputStream;
    .restart local v14    # "xmlData":Ljava/io/InputStream;
    goto :goto_4

    .line 1205
    .end local v14    # "xmlData":Ljava/io/InputStream;
    .restart local v15    # "xmlData":Ljava/io/InputStream;
    :catch_8
    move-exception v9

    move-object v14, v15

    .end local v15    # "xmlData":Ljava/io/InputStream;
    .restart local v14    # "xmlData":Ljava/io/InputStream;
    goto :goto_3

    .line 1203
    .end local v14    # "xmlData":Ljava/io/InputStream;
    .restart local v15    # "xmlData":Ljava/io/InputStream;
    :catch_9
    move-exception v9

    move-object v14, v15

    .end local v15    # "xmlData":Ljava/io/InputStream;
    .restart local v14    # "xmlData":Ljava/io/InputStream;
    goto :goto_2

    .line 1201
    .end local v14    # "xmlData":Ljava/io/InputStream;
    .restart local v15    # "xmlData":Ljava/io/InputStream;
    :catch_a
    move-exception v9

    move-object v14, v15

    .end local v15    # "xmlData":Ljava/io/InputStream;
    .restart local v14    # "xmlData":Ljava/io/InputStream;
    goto :goto_1

    .end local v14    # "xmlData":Ljava/io/InputStream;
    .restart local v7    # "InformationNode":Lorg/w3c/dom/NodeList;
    .restart local v8    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v10    # "element":Lorg/w3c/dom/Element;
    .restart local v13    # "root":Lorg/w3c/dom/Document;
    .restart local v15    # "xmlData":Ljava/io/InputStream;
    :cond_2
    move-object v14, v15

    .end local v15    # "xmlData":Ljava/io/InputStream;
    .restart local v14    # "xmlData":Ljava/io/InputStream;
    goto/16 :goto_0
.end method

.method public getPackageNameByAppId(ILandroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "appId"    # I
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 955
    const-string v0, "com.sec.android.GeoLookout"

    .line 957
    .local v0, "GEOLOOKOUT_PACKNAME":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->getPackageNameByAppId(II)Ljava/lang/String;

    move-result-object v1

    .line 958
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 959
    const/4 v2, 0x2

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->getPackageNameByAppId(II)Ljava/lang/String;

    move-result-object v1

    .line 961
    :cond_0
    if-nez v1, :cond_1

    .line 962
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->getPackageNameByAppId(II)Ljava/lang/String;

    move-result-object v1

    .line 965
    :cond_1
    if-nez v1, :cond_2

    const-string v2, "com.sec.android.GeoLookout"

    invoke-static {p2, v2}, Lcom/samsung/android/hostmanager/notification/Utils;->getPredefinedAppId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 966
    const-string v1, "com.sec.android.GeoLookout"

    .line 969
    :cond_2
    if-nez v1, :cond_3

    .line 970
    const-string v2, "NotificationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification for appid ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_3
    return-object v1
.end method

.method public isExistAndMarked(Ljava/lang/String;I)Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notiType"    # I

    .prologue
    const/4 v3, 0x0

    .line 904
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 905
    :cond_0
    const-string v4, "NotificationManager"

    const-string v5, "packageName is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 950
    :cond_1
    :goto_0
    return-object v1

    .line 908
    :cond_2
    const/4 v2, 0x0

    .line 910
    .local v2, "setting":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->getNotificationSettings()Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 914
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->isOn()Z

    move-result v4

    if-nez v4, :cond_4

    .line 915
    :cond_3
    const-string v4, "NotificationManager"

    const-string v5, "Notifications are disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 916
    goto :goto_0

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "NotificationManager"

    const-string v5, "Exception while isExistAndMarked :: getNotificationSettings"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 919
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 920
    iget-object v4, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/notification/BlockingMode;->isAlarmBlocked(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 921
    const-string v4, "NotificationManager"

    const-string v5, "BlockingMode for ALARM is turned on"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 922
    goto :goto_0

    .line 924
    :cond_5
    const-string v4, "call"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "missedcall"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 936
    :cond_6
    const/4 v1, 0x0

    .line 937
    .local v1, "res":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    and-int/lit8 v4, p2, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    .line 938
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->getNormalNotiAppList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/samsung/android/hostmanager/notification/Utils;->isExistApp(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    move-result-object v1

    .line 940
    :cond_7
    if-nez v1, :cond_8

    and-int/lit8 v4, p2, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    .line 941
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->getMoreNotiAppList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/samsung/android/hostmanager/notification/Utils;->isExistApp(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    move-result-object v1

    .line 943
    :cond_8
    if-nez v1, :cond_9

    and-int/lit8 v4, p2, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 944
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->getAlertNotiAppList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/samsung/android/hostmanager/notification/Utils;->isExistApp(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    move-result-object v1

    .line 947
    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->getMark()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_a
    move-object v1, v3

    .line 950
    goto :goto_0

    .line 931
    .end local v1    # "res":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :cond_b
    iget-object v4, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/notification/BlockingMode;->isNotiBlocked(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 932
    const-string v4, "NotificationManager"

    const-string v5, "BlockingMode for NOTIFICATIONS is turned on"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 933
    goto/16 :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1307
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->isInitialized:Z

    return v0
.end method

.method public isListCreated()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->isListCreated:Z

    return v0
.end method

.method public markAll(Z)V
    .locals 4
    .param p1, "marked"    # Z

    .prologue
    .line 354
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->moreNotificationsListApp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .line 355
    .local v0, "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->setMark(Z)V

    goto :goto_0

    .line 358
    .end local v0    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :cond_0
    const/4 v2, 0x2

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->moreNotificationsListApp:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->saveListInThread(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->normalNotificationsListApp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .line 364
    .restart local v0    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->setMark(Z)V

    goto :goto_2

    .line 359
    .end local v0    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 367
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x4

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->normalNotificationsListApp:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->saveListInThread(ILjava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 372
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    .line 373
    .restart local v0    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/aidl/NotificationApp;->setMark(Z)V

    goto :goto_4

    .line 368
    .end local v0    # "app":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    :catch_1
    move-exception v1

    .line 369
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 376
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x1

    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->saveListInThread(ILjava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 380
    :goto_5
    return-void

    .line 377
    :catch_2
    move-exception v1

    .line 378
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public reset(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1311
    const-string v6, "NotificationManager"

    const-string v7, "Reset notification file"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    const-string v0, "notification_alertnotifications.xml"

    .line 1314
    .local v0, "XML_ALERT_NOTIFICATIONS":Ljava/lang/String;
    const-string v2, "notification_normalnotifications.xml"

    .line 1315
    .local v2, "XML_NORMAL_NOTIFICATIONS":Ljava/lang/String;
    const-string v1, "notification_morenotifications.xml"

    .line 1316
    .local v1, "XML_MORE_NOTIFICATIONS":Ljava/lang/String;
    const-string v3, "notification_settings.xml"

    .line 1318
    .local v3, "XML_SETTINGS_NOTIFICATIONS":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mDeviceId:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1319
    .local v4, "deviceType":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 1320
    const-string v6, "NotificationManager"

    const-string v7, "NotificationManager() deviceType is null... cannot get deviceType!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :goto_0
    return-void

    .line 1325
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "notification_alertnotifications.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1326
    .local v5, "filename":Ljava/lang/String;
    const-string v6, "NotificationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XML_ALERT_NOTIFICATIONS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    invoke-static {v5}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->deleteFile(Ljava/lang/String;)Z

    .line 1329
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "notification_normalnotifications.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1330
    const-string v6, "NotificationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XML_NORMAL_NOTIFICATIONS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    invoke-static {v5}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->deleteFile(Ljava/lang/String;)Z

    .line 1333
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "notification_morenotifications.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1334
    const-string v6, "NotificationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XML_MORE_NOTIFICATIONS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    invoke-static {v5}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->deleteFile(Ljava/lang/String;)Z

    .line 1337
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "notification_settings.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1338
    const-string v6, "NotificationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XML_SETTINGS_NOTIFICATIONS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    invoke-static {v5}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->deleteFile(Ljava/lang/String;)Z

    .line 1341
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->isInitialized:Z

    goto/16 :goto_0
.end method

.method public restore()V
    .locals 5

    .prologue
    .line 1288
    const-string v3, "NotificationManager"

    const-string v4, "restore"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v1

    .line 1291
    .local v1, "icHostManager":Lcom/samsung/android/hostmanager/service/ICHostManager;
    if-eqz v1, :cond_0

    .line 1292
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->getNotificationSettings()Lcom/samsung/android/hostmanager/aidl/NotificationSettings;

    move-result-object v2

    .line 1293
    .local v2, "notificationSettings":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->isOn()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/hostmanager/service/ICHostManager;->setNotificationOnOff(Ljava/lang/String;Z)V

    .line 1294
    iget-object v3, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->getPreviewMessage()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/hostmanager/service/ICHostManager;->setNotificationPreview(Ljava/lang/String;I)V

    .line 1295
    iget-object v3, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->getScreenOnoff()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/hostmanager/service/ICHostManager;->setNotificationScreenOnOff(Ljava/lang/String;Z)V

    .line 1296
    iget-object v3, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mDeviceId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->isSummaryPanelSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1297
    iget-object v3, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->getSummaryPanel()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/hostmanager/service/ICHostManager;->setNotificationSummaryPanelOnOff(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1303
    .end local v1    # "icHostManager":Lcom/samsung/android/hostmanager/service/ICHostManager;
    .end local v2    # "notificationSettings":Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    :cond_0
    :goto_0
    return-void

    .line 1300
    :catch_0
    move-exception v0

    .line 1301
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAlertNotificationsAppList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    const-string v1, "NotificationManager"

    const-string v2, "setAlertNotificationsAppList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iput-object p1, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    .line 238
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->saveListInThread(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationManager"

    const-string v2, "Exception while saving app list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppMarked(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "marked"    # Z

    .prologue
    .line 345
    const/4 v1, 0x4

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->setAppMarked(ILjava/lang/String;Z)Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    move-result-object v0

    .line 346
    .local v0, "res":Lcom/samsung/android/hostmanager/aidl/NotificationApp;
    if-nez v0, :cond_0

    .line 347
    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->setAppMarked(ILjava/lang/String;Z)Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    move-result-object v0

    .line 349
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->setAppMarked(ILjava/lang/String;Z)Lcom/samsung/android/hostmanager/aidl/NotificationApp;

    move-result-object v0

    .line 350
    :goto_0
    return-void

    .line 349
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMoreNotificationsAppList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    const-string v1, "NotificationManager"

    const-string v2, "setMoreNotificationsAppList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iput-object p1, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->moreNotificationsListApp:Ljava/util/ArrayList;

    .line 262
    iget-object v1, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->moreNotificationsListApp:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/hostmanager/notification/NotificationManager$AppListComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/hostmanager/notification/NotificationManager$AppListComparator;-><init>(Lcom/samsung/android/hostmanager/notification/NotificationManager$1;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 264
    const/4 v1, 0x2

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->moreNotificationsListApp:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->saveListInThread(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationManager"

    const-string v2, "Exception while saving app list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setNormalNotificationsAppList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/NotificationApp;>;"
    const-string v1, "NotificationManager"

    const-string v2, "setNormalNotificationsAppList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iput-object p1, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->normalNotificationsListApp:Ljava/util/ArrayList;

    .line 251
    const/4 v1, 0x4

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->normalNotificationsListApp:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->saveListInThread(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationManager"

    const-string v2, "Exception while saving app list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setNotificationSettings(Lcom/samsung/android/hostmanager/aidl/NotificationSettings;)V
    .locals 17
    .param p1, "settings"    # Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1107
    const-string v15, "NotificationManager"

    const-string v16, "setNotificationSettings starts"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->isOn()Z

    move-result v5

    .line 1109
    .local v5, "isOn":Z
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->getPreviewMessage()I

    move-result v10

    .line 1110
    .local v10, "preview_message":I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->getLimitNotification()Z

    move-result v7

    .line 1111
    .local v7, "limit_notification":Z
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->getScreenOnoff()Z

    move-result v12

    .line 1112
    .local v12, "screen_onoff":Z
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings;->getSummaryPanel()Z

    move-result v14

    .line 1114
    .local v14, "summary_panel":Z
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 1115
    .local v4, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 1117
    .local v3, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 1119
    .local v2, "doc":Lorg/w3c/dom/Document;
    const-string v15, "settings"

    invoke-interface {v2, v15}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 1121
    .local v1, "Items":Lorg/w3c/dom/Element;
    const-string v15, "IS_ENABLED"

    invoke-interface {v2, v15}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 1122
    .local v6, "isOnItem":Lorg/w3c/dom/Element;
    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1123
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v15}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1125
    const-string v15, "PREVIEW_MESSAGE"

    invoke-interface {v2, v15}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 1126
    .local v9, "previewMessageItem":Lorg/w3c/dom/Element;
    invoke-interface {v1, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1127
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v15}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1129
    const-string v15, "LIMIT_NOTIFICATION"

    invoke-interface {v2, v15}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 1130
    .local v8, "linitNotificationItem":Lorg/w3c/dom/Element;
    invoke-interface {v1, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1131
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1133
    const-string v15, "SCREEN_ONOFF"

    invoke-interface {v2, v15}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 1134
    .local v11, "screenOnoffItem":Lorg/w3c/dom/Element;
    invoke-interface {v1, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1135
    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1137
    const-string v15, "SUMMARY_PANEL"

    invoke-interface {v2, v15}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 1138
    .local v13, "summaryPanelItem":Lorg/w3c/dom/Element;
    invoke-interface {v1, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1139
    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1141
    invoke-interface {v2, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1143
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->XML_SETTINGS_NOTIFICATIONS:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->saveDocToXMLFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 1145
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->printNotificationSetting(Lcom/samsung/android/hostmanager/aidl/NotificationSettings;)V

    .line 1146
    const-string v15, "NotificationManager"

    const-string v16, "setNotificationSettings ends"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    return-void
.end method

.method public updateAppName(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1001
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->updateAppName(ILandroid/content/Context;)V

    .line 1002
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->updateAppName(ILandroid/content/Context;)V

    .line 1003
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->updateAppName(ILandroid/content/Context;)V

    .line 1005
    iget-object v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->alertNotificationsListApp:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->setAlertNotificationsAppList(Ljava/util/ArrayList;)V

    .line 1006
    iget-object v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->normalNotificationsListApp:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->setNormalNotificationsAppList(Ljava/util/ArrayList;)V

    .line 1007
    iget-object v0, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager;->moreNotificationsListApp:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->setMoreNotificationsAppList(Ljava/util/ArrayList;)V

    .line 1009
    invoke-static {p1}, Lcom/samsung/android/hostmanager/notification/Utils;->notifyListUpdated(Landroid/content/Context;)V

    .line 1010
    invoke-static {p1}, Lcom/samsung/android/hostmanager/notification/Utils;->notifyAppNameUpdated(Landroid/content/Context;)V

    .line 1011
    return-void
.end method
