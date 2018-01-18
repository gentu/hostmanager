.class public abstract Lcom/samsung/android/hostmanager/setup/SetupManager;
.super Ljava/lang/Object;
.source "SetupManager.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/manager/ISetupManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;,
        Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SetupManager"


# instance fields
.field demoSyncHandler:Landroid/os/Handler;

.field private mDataFolderPath:Ljava/lang/String;

.field private mDataFullPath:Ljava/lang/String;

.field private mDatafilesPath:Ljava/lang/String;

.field protected mDeviceId:Ljava/lang/String;

.field private mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

.field private mDeviceType:Ljava/lang/String;

.field private restoreClockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;",
            ">;"
        }
    .end annotation
.end field

.field private restoreWAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    .line 64
    iput-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceType:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFolderPath:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDatafilesPath:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/setup/SetupManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/setup/SetupManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/setup/SetupManager;Ljava/util/ArrayList;Ljava/io/InputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/setup/SetupManager;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/io/InputStream;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->parseClockInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/setup/SetupManager;Ljava/util/ArrayList;Ljava/io/InputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/setup/SetupManager;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/io/InputStream;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->parseMyAppsInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/setup/SetupManager;Ljava/util/ArrayList;Ljava/io/InputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/setup/SetupManager;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/io/InputStream;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->parseFontsInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/setup/SetupManager;Ljava/util/ArrayList;Ljava/io/InputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/setup/SetupManager;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/io/InputStream;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->parseFavoriteReorderInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/setup/SetupManager;Ljava/util/ArrayList;Ljava/io/InputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/setup/SetupManager;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/io/InputStream;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->parseAppsOrderInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/hostmanager/setup/SetupManager;Ljava/io/InputStream;)Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/setup/SetupManager;
    .param p1, "x1"    # Ljava/io/InputStream;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/setup/SetupManager;->parseSettingsInfo(Ljava/io/InputStream;)Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v0

    return-object v0
.end method

.method private checkNegativeSync(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 489
    if-nez p1, :cond_0

    .line 490
    const-string v6, "SetupManager"

    const-string v8, "jangil::deviceID is null!!! I can\'t do Negative Sync."

    invoke-static {v6, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 539
    :goto_0
    return v6

    .line 493
    :cond_0
    if-nez p2, :cond_1

    .line 494
    const-string v6, "SetupManager"

    const-string v8, "jangil::packageName is null!!! I can\'t do Negative Sync."

    invoke-static {v6, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 495
    goto :goto_0

    .line 499
    :cond_1
    const/4 v5, 0x0

    .line 501
    .local v5, "statusManager":Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getStatusManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 506
    :goto_1
    if-eqz v5, :cond_5

    .line 508
    invoke-interface {v5}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v1

    .line 509
    .local v1, "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    const/4 v4, 0x0

    .line 510
    .local v4, "listAppInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    if-eqz v1, :cond_4

    .line 511
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v4

    .line 512
    if-eqz v4, :cond_3

    .line 513
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    .line 514
    .local v0, "appInfoitem":Lcom/samsung/android/hostmanager/aidl/AppInfo;
    if-eqz v0, :cond_2

    .line 515
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 516
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getFeatures()Ljava/util/HashMap;

    move-result-object v6

    const-string v9, "Enabled"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 517
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getFeatures()Ljava/util/HashMap;

    move-result-object v6

    const-string v9, "Enabled"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v9, "Enabled"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 518
    .local v3, "enabled":Ljava/lang/String;
    const-string v6, "SetupManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "jangil::checkNegativeSync package="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " enabled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v6, "false"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 521
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 502
    .end local v0    # "appInfoitem":Lcom/samsung/android/hostmanager/aidl/AppInfo;
    .end local v1    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .end local v3    # "enabled":Ljava/lang/String;
    .end local v4    # "listAppInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    :catch_0
    move-exception v2

    .line 503
    .local v2, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_1

    .line 528
    .end local v2    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    .restart local v1    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .restart local v4    # "listAppInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    :cond_3
    const-string v6, "SetupManager"

    const-string v8, "jangil::getAppInfoList() is null!!! I can\'t do Negative Sync."

    invoke-static {v6, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 529
    goto/16 :goto_0

    .line 532
    :cond_4
    const-string v6, "SetupManager"

    const-string v8, "jangil::deviceInfo is null!!! I can\'t do Negative Sync."

    invoke-static {v6, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 533
    goto/16 :goto_0

    .line 536
    .end local v1    # "deviceInfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .end local v4    # "listAppInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    :cond_5
    const-string v6, "SetupManager"

    const-string v8, "jangil::StatusManager is null!!! I can\'t do Negative Sync."

    invoke-static {v6, v8}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v6, v7

    .line 539
    goto/16 :goto_0
.end method

.method private parseAppsOrderInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V
    .locals 17
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1276
    .local p1, "appsOrderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;>;"
    if-nez p1, :cond_0

    .line 1277
    const-string v14, "SetupManager"

    const-string v15, "parseAppOrderInfo() appsOrderList is null..."

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "appsOrderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;>;"
    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    .line 1281
    .restart local p1    # "appsOrderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;>;"
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 1285
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 1286
    .local v7, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 1287
    .local v6, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 1288
    .local v5, "doc":Lorg/w3c/dom/Document;
    const-string v14, "apps"

    invoke-interface {v5, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 1290
    .local v10, "nodelist":Lorg/w3c/dom/NodeList;
    const-string v14, "SetupManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "nodelist size = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    .line 1293
    .local v11, "nodelist_count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_1

    .line 1294
    invoke-interface {v10, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 1295
    .local v2, "appsOrderInfo":Lorg/w3c/dom/Element;
    const-string v14, "packageName"

    invoke-interface {v2, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v12

    .line 1296
    .local v12, "packageName":Ljava/lang/String;
    const-string v14, "className"

    invoke-interface {v2, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 1297
    .local v4, "className":Ljava/lang/String;
    const-string v14, "screen"

    invoke-interface {v2, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 1298
    .local v13, "screen":Ljava/lang/String;
    const-string v14, "cell"

    invoke-interface {v2, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 1300
    .local v3, "cell":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;

    invoke-direct {v1, v12, v4, v13, v3}, Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    .local v1, "appsOrder":Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1293
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1309
    .end local v1    # "appsOrder":Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;
    .end local v2    # "appsOrderInfo":Lorg/w3c/dom/Element;
    .end local v3    # "cell":Ljava/lang/String;
    .end local v4    # "className":Ljava/lang/String;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "screen":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    .line 1311
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1312
    const/16 p2, 0x0

    .line 1319
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "i":I
    .end local v10    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v11    # "nodelist_count":I
    :cond_2
    :goto_1
    return-void

    .line 1313
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9    # "i":I
    .restart local v10    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v11    # "nodelist_count":I
    :catch_0
    move-exception v8

    .line 1314
    .local v8, "e":Ljava/io/IOException;
    const-string v14, "SetupManager"

    const-string v15, "parseAppsOrderInfo() IOException in closing InputStream."

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1304
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "i":I
    .end local v10    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v11    # "nodelist_count":I
    :catch_1
    move-exception v8

    .line 1305
    .local v8, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_2
    const-string v14, "SetupManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ParserConfigurationException e = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1309
    if-eqz p2, :cond_2

    .line 1311
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1312
    const/16 p2, 0x0

    goto :goto_1

    .line 1313
    :catch_2
    move-exception v8

    .line 1314
    .local v8, "e":Ljava/io/IOException;
    const-string v14, "SetupManager"

    const-string v15, "parseAppsOrderInfo() IOException in closing InputStream."

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1306
    .end local v8    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 1307
    .local v8, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1309
    if-eqz p2, :cond_2

    .line 1311
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1312
    const/16 p2, 0x0

    goto :goto_1

    .line 1313
    :catch_4
    move-exception v8

    .line 1314
    .local v8, "e":Ljava/io/IOException;
    const-string v14, "SetupManager"

    const-string v15, "parseAppsOrderInfo() IOException in closing InputStream."

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1309
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    if-eqz p2, :cond_3

    .line 1311
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1312
    const/16 p2, 0x0

    .line 1315
    :cond_3
    :goto_2
    throw v14

    .line 1313
    :catch_5
    move-exception v8

    .line 1314
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v15, "SetupManager"

    const-string v16, "parseAppsOrderInfo() IOException in closing InputStream."

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private parseClockInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V
    .locals 30
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/ClocksSetup;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 606
    .local p1, "clockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    if-nez p1, :cond_0

    .line 607
    const-string v4, "SetupManager"

    const-string v28, "parseClockInfo() clockList is null..."

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "clockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .restart local p1    # "clockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 615
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v18

    .line 616
    .local v18, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v18 .. v18}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v17

    .line 617
    .local v17, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v16

    .line 618
    .local v16, "doc":Lorg/w3c/dom/Document;
    const-string v4, "item"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v24

    .line 623
    .local v24, "nodelist":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    .line 624
    .local v23, "nodeiLstLength":I
    const-string v4, "SetupManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "nodelist size = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 626
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    .line 627
    .local v15, "clockinfo":Lorg/w3c/dom/Element;
    const-string v4, "AppName"

    invoke-interface {v15, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 628
    .local v3, "appname":Ljava/lang/String;
    const-string v4, "PackageName"

    invoke-interface {v15, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 629
    .local v5, "packageName":Ljava/lang/String;
    const-string v4, "ClassName"

    invoke-interface {v15, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 630
    .local v6, "className":Ljava/lang/String;
    const-string v4, "ImageFileName"

    invoke-interface {v15, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 631
    .local v7, "imageFileName":Ljava/lang/String;
    const-string v4, "SettingFileName"

    invoke-interface {v15, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 632
    .local v8, "settingFileName":Ljava/lang/String;
    const-string v4, "IsShown"

    invoke-interface {v15, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v22

    .line 633
    .local v22, "isShown":Ljava/lang/String;
    const-string v4, "true"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 634
    const/4 v9, 0x1

    .line 640
    .local v9, "shownState":Z
    :goto_1
    const-string v4, "PreLoad"

    invoke-interface {v15, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v27

    .line 641
    .local v27, "preLoad":Ljava/lang/String;
    const-string v4, "true"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 643
    .local v10, "preloadState":Z
    const-string v4, "PreCheckSettingsCondition"

    invoke-interface {v15, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    .line 645
    .local v25, "preCheck":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_5

    .line 646
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v26

    .line 647
    .local v26, "preCheckSettingCondition":Ljava/lang/String;
    const-string v4, "true"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    .line 648
    .local v11, "preCheckSettingConditionState":Z
    const-string v4, "SetupManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseClockInfo() "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "   , preCheckSettingConditionState:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    .end local v26    # "preCheckSettingCondition":Ljava/lang/String;
    :goto_2
    const-string v12, "unused"

    .line 655
    .local v12, "group":Ljava/lang/String;
    const-string v4, "Group"

    invoke-interface {v15, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 656
    .local v20, "groupNode":Lorg/w3c/dom/NodeList;
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 657
    const-string v4, "Group"

    invoke-interface {v15, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v12

    .line 660
    :cond_1
    const-string v13, "WATCH_CLOCK"

    .line 661
    .local v13, "appCategory":Ljava/lang/String;
    const-string v4, "AppCategory"

    invoke-interface {v15, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 662
    .local v14, "appCategoryNode":Lorg/w3c/dom/NodeList;
    if-eqz v14, :cond_2

    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    invoke-interface {v14, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 663
    const-string v4, "AppCategory"

    invoke-interface {v15, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 665
    :cond_2
    const-string v4, "WATCH_CLOCK"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 666
    const-string v4, "SetupManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseClockInfo() appname = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ". AppCategory is wrong : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/hostmanager/setup/SetupManager;->checkNegativeSync(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 625
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 638
    .end local v9    # "shownState":Z
    .end local v10    # "preloadState":Z
    .end local v11    # "preCheckSettingConditionState":Z
    .end local v12    # "group":Ljava/lang/String;
    .end local v13    # "appCategory":Ljava/lang/String;
    .end local v14    # "appCategoryNode":Lorg/w3c/dom/NodeList;
    .end local v20    # "groupNode":Lorg/w3c/dom/NodeList;
    .end local v25    # "preCheck":Lorg/w3c/dom/NodeList;
    .end local v27    # "preLoad":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "shownState":Z
    goto/16 :goto_1

    .line 651
    .restart local v10    # "preloadState":Z
    .restart local v25    # "preCheck":Lorg/w3c/dom/NodeList;
    .restart local v27    # "preLoad":Ljava/lang/String;
    :cond_5
    const/4 v11, 0x0

    .restart local v11    # "preCheckSettingConditionState":Z
    goto/16 :goto_2

    .line 674
    .restart local v12    # "group":Ljava/lang/String;
    .restart local v13    # "appCategory":Ljava/lang/String;
    .restart local v14    # "appCategoryNode":Lorg/w3c/dom/NodeList;
    .restart local v20    # "groupNode":Lorg/w3c/dom/NodeList;
    :cond_6
    new-instance v2, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;

    invoke-direct {v2}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;-><init>()V

    .line 675
    .local v2, "clocksSetup":Lcom/samsung/android/hostmanager/aidl/ClocksSetup;
    const-string v4, "description"

    invoke-virtual/range {v2 .. v13}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->setClocksSetupInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    .line 677
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 719
    .end local v2    # "clocksSetup":Lcom/samsung/android/hostmanager/aidl/ClocksSetup;
    .end local v3    # "appname":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v7    # "imageFileName":Ljava/lang/String;
    .end local v8    # "settingFileName":Ljava/lang/String;
    .end local v9    # "shownState":Z
    .end local v10    # "preloadState":Z
    .end local v11    # "preCheckSettingConditionState":Z
    .end local v12    # "group":Ljava/lang/String;
    .end local v13    # "appCategory":Ljava/lang/String;
    .end local v14    # "appCategoryNode":Lorg/w3c/dom/NodeList;
    .end local v15    # "clockinfo":Lorg/w3c/dom/Element;
    .end local v16    # "doc":Lorg/w3c/dom/Document;
    .end local v17    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v18    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v20    # "groupNode":Lorg/w3c/dom/NodeList;
    .end local v21    # "i":I
    .end local v22    # "isShown":Ljava/lang/String;
    .end local v23    # "nodeiLstLength":I
    .end local v24    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v25    # "preCheck":Lorg/w3c/dom/NodeList;
    .end local v27    # "preLoad":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 720
    .local v19, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_1
    const-string v4, "SetupManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ParserConfigurationException e = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 724
    if-eqz p2, :cond_7

    .line 726
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 727
    const/16 p2, 0x0

    .line 733
    .end local v19    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_7
    :goto_4
    return-void

    .line 714
    .restart local v16    # "doc":Lorg/w3c/dom/Document;
    .restart local v17    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v18    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v21    # "i":I
    .restart local v23    # "nodeiLstLength":I
    .restart local v24    # "nodelist":Lorg/w3c/dom/NodeList;
    :cond_8
    :try_start_3
    const-string v4, "SetupManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "clockList size ="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    if-eqz p2, :cond_9

    .line 716
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 717
    const/16 p2, 0x0

    .line 724
    :cond_9
    if-eqz p2, :cond_7

    .line 726
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 727
    const/16 p2, 0x0

    goto :goto_4

    .line 728
    :catch_1
    move-exception v19

    .line 729
    .local v19, "e":Ljava/io/IOException;
    const-string v4, "SetupManager"

    const-string v28, "parseClockInfo() IOException in closing inputStream."

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 728
    .end local v16    # "doc":Lorg/w3c/dom/Document;
    .end local v17    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v18    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v21    # "i":I
    .end local v23    # "nodeiLstLength":I
    .end local v24    # "nodelist":Lorg/w3c/dom/NodeList;
    .local v19, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v19

    .line 729
    .local v19, "e":Ljava/io/IOException;
    const-string v4, "SetupManager"

    const-string v28, "parseClockInfo() IOException in closing inputStream."

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 721
    .end local v19    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v19

    .line 722
    .local v19, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 724
    if-eqz p2, :cond_7

    .line 726
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 727
    const/16 p2, 0x0

    goto :goto_4

    .line 728
    :catch_4
    move-exception v19

    .line 729
    .local v19, "e":Ljava/io/IOException;
    const-string v4, "SetupManager"

    const-string v28, "parseClockInfo() IOException in closing inputStream."

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 724
    .end local v19    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz p2, :cond_a

    .line 726
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 727
    const/16 p2, 0x0

    .line 730
    :cond_a
    :goto_5
    throw v4

    .line 728
    :catch_5
    move-exception v19

    .line 729
    .restart local v19    # "e":Ljava/io/IOException;
    const-string v28, "SetupManager"

    const-string v29, "parseClockInfo() IOException in closing inputStream."

    invoke-static/range {v28 .. v29}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private parseFavoriteReorderInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V
    .locals 34
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1174
    .local p1, "favoriteReorderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;>;"
    if-nez p1, :cond_0

    .line 1175
    const-string v3, "SetupManager"

    const-string v4, "parseFavoriteReorderInfo() favoriteReorderList is null..."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "favoriteReorderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;>;"
    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    .line 1179
    .restart local p1    # "favoriteReorderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;>;"
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 1183
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v20

    .line 1184
    .local v20, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v20 .. v20}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v19

    .line 1185
    .local v19, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v18

    .line 1187
    .local v18, "doc":Lorg/w3c/dom/Document;
    const-string v3, "packageName"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    .line 1188
    .local v28, "packageNameNodeList":Lorg/w3c/dom/NodeList;
    const-string v3, "className"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 1189
    .local v15, "classNameNodeList":Lorg/w3c/dom/NodeList;
    const-string v3, "screen"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v32

    .line 1190
    .local v32, "screenNodeList":Lorg/w3c/dom/NodeList;
    const-string v3, "cellX"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 1191
    .local v11, "cellXNodeList":Lorg/w3c/dom/NodeList;
    const-string v3, "cellY"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 1193
    .local v13, "cellYNodeList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v29

    .line 1195
    .local v29, "packageNameNode_Count":I
    if-nez v29, :cond_2

    .line 1196
    const-string v3, "SetupManager"

    const-string v4, "packageNameNodeList is null!!!"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    const-string v3, "SetupManager"

    const-string v4, "favorites_order.xml have no items!!!"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1263
    if-eqz p2, :cond_1

    .line 1265
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1266
    const/16 p2, 0x0

    .line 1273
    .end local v11    # "cellXNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "cellYNodeList":Lorg/w3c/dom/NodeList;
    .end local v15    # "classNameNodeList":Lorg/w3c/dom/NodeList;
    .end local v18    # "doc":Lorg/w3c/dom/Document;
    .end local v19    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v20    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v28    # "packageNameNodeList":Lorg/w3c/dom/NodeList;
    .end local v29    # "packageNameNode_Count":I
    .end local v32    # "screenNodeList":Lorg/w3c/dom/NodeList;
    :cond_1
    :goto_0
    return-void

    .line 1267
    .restart local v11    # "cellXNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "cellYNodeList":Lorg/w3c/dom/NodeList;
    .restart local v15    # "classNameNodeList":Lorg/w3c/dom/NodeList;
    .restart local v18    # "doc":Lorg/w3c/dom/Document;
    .restart local v19    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v20    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v28    # "packageNameNodeList":Lorg/w3c/dom/NodeList;
    .restart local v29    # "packageNameNode_Count":I
    .restart local v32    # "screenNodeList":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v21

    .line 1268
    .local v21, "e":Ljava/io/IOException;
    const-string v3, "SetupManager"

    const-string v4, "parseFavoriteReorderInfo() IOException in closing InputStream."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1201
    .end local v21    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getClockSetupList()Ljava/util/ArrayList;

    move-result-object v16

    .line 1203
    .local v16, "clocksSetupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    const/16 v23, -0x1

    .line 1206
    .local v23, "idleClockPosition":I
    if-eqz v16, :cond_4

    .line 1207
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1208
    .local v17, "clocksSetupListSize":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 1209
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->getShownState()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1210
    move/from16 v23, v22

    .line 1208
    :cond_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 1215
    .end local v17    # "clocksSetupListSize":I
    .end local v22    # "i":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getMyAppsSetupList()Ljava/util/ArrayList;

    move-result-object v25

    .line 1217
    .local v25, "myAppsSetupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    .line 1218
    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v27

    check-cast v27, Lorg/w3c/dom/Element;

    .line 1219
    .local v27, "packageNameElement":Lorg/w3c/dom/Element;
    move/from16 v0, v22

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 1220
    .local v14, "classNameElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 1221
    .local v31, "screenElement":Lorg/w3c/dom/Element;
    move/from16 v0, v22

    invoke-interface {v11, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 1222
    .local v10, "cellXElement":Lorg/w3c/dom/Element;
    move/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 1224
    .local v12, "cellYElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v30

    .line 1225
    .local v30, "parentNode":Lorg/w3c/dom/Node;
    const-string v3, "SetupManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parentNode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const/4 v2, 0x0

    .line 1229
    .local v2, "favoriteReorder":Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "idle-clock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1230
    new-instance v2, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;

    .end local v2    # "favoriteReorder":Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;
    const-string v3, "idle-clock"

    const-string v4, "idle-clock"

    .line 1231
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 1232
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->getClockName()Ljava/lang/String;

    move-result-object v8

    .line 1233
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->getClockImageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    .restart local v2    # "favoriteReorder":Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;
    :cond_5
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 1234
    :cond_6
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "more-apps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1235
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getAppsData()[Ljava/lang/String;

    move-result-object v33

    .line 1237
    .local v33, "strAppsData":[Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;

    .end local v2    # "favoriteReorder":Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;
    const-string v3, "com.samsung.w-launcher-app"

    const-string v4, "com.samsung.w-launcher-app"

    .line 1238
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 1239
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v33, v8

    const-string v9, "com.samsung.w-launcher-app.png"

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    .restart local v2    # "favoriteReorder":Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;
    goto :goto_3

    .end local v33    # "strAppsData":[Ljava/lang/String;
    :cond_7
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "favorite"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1242
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 1243
    .local v26, "myAppsSetupListSize":I
    const/16 v24, 0x0

    .local v24, "j":I
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 1244
    invoke-interface {v14}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1245
    new-instance v2, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;

    .end local v2    # "favoriteReorder":Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 1246
    invoke-interface {v14}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 1247
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 1248
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->getImageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1250
    .restart local v2    # "favoriteReorder":Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;
    goto/16 :goto_3

    .line 1243
    :cond_8
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 1263
    .end local v2    # "favoriteReorder":Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;
    .end local v10    # "cellXElement":Lorg/w3c/dom/Element;
    .end local v12    # "cellYElement":Lorg/w3c/dom/Element;
    .end local v14    # "classNameElement":Lorg/w3c/dom/Element;
    .end local v24    # "j":I
    .end local v26    # "myAppsSetupListSize":I
    .end local v27    # "packageNameElement":Lorg/w3c/dom/Element;
    .end local v30    # "parentNode":Lorg/w3c/dom/Node;
    .end local v31    # "screenElement":Lorg/w3c/dom/Element;
    :cond_9
    if-eqz p2, :cond_1

    .line 1265
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1266
    const/16 p2, 0x0

    goto/16 :goto_0

    .line 1267
    :catch_1
    move-exception v21

    .line 1268
    .restart local v21    # "e":Ljava/io/IOException;
    const-string v3, "SetupManager"

    const-string v4, "parseFavoriteReorderInfo() IOException in closing InputStream."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1258
    .end local v11    # "cellXNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "cellYNodeList":Lorg/w3c/dom/NodeList;
    .end local v15    # "classNameNodeList":Lorg/w3c/dom/NodeList;
    .end local v16    # "clocksSetupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    .end local v18    # "doc":Lorg/w3c/dom/Document;
    .end local v19    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v20    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v21    # "e":Ljava/io/IOException;
    .end local v22    # "i":I
    .end local v23    # "idleClockPosition":I
    .end local v25    # "myAppsSetupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    .end local v28    # "packageNameNodeList":Lorg/w3c/dom/NodeList;
    .end local v29    # "packageNameNode_Count":I
    .end local v32    # "screenNodeList":Lorg/w3c/dom/NodeList;
    :catch_2
    move-exception v21

    .line 1259
    .local v21, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_4
    const-string v3, "SetupManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ParserConfigurationException e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1263
    if-eqz p2, :cond_1

    .line 1265
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1266
    const/16 p2, 0x0

    goto/16 :goto_0

    .line 1267
    :catch_3
    move-exception v21

    .line 1268
    .local v21, "e":Ljava/io/IOException;
    const-string v3, "SetupManager"

    const-string v4, "parseFavoriteReorderInfo() IOException in closing InputStream."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1260
    .end local v21    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v21

    .line 1261
    .local v21, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1263
    if-eqz p2, :cond_1

    .line 1265
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1266
    const/16 p2, 0x0

    goto/16 :goto_0

    .line 1267
    :catch_5
    move-exception v21

    .line 1268
    .local v21, "e":Ljava/io/IOException;
    const-string v3, "SetupManager"

    const-string v4, "parseFavoriteReorderInfo() IOException in closing InputStream."

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1263
    .end local v21    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz p2, :cond_a

    .line 1265
    :try_start_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1266
    const/16 p2, 0x0

    .line 1269
    :cond_a
    :goto_5
    throw v3

    .line 1267
    :catch_6
    move-exception v21

    .line 1268
    .restart local v21    # "e":Ljava/io/IOException;
    const-string v4, "SetupManager"

    const-string v5, "parseFavoriteReorderInfo() IOException in closing InputStream."

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private parseFontsInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V
    .locals 33
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FontsSetup;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 869
    .local p1, "fontsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    if-nez p1, :cond_0

    .line 870
    const-string v30, "SetupManager"

    const-string v31, "parseFontsInfo() fontsList is null..."

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "fontsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    .line 874
    .restart local p1    # "fontsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 878
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v16

    .line 879
    .local v16, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v15

    .line 880
    .local v15, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v14

    .line 881
    .local v14, "doc":Lorg/w3c/dom/Document;
    const-string v30, "item"

    move-object/from16 v0, v30

    invoke-interface {v14, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    .line 884
    .local v25, "nodelist":Lorg/w3c/dom/NodeList;
    const-string v30, "SetupManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "nodelist size = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    .line 887
    .local v26, "nodelist_count":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_a

    .line 888
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    .line 889
    .local v20, "fontinfo":Lorg/w3c/dom/Element;
    const-string v30, "AppName"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 890
    .local v3, "appname":Ljava/lang/String;
    const-string v30, "ClassName"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 891
    .local v5, "className":Ljava/lang/String;
    const-string v30, "PackageName"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 892
    .local v4, "packageName":Ljava/lang/String;
    const-string v30, "ImageFileName"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 893
    .local v6, "imageFileName":Ljava/lang/String;
    const-string v30, "SettingFileName"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 894
    .local v7, "settingFileName":Ljava/lang/String;
    const-string v30, "PreLoad"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v27

    .line 895
    .local v27, "preLoad":Ljava/lang/String;
    const-string v30, "true"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 896
    const/4 v8, 0x1

    .line 901
    .local v8, "isPreload":Z
    :goto_1
    const-string v9, "0.0.1"

    .line 902
    .local v9, "version":Ljava/lang/String;
    const-string v30, "Version"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v29

    .line 903
    .local v29, "versionNodeList":Lorg/w3c/dom/NodeList;
    if-eqz v29, :cond_1

    .line 904
    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    .line 905
    .local v28, "versionNode":Lorg/w3c/dom/Node;
    if-eqz v28, :cond_1

    .line 906
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 910
    .end local v28    # "versionNode":Lorg/w3c/dom/Node;
    :cond_1
    const/4 v10, 0x0

    .line 911
    .local v10, "isShown":Z
    const-string v30, "IsShown"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 912
    .local v23, "isShownNodeList":Lorg/w3c/dom/NodeList;
    if-eqz v23, :cond_2

    .line 913
    const/16 v30, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    .line 914
    .local v22, "isShownNode":Lorg/w3c/dom/Node;
    if-eqz v22, :cond_2

    .line 915
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v24

    .line 916
    .local v24, "isShownStr":Ljava/lang/String;
    if-eqz v24, :cond_7

    const-string v30, "true"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 917
    const/4 v10, 0x1

    .line 924
    .end local v22    # "isShownNode":Lorg/w3c/dom/Node;
    .end local v24    # "isShownStr":Ljava/lang/String;
    :cond_2
    :goto_2
    const-string v11, "none"

    .line 925
    .local v11, "familyName":Ljava/lang/String;
    const-string v30, "FamilyName"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 926
    .local v19, "familyNameNodeList":Lorg/w3c/dom/NodeList;
    if-eqz v19, :cond_3

    .line 927
    const/16 v30, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    .line 928
    .local v18, "familyNameNode":Lorg/w3c/dom/Node;
    if-eqz v18, :cond_3

    .line 929
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    .line 930
    const-string v30, "SetupManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "parseFontsInfo() familyName : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    .end local v18    # "familyNameNode":Lorg/w3c/dom/Node;
    :cond_3
    const-string v12, "FONT"

    .line 935
    .local v12, "appCategory":Ljava/lang/String;
    const-string v30, "AppCategory"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 936
    .local v13, "appCategoryNode":Lorg/w3c/dom/NodeList;
    if-eqz v13, :cond_4

    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v30

    if-lez v30, :cond_4

    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    if-eqz v30, :cond_4

    .line 937
    const-string v30, "AppCategory"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v12

    .line 939
    :cond_4
    const-string v30, "FONT"

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_5

    .line 940
    const-string v30, "SetupManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "parseFontsInfo() appname = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ". AppCategory is wrong : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    :cond_5
    new-instance v2, Lcom/samsung/android/hostmanager/aidl/FontsSetup;

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/hostmanager/aidl/FontsSetup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 947
    .local v2, "app":Lcom/samsung/android/hostmanager/aidl/FontsSetup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/hostmanager/setup/SetupManager;->checkNegativeSync(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 887
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 898
    .end local v2    # "app":Lcom/samsung/android/hostmanager/aidl/FontsSetup;
    .end local v8    # "isPreload":Z
    .end local v9    # "version":Ljava/lang/String;
    .end local v10    # "isShown":Z
    .end local v11    # "familyName":Ljava/lang/String;
    .end local v12    # "appCategory":Ljava/lang/String;
    .end local v13    # "appCategoryNode":Lorg/w3c/dom/NodeList;
    .end local v19    # "familyNameNodeList":Lorg/w3c/dom/NodeList;
    .end local v23    # "isShownNodeList":Lorg/w3c/dom/NodeList;
    .end local v29    # "versionNodeList":Lorg/w3c/dom/NodeList;
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "isPreload":Z
    goto/16 :goto_1

    .line 919
    .restart local v9    # "version":Ljava/lang/String;
    .restart local v10    # "isShown":Z
    .restart local v22    # "isShownNode":Lorg/w3c/dom/Node;
    .restart local v23    # "isShownNodeList":Lorg/w3c/dom/NodeList;
    .restart local v24    # "isShownStr":Ljava/lang/String;
    .restart local v29    # "versionNodeList":Lorg/w3c/dom/NodeList;
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 951
    .end local v22    # "isShownNode":Lorg/w3c/dom/Node;
    .end local v24    # "isShownStr":Ljava/lang/String;
    .restart local v2    # "app":Lcom/samsung/android/hostmanager/aidl/FontsSetup;
    .restart local v11    # "familyName":Ljava/lang/String;
    .restart local v12    # "appCategory":Ljava/lang/String;
    .restart local v13    # "appCategoryNode":Lorg/w3c/dom/NodeList;
    .restart local v19    # "familyNameNodeList":Lorg/w3c/dom/NodeList;
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 958
    .end local v2    # "app":Lcom/samsung/android/hostmanager/aidl/FontsSetup;
    .end local v3    # "appname":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "imageFileName":Ljava/lang/String;
    .end local v7    # "settingFileName":Ljava/lang/String;
    .end local v8    # "isPreload":Z
    .end local v9    # "version":Ljava/lang/String;
    .end local v10    # "isShown":Z
    .end local v11    # "familyName":Ljava/lang/String;
    .end local v12    # "appCategory":Ljava/lang/String;
    .end local v13    # "appCategoryNode":Lorg/w3c/dom/NodeList;
    .end local v14    # "doc":Lorg/w3c/dom/Document;
    .end local v15    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v16    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v19    # "familyNameNodeList":Lorg/w3c/dom/NodeList;
    .end local v20    # "fontinfo":Lorg/w3c/dom/Element;
    .end local v21    # "i":I
    .end local v23    # "isShownNodeList":Lorg/w3c/dom/NodeList;
    .end local v25    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v26    # "nodelist_count":I
    .end local v27    # "preLoad":Ljava/lang/String;
    .end local v29    # "versionNodeList":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v17

    .line 959
    .local v17, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_1
    const-string v30, "SetupManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ParserConfigurationException e = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 963
    if-eqz p2, :cond_9

    .line 965
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 966
    const/16 p2, 0x0

    .line 973
    .end local v17    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_9
    :goto_4
    const-string v30, "SetupManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "parseFontsInfo() fontsList size = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    return-void

    .line 954
    .restart local v14    # "doc":Lorg/w3c/dom/Document;
    .restart local v15    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v16    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v21    # "i":I
    .restart local v25    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v26    # "nodelist_count":I
    :cond_a
    if-eqz p2, :cond_b

    .line 955
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 956
    const/16 p2, 0x0

    .line 963
    :cond_b
    if-eqz p2, :cond_9

    .line 965
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 966
    const/16 p2, 0x0

    goto :goto_4

    .line 967
    :catch_1
    move-exception v17

    .line 968
    .local v17, "e":Ljava/io/IOException;
    const-string v30, "SetupManager"

    const-string v31, "parseFontsInfo() IOException in closing InputStream."

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 967
    .end local v14    # "doc":Lorg/w3c/dom/Document;
    .end local v15    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v16    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v21    # "i":I
    .end local v25    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v26    # "nodelist_count":I
    .local v17, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v17

    .line 968
    .local v17, "e":Ljava/io/IOException;
    const-string v30, "SetupManager"

    const-string v31, "parseFontsInfo() IOException in closing InputStream."

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 960
    .end local v17    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v17

    .line 961
    .local v17, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 963
    if-eqz p2, :cond_9

    .line 965
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 966
    const/16 p2, 0x0

    goto :goto_4

    .line 967
    :catch_4
    move-exception v17

    .line 968
    .local v17, "e":Ljava/io/IOException;
    const-string v30, "SetupManager"

    const-string v31, "parseFontsInfo() IOException in closing InputStream."

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 963
    .end local v17    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v30

    if-eqz p2, :cond_c

    .line 965
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 966
    const/16 p2, 0x0

    .line 969
    :cond_c
    :goto_5
    throw v30

    .line 967
    :catch_5
    move-exception v17

    .line 968
    .restart local v17    # "e":Ljava/io/IOException;
    const-string v31, "SetupManager"

    const-string v32, "parseFontsInfo() IOException in closing InputStream."

    invoke-static/range {v31 .. v32}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private parseIMEInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V
    .locals 29
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/IMESetup;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1080
    .local p1, "imeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/IMESetup;>;"
    if-nez p1, :cond_0

    .line 1081
    const-string v26, "SetupManager"

    const-string v27, "parseIMEInfo() imeList is null..."

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "imeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/IMESetup;>;"
    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    .line 1085
    .restart local p1    # "imeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/IMESetup;>;"
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 1089
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v16

    .line 1090
    .local v16, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v15

    .line 1091
    .local v15, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v14

    .line 1092
    .local v14, "doc":Lorg/w3c/dom/Document;
    const-string v26, "item"

    move-object/from16 v0, v26

    invoke-interface {v14, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 1096
    .local v20, "nodelist":Lorg/w3c/dom/NodeList;
    const-string v26, "SetupManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "nodelist size = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    .line 1099
    .local v21, "nodelist_count":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 1100
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    .line 1101
    .local v19, "imeInfo":Lorg/w3c/dom/Element;
    const-string v26, "AppName"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 1102
    .local v3, "appName":Ljava/lang/String;
    const-string v26, "PackageName"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 1103
    .local v4, "packageName":Ljava/lang/String;
    const-string v26, "ClassName"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 1104
    .local v5, "className":Ljava/lang/String;
    const-string v26, "ImageFileName"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 1105
    .local v7, "imageFileName":Ljava/lang/String;
    const-string v26, "SettingFileName"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 1107
    .local v8, "settingFileName":Ljava/lang/String;
    const-string v6, "0.0.1"

    .line 1108
    .local v6, "version":Ljava/lang/String;
    const-string v26, "Version"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    .line 1109
    .local v25, "versionNodeList":Lorg/w3c/dom/NodeList;
    if-eqz v25, :cond_1

    .line 1110
    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 1111
    .local v24, "versionNode":Lorg/w3c/dom/Node;
    if-eqz v24, :cond_1

    .line 1112
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 1116
    .end local v24    # "versionNode":Lorg/w3c/dom/Node;
    :cond_1
    const-string v26, "IsShown"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v23

    .line 1117
    .local v23, "shownState":Ljava/lang/String;
    const-string v26, "true"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 1118
    const/4 v9, 0x1

    .line 1123
    .local v9, "isShown":Z
    :goto_1
    const-string v10, "WATCH_IME"

    .line 1124
    .local v10, "appCategory":Ljava/lang/String;
    const-string v26, "AppCategory"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 1125
    .local v13, "appCategoryNodeList":Lorg/w3c/dom/NodeList;
    if-eqz v13, :cond_2

    .line 1126
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 1127
    .local v12, "appCategoryNode":Lorg/w3c/dom/Node;
    if-eqz v12, :cond_2

    .line 1128
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    .line 1129
    const-string v26, "SetupManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "appCategory: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    .end local v12    # "appCategoryNode":Lorg/w3c/dom/Node;
    :cond_2
    const-string v26, "PreLoad"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v22

    .line 1134
    .local v22, "preLoad":Ljava/lang/String;
    const-string v26, "true"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 1135
    const/4 v11, 0x1

    .line 1140
    .local v11, "isPreload":Z
    :goto_2
    new-instance v2, Lcom/samsung/android/hostmanager/aidl/IMESetup;

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/hostmanager/aidl/IMESetup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 1144
    .local v2, "ime":Lcom/samsung/android/hostmanager/aidl/IMESetup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/hostmanager/setup/SetupManager;->checkNegativeSync(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 1099
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 1120
    .end local v2    # "ime":Lcom/samsung/android/hostmanager/aidl/IMESetup;
    .end local v9    # "isShown":Z
    .end local v10    # "appCategory":Ljava/lang/String;
    .end local v11    # "isPreload":Z
    .end local v13    # "appCategoryNodeList":Lorg/w3c/dom/NodeList;
    .end local v22    # "preLoad":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "isShown":Z
    goto :goto_1

    .line 1137
    .restart local v10    # "appCategory":Ljava/lang/String;
    .restart local v13    # "appCategoryNodeList":Lorg/w3c/dom/NodeList;
    .restart local v22    # "preLoad":Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "isPreload":Z
    goto :goto_2

    .line 1148
    .restart local v2    # "ime":Lcom/samsung/android/hostmanager/aidl/IMESetup;
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1155
    .end local v2    # "ime":Lcom/samsung/android/hostmanager/aidl/IMESetup;
    .end local v3    # "appName":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    .end local v7    # "imageFileName":Ljava/lang/String;
    .end local v8    # "settingFileName":Ljava/lang/String;
    .end local v9    # "isShown":Z
    .end local v10    # "appCategory":Ljava/lang/String;
    .end local v11    # "isPreload":Z
    .end local v13    # "appCategoryNodeList":Lorg/w3c/dom/NodeList;
    .end local v14    # "doc":Lorg/w3c/dom/Document;
    .end local v15    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v16    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v18    # "i":I
    .end local v19    # "imeInfo":Lorg/w3c/dom/Element;
    .end local v20    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v21    # "nodelist_count":I
    .end local v22    # "preLoad":Ljava/lang/String;
    .end local v23    # "shownState":Ljava/lang/String;
    .end local v25    # "versionNodeList":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v17

    .line 1156
    .local v17, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_1
    const-string v26, "SetupManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "ParserConfigurationException e = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1160
    if-eqz p2, :cond_6

    .line 1162
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1163
    const/16 p2, 0x0

    .line 1170
    .end local v17    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_6
    :goto_4
    const-string v26, "SetupManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "parseIMEInfo() imeList size = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    return-void

    .line 1151
    .restart local v14    # "doc":Lorg/w3c/dom/Document;
    .restart local v15    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v16    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v18    # "i":I
    .restart local v20    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v21    # "nodelist_count":I
    :cond_7
    if-eqz p2, :cond_8

    .line 1152
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1153
    const/16 p2, 0x0

    .line 1160
    :cond_8
    if-eqz p2, :cond_6

    .line 1162
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1163
    const/16 p2, 0x0

    goto :goto_4

    .line 1164
    :catch_1
    move-exception v17

    .line 1165
    .local v17, "e":Ljava/io/IOException;
    const-string v26, "SetupManager"

    const-string v27, "parseIMEInfo() IOException in closing InputStream."

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1164
    .end local v14    # "doc":Lorg/w3c/dom/Document;
    .end local v15    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v16    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v18    # "i":I
    .end local v20    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v21    # "nodelist_count":I
    .local v17, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v17

    .line 1165
    .local v17, "e":Ljava/io/IOException;
    const-string v26, "SetupManager"

    const-string v27, "parseIMEInfo() IOException in closing InputStream."

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1157
    .end local v17    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v17

    .line 1158
    .local v17, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1160
    if-eqz p2, :cond_6

    .line 1162
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1163
    const/16 p2, 0x0

    goto :goto_4

    .line 1164
    :catch_4
    move-exception v17

    .line 1165
    .local v17, "e":Ljava/io/IOException;
    const-string v26, "SetupManager"

    const-string v27, "parseIMEInfo() IOException in closing InputStream."

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1160
    .end local v17    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v26

    if-eqz p2, :cond_9

    .line 1162
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1163
    const/16 p2, 0x0

    .line 1166
    :cond_9
    :goto_5
    throw v26

    .line 1164
    :catch_5
    move-exception v17

    .line 1165
    .restart local v17    # "e":Ljava/io/IOException;
    const-string v27, "SetupManager"

    const-string v28, "parseIMEInfo() IOException in closing InputStream."

    invoke-static/range {v27 .. v28}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private parseMyAppsInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V
    .locals 32
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 736
    .local p1, "myAppsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    if-nez p1, :cond_0

    .line 737
    const-string v29, "SetupManager"

    const-string v30, "parseMyAppsInfo() myAppsList is null..."

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "myAppsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .restart local p1    # "myAppsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 745
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v18

    .line 746
    .local v18, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v18 .. v18}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v17

    .line 747
    .local v17, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v16

    .line 748
    .local v16, "doc":Lorg/w3c/dom/Document;
    const-string v29, "item"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 753
    .local v21, "nodelist":Lorg/w3c/dom/NodeList;
    const-string v29, "SetupManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "nodelist size = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    .line 756
    .local v22, "nodelist_count":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    .line 757
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    check-cast v28, Lorg/w3c/dom/Element;

    .line 758
    .local v28, "wappinfo":Lorg/w3c/dom/Element;
    const-string v29, "AppName"

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v29

    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 759
    .local v3, "appname":Ljava/lang/String;
    const-string v29, "ClassName"

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v29

    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 760
    .local v5, "className":Ljava/lang/String;
    const-string v29, "PackageName"

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v29

    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 761
    .local v4, "packageName":Ljava/lang/String;
    const-string v29, "ImageFileName"

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v29

    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 762
    .local v6, "imageFileName":Ljava/lang/String;
    const-string v29, "SettingFileName"

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v29

    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 763
    .local v7, "settingFileName":Ljava/lang/String;
    const-string v29, "PreLoad"

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v29

    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v25

    .line 764
    .local v25, "preLoad":Ljava/lang/String;
    const-string v29, "true"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 765
    const/4 v9, 0x1

    .line 770
    .local v9, "isPreload":Z
    :goto_1
    const-string v13, "false"

    .line 771
    .local v13, "AppWidgetcheck":Ljava/lang/String;
    const-string v29, "IsAppWidget"

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 772
    .local v14, "AppWidgetcheckNode":Lorg/w3c/dom/NodeList;
    if-eqz v14, :cond_7

    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v29

    if-lez v29, :cond_7

    .line 773
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 774
    if-eqz v13, :cond_6

    const-string v29, "true"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 775
    const/4 v8, 0x1

    .line 783
    .local v8, "isAppWidget":Z
    :goto_2
    const-string v29, "PreCheckSettingsCondition"

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 784
    .local v23, "preCheck":Lorg/w3c/dom/NodeList;
    if-eqz v23, :cond_8

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v29

    if-lez v29, :cond_8

    .line 785
    const/16 v29, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    check-cast v29, Lorg/w3c/dom/Element;

    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v24

    .line 786
    .local v24, "preCheckSettingCondition":Ljava/lang/String;
    const-string v29, "true"

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 791
    .end local v24    # "preCheckSettingCondition":Ljava/lang/String;
    .local v10, "preCheckSettingConditionState":Z
    :goto_3
    const-string v11, "0.0.1"

    .line 792
    .local v11, "version":Ljava/lang/String;
    const-string v29, "Version"

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v27

    .line 793
    .local v27, "versionNodeList":Lorg/w3c/dom/NodeList;
    if-eqz v27, :cond_1

    .line 794
    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    .line 795
    .local v26, "versionNode":Lorg/w3c/dom/Node;
    if-eqz v26, :cond_1

    .line 796
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    .line 800
    .end local v26    # "versionNode":Lorg/w3c/dom/Node;
    :cond_1
    const-string v12, "WATCH_APP"

    .line 801
    .local v12, "appCategory":Ljava/lang/String;
    const-string v29, "AppCategory"

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 802
    .local v15, "appCategoryNode":Lorg/w3c/dom/NodeList;
    if-eqz v15, :cond_2

    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v29

    if-lez v29, :cond_2

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    if-eqz v29, :cond_2

    .line 803
    const-string v29, "AppCategory"

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v29

    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v12

    .line 805
    :cond_2
    const-string v29, "WATCH_APP"

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    .line 806
    const-string v29, "SetupManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "parseMyAppsInfo() appname = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ". AppCategory is wrong : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :cond_3
    const-string v29, "com.samsung.message"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_4

    sget v29, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v30, 0x13

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    .line 812
    const-string v7, "null"

    .line 815
    :cond_4
    new-instance v2, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    .line 819
    .local v2, "app":Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/hostmanager/setup/SetupManager;->checkNegativeSync(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 756
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 767
    .end local v2    # "app":Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;
    .end local v8    # "isAppWidget":Z
    .end local v9    # "isPreload":Z
    .end local v10    # "preCheckSettingConditionState":Z
    .end local v11    # "version":Ljava/lang/String;
    .end local v12    # "appCategory":Ljava/lang/String;
    .end local v13    # "AppWidgetcheck":Ljava/lang/String;
    .end local v14    # "AppWidgetcheckNode":Lorg/w3c/dom/NodeList;
    .end local v15    # "appCategoryNode":Lorg/w3c/dom/NodeList;
    .end local v23    # "preCheck":Lorg/w3c/dom/NodeList;
    .end local v27    # "versionNodeList":Lorg/w3c/dom/NodeList;
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "isPreload":Z
    goto/16 :goto_1

    .line 777
    .restart local v13    # "AppWidgetcheck":Ljava/lang/String;
    .restart local v14    # "AppWidgetcheckNode":Lorg/w3c/dom/NodeList;
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "isAppWidget":Z
    goto/16 :goto_2

    .line 780
    .end local v8    # "isAppWidget":Z
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "isAppWidget":Z
    goto/16 :goto_2

    .line 788
    .restart local v23    # "preCheck":Lorg/w3c/dom/NodeList;
    :cond_8
    const/4 v10, 0x0

    .restart local v10    # "preCheckSettingConditionState":Z
    goto/16 :goto_3

    .line 829
    .restart local v2    # "app":Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;
    .restart local v11    # "version":Ljava/lang/String;
    .restart local v12    # "appCategory":Ljava/lang/String;
    .restart local v15    # "appCategoryNode":Lorg/w3c/dom/NodeList;
    .restart local v27    # "versionNodeList":Lorg/w3c/dom/NodeList;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "support.widget.type"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isSupportFeatureWearable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_c

    .line 830
    const-string v29, "SetupManager"

    const-string v30, "parseMyAppsInfo()  Supporting Widget Only"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->getAppType()Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_b

    .line 835
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 850
    .end local v2    # "app":Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;
    .end local v3    # "appname":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "imageFileName":Ljava/lang/String;
    .end local v7    # "settingFileName":Ljava/lang/String;
    .end local v8    # "isAppWidget":Z
    .end local v9    # "isPreload":Z
    .end local v10    # "preCheckSettingConditionState":Z
    .end local v11    # "version":Ljava/lang/String;
    .end local v12    # "appCategory":Ljava/lang/String;
    .end local v13    # "AppWidgetcheck":Ljava/lang/String;
    .end local v14    # "AppWidgetcheckNode":Lorg/w3c/dom/NodeList;
    .end local v15    # "appCategoryNode":Lorg/w3c/dom/NodeList;
    .end local v16    # "doc":Lorg/w3c/dom/Document;
    .end local v17    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v18    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v20    # "i":I
    .end local v21    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v22    # "nodelist_count":I
    .end local v23    # "preCheck":Lorg/w3c/dom/NodeList;
    .end local v25    # "preLoad":Ljava/lang/String;
    .end local v27    # "versionNodeList":Lorg/w3c/dom/NodeList;
    .end local v28    # "wappinfo":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v19

    .line 851
    .local v19, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_1
    const-string v29, "SetupManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "ParserConfigurationException e = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 855
    if-eqz p2, :cond_a

    .line 857
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 858
    const/16 p2, 0x0

    .line 865
    .end local v19    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_a
    :goto_5
    const-string v29, "SetupManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "parseMyAppsInfo() myAppsList size = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    return-void

    .line 837
    .restart local v2    # "app":Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;
    .restart local v3    # "appname":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "className":Ljava/lang/String;
    .restart local v6    # "imageFileName":Ljava/lang/String;
    .restart local v7    # "settingFileName":Ljava/lang/String;
    .restart local v8    # "isAppWidget":Z
    .restart local v9    # "isPreload":Z
    .restart local v10    # "preCheckSettingConditionState":Z
    .restart local v11    # "version":Ljava/lang/String;
    .restart local v12    # "appCategory":Ljava/lang/String;
    .restart local v13    # "AppWidgetcheck":Ljava/lang/String;
    .restart local v14    # "AppWidgetcheckNode":Lorg/w3c/dom/NodeList;
    .restart local v15    # "appCategoryNode":Lorg/w3c/dom/NodeList;
    .restart local v16    # "doc":Lorg/w3c/dom/Document;
    .restart local v17    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v18    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v20    # "i":I
    .restart local v21    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v22    # "nodelist_count":I
    .restart local v23    # "preCheck":Lorg/w3c/dom/NodeList;
    .restart local v25    # "preLoad":Ljava/lang/String;
    .restart local v27    # "versionNodeList":Lorg/w3c/dom/NodeList;
    .restart local v28    # "wappinfo":Lorg/w3c/dom/Element;
    :cond_b
    :try_start_3
    const-string v29, "SetupManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "parseMyAppsInfo()  "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " is widget. Don\'t add to myAppsSetupList... IsAppWidget = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 838
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->getAppType()Z

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 837
    invoke-static/range {v29 .. v30}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 852
    .end local v2    # "app":Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;
    .end local v3    # "appname":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "imageFileName":Ljava/lang/String;
    .end local v7    # "settingFileName":Ljava/lang/String;
    .end local v8    # "isAppWidget":Z
    .end local v9    # "isPreload":Z
    .end local v10    # "preCheckSettingConditionState":Z
    .end local v11    # "version":Ljava/lang/String;
    .end local v12    # "appCategory":Ljava/lang/String;
    .end local v13    # "AppWidgetcheck":Ljava/lang/String;
    .end local v14    # "AppWidgetcheckNode":Lorg/w3c/dom/NodeList;
    .end local v15    # "appCategoryNode":Lorg/w3c/dom/NodeList;
    .end local v16    # "doc":Lorg/w3c/dom/Document;
    .end local v17    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v18    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v20    # "i":I
    .end local v21    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v22    # "nodelist_count":I
    .end local v23    # "preCheck":Lorg/w3c/dom/NodeList;
    .end local v25    # "preLoad":Ljava/lang/String;
    .end local v27    # "versionNodeList":Lorg/w3c/dom/NodeList;
    .end local v28    # "wappinfo":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v19

    .line 853
    .local v19, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 855
    if-eqz p2, :cond_a

    .line 857
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 858
    const/16 p2, 0x0

    goto :goto_5

    .line 841
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v2    # "app":Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;
    .restart local v3    # "appname":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "className":Ljava/lang/String;
    .restart local v6    # "imageFileName":Ljava/lang/String;
    .restart local v7    # "settingFileName":Ljava/lang/String;
    .restart local v8    # "isAppWidget":Z
    .restart local v9    # "isPreload":Z
    .restart local v10    # "preCheckSettingConditionState":Z
    .restart local v11    # "version":Ljava/lang/String;
    .restart local v12    # "appCategory":Ljava/lang/String;
    .restart local v13    # "AppWidgetcheck":Ljava/lang/String;
    .restart local v14    # "AppWidgetcheckNode":Lorg/w3c/dom/NodeList;
    .restart local v15    # "appCategoryNode":Lorg/w3c/dom/NodeList;
    .restart local v16    # "doc":Lorg/w3c/dom/Document;
    .restart local v17    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v18    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v20    # "i":I
    .restart local v21    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v22    # "nodelist_count":I
    .restart local v23    # "preCheck":Lorg/w3c/dom/NodeList;
    .restart local v25    # "preLoad":Ljava/lang/String;
    .restart local v27    # "versionNodeList":Lorg/w3c/dom/NodeList;
    .restart local v28    # "wappinfo":Lorg/w3c/dom/Element;
    :cond_c
    :try_start_6
    const-string v29, "SetupManager"

    const-string v30, "parseMyAppsInfo()  NOT Supporting Widget Only"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    .line 855
    .end local v2    # "app":Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;
    .end local v3    # "appname":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "imageFileName":Ljava/lang/String;
    .end local v7    # "settingFileName":Ljava/lang/String;
    .end local v8    # "isAppWidget":Z
    .end local v9    # "isPreload":Z
    .end local v10    # "preCheckSettingConditionState":Z
    .end local v11    # "version":Ljava/lang/String;
    .end local v12    # "appCategory":Ljava/lang/String;
    .end local v13    # "AppWidgetcheck":Ljava/lang/String;
    .end local v14    # "AppWidgetcheckNode":Lorg/w3c/dom/NodeList;
    .end local v15    # "appCategoryNode":Lorg/w3c/dom/NodeList;
    .end local v16    # "doc":Lorg/w3c/dom/Document;
    .end local v17    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v18    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v20    # "i":I
    .end local v21    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v22    # "nodelist_count":I
    .end local v23    # "preCheck":Lorg/w3c/dom/NodeList;
    .end local v25    # "preLoad":Ljava/lang/String;
    .end local v27    # "versionNodeList":Lorg/w3c/dom/NodeList;
    .end local v28    # "wappinfo":Lorg/w3c/dom/Element;
    :catchall_0
    move-exception v29

    if-eqz p2, :cond_d

    .line 857
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 858
    const/16 p2, 0x0

    .line 861
    :cond_d
    :goto_6
    throw v29

    .line 846
    .restart local v16    # "doc":Lorg/w3c/dom/Document;
    .restart local v17    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v18    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v20    # "i":I
    .restart local v21    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v22    # "nodelist_count":I
    :cond_e
    if-eqz p2, :cond_f

    .line 847
    :try_start_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 848
    const/16 p2, 0x0

    .line 855
    :cond_f
    if-eqz p2, :cond_a

    .line 857
    :try_start_9
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 858
    const/16 p2, 0x0

    goto :goto_5

    .line 859
    :catch_2
    move-exception v19

    .line 860
    .local v19, "e":Ljava/io/IOException;
    const-string v29, "SetupManager"

    const-string v30, "parseMyAppsInfo() IOException in closing InputStream."

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 859
    .end local v16    # "doc":Lorg/w3c/dom/Document;
    .end local v17    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v18    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v20    # "i":I
    .end local v21    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v22    # "nodelist_count":I
    .local v19, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v19

    .line 860
    .local v19, "e":Ljava/io/IOException;
    const-string v29, "SetupManager"

    const-string v30, "parseMyAppsInfo() IOException in closing InputStream."

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 859
    .local v19, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v19

    .line 860
    .local v19, "e":Ljava/io/IOException;
    const-string v29, "SetupManager"

    const-string v30, "parseMyAppsInfo() IOException in closing InputStream."

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 859
    .end local v19    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v19

    .line 860
    .restart local v19    # "e":Ljava/io/IOException;
    const-string v30, "SetupManager"

    const-string v31, "parseMyAppsInfo() IOException in closing InputStream."

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private parseSettingsInfo(Ljava/io/InputStream;)Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    .locals 36
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 1323
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v23

    .line 1324
    .local v23, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v23 .. v23}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v20

    .line 1325
    .local v20, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/16 v33, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v29

    .line 1327
    .local v29, "root":Lorg/w3c/dom/Document;
    const/16 v31, 0x0

    .line 1328
    .local v31, "smartRelay":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1329
    .local v5, "wakeupByGesture":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1330
    .local v16, "alwaysOnClock":Ljava/lang/String;
    const/16 v26, 0x0

    .line 1331
    .local v26, "musicController":Ljava/lang/String;
    const/16 v28, 0x0

    .line 1332
    .local v28, "powerkeyDoublePressing":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1333
    .local v21, "clockColor":Ljava/lang/String;
    const/16 v22, 0x0

    .line 1334
    .local v22, "contacts":Ljava/lang/String;
    const/16 v25, 0x0

    .line 1335
    .local v25, "logs":Ljava/lang/String;
    const/16 v30, 0x0

    .line 1336
    .local v30, "safety":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1337
    .local v19, "bgMode":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1338
    .local v18, "bgData":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1340
    .local v17, "bgColor":Ljava/lang/String;
    const-string v33, "smartrelay"

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v33

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v31

    .line 1341
    const-string v33, "wakeupbygesture"

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v33

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 1342
    const-string v33, "alwaysonclock"

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v33

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v16

    .line 1343
    const-string v33, "musiccontroller"

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v33

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v26

    .line 1344
    const-string v33, "powerkeydoublepressing"

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v33

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v28

    .line 1345
    const-string v33, "clockcolor"

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v33

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v21

    .line 1346
    const-string v33, "contacts"

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v33

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v22

    .line 1347
    const-string v33, "logs"

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v33

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v25

    .line 1348
    const-string v33, "safety"

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v33

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v30

    .line 1349
    const-string v33, "bgmode"

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v33

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v19

    .line 1350
    const-string v33, "bgdata"

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v33

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v18

    .line 1351
    const-string v33, "bgcolor"

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v33

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v17

    .line 1353
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getBooleanValFromString(Ljava/lang/String;)Z

    move-result v4

    .line 1354
    .local v4, "smartRelayVal":Z
    const/16 v32, 0x0

    .line 1355
    .local v32, "wakeupByGestureVal":Z
    const-string v33, "on"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_0

    const-string v33, "on1"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_0

    const-string v33, "true"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 1356
    :cond_0
    const/16 v32, 0x1

    .line 1358
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getBooleanValFromString(Ljava/lang/String;)Z

    move-result v6

    .line 1359
    .local v6, "alwaysOnClockVal":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getBooleanValFromString(Ljava/lang/String;)Z

    move-result v7

    .line 1360
    .local v7, "musicControllerVal":Z
    move-object/from16 v8, v28

    .line 1361
    .local v8, "powerkeyDoublePressingVal":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1362
    .local v9, "clockColorVal":I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getBooleanValFromString(Ljava/lang/String;)Z

    move-result v10

    .line 1363
    .local v10, "contactsVal":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getBooleanValFromString(Ljava/lang/String;)Z

    move-result v11

    .line 1364
    .local v11, "logsVal":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getBooleanValFromString(Ljava/lang/String;)Z

    move-result v12

    .line 1365
    .local v12, "safetyVal":Z
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1366
    .local v13, "bgModeVal":I
    move-object/from16 v14, v18

    .line 1367
    .local v14, "bgDataVal":Ljava/lang/String;
    move-object/from16 v15, v17

    .line 1369
    .local v15, "bgColorVal":Ljava/lang/String;
    new-instance v3, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    invoke-direct {v3}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;-><init>()V

    .line 1371
    .local v3, "settingsSetup":Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    invoke-virtual/range {v3 .. v15}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->initSettingsSetup(ZLjava/lang/String;ZZLjava/lang/String;IZZZILjava/lang/String;Ljava/lang/String;)V

    .line 1374
    const-string v33, "SetupManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "parseSettingsInfo() smartRelayVal : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", wakeupByGestureVal : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", alwaysOnClockVal : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", musicControllerVal : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", powerkeyDoublePressingVal : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", clockColorVal : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", contactsVal : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", contactsVal : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", logsVal : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", safetyVal : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", bgModeVal : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ",bgDataVal,  : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", bgColorVal : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1389
    if-eqz p1, :cond_2

    .line 1390
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1396
    .end local v3    # "settingsSetup":Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    .end local v4    # "smartRelayVal":Z
    .end local v5    # "wakeupByGesture":Ljava/lang/String;
    .end local v6    # "alwaysOnClockVal":Z
    .end local v7    # "musicControllerVal":Z
    .end local v8    # "powerkeyDoublePressingVal":Ljava/lang/String;
    .end local v9    # "clockColorVal":I
    .end local v10    # "contactsVal":Z
    .end local v11    # "logsVal":Z
    .end local v12    # "safetyVal":Z
    .end local v13    # "bgModeVal":I
    .end local v14    # "bgDataVal":Ljava/lang/String;
    .end local v15    # "bgColorVal":Ljava/lang/String;
    .end local v16    # "alwaysOnClock":Ljava/lang/String;
    .end local v17    # "bgColor":Ljava/lang/String;
    .end local v18    # "bgData":Ljava/lang/String;
    .end local v19    # "bgMode":Ljava/lang/String;
    .end local v20    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v21    # "clockColor":Ljava/lang/String;
    .end local v22    # "contacts":Ljava/lang/String;
    .end local v23    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "logs":Ljava/lang/String;
    .end local v26    # "musicController":Ljava/lang/String;
    .end local v28    # "powerkeyDoublePressing":Ljava/lang/String;
    .end local v29    # "root":Lorg/w3c/dom/Document;
    .end local v30    # "safety":Ljava/lang/String;
    .end local v31    # "smartRelay":Ljava/lang/String;
    .end local v32    # "wakeupByGestureVal":Z
    :cond_2
    :goto_0
    return-object v3

    .line 1392
    .restart local v3    # "settingsSetup":Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    .restart local v4    # "smartRelayVal":Z
    .restart local v5    # "wakeupByGesture":Ljava/lang/String;
    .restart local v6    # "alwaysOnClockVal":Z
    .restart local v7    # "musicControllerVal":Z
    .restart local v8    # "powerkeyDoublePressingVal":Ljava/lang/String;
    .restart local v9    # "clockColorVal":I
    .restart local v10    # "contactsVal":Z
    .restart local v11    # "logsVal":Z
    .restart local v12    # "safetyVal":Z
    .restart local v13    # "bgModeVal":I
    .restart local v14    # "bgDataVal":Ljava/lang/String;
    .restart local v15    # "bgColorVal":Ljava/lang/String;
    .restart local v16    # "alwaysOnClock":Ljava/lang/String;
    .restart local v17    # "bgColor":Ljava/lang/String;
    .restart local v18    # "bgData":Ljava/lang/String;
    .restart local v19    # "bgMode":Ljava/lang/String;
    .restart local v20    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v21    # "clockColor":Ljava/lang/String;
    .restart local v22    # "contacts":Ljava/lang/String;
    .restart local v23    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v25    # "logs":Ljava/lang/String;
    .restart local v26    # "musicController":Ljava/lang/String;
    .restart local v28    # "powerkeyDoublePressing":Ljava/lang/String;
    .restart local v29    # "root":Lorg/w3c/dom/Document;
    .restart local v30    # "safety":Ljava/lang/String;
    .restart local v31    # "smartRelay":Ljava/lang/String;
    .restart local v32    # "wakeupByGestureVal":Z
    :catch_0
    move-exception v24

    .line 1393
    .local v24, "e":Ljava/io/IOException;
    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1381
    .end local v3    # "settingsSetup":Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    .end local v4    # "smartRelayVal":Z
    .end local v5    # "wakeupByGesture":Ljava/lang/String;
    .end local v6    # "alwaysOnClockVal":Z
    .end local v7    # "musicControllerVal":Z
    .end local v8    # "powerkeyDoublePressingVal":Ljava/lang/String;
    .end local v9    # "clockColorVal":I
    .end local v10    # "contactsVal":Z
    .end local v11    # "logsVal":Z
    .end local v12    # "safetyVal":Z
    .end local v13    # "bgModeVal":I
    .end local v14    # "bgDataVal":Ljava/lang/String;
    .end local v15    # "bgColorVal":Ljava/lang/String;
    .end local v16    # "alwaysOnClock":Ljava/lang/String;
    .end local v17    # "bgColor":Ljava/lang/String;
    .end local v18    # "bgData":Ljava/lang/String;
    .end local v19    # "bgMode":Ljava/lang/String;
    .end local v20    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v21    # "clockColor":Ljava/lang/String;
    .end local v22    # "contacts":Ljava/lang/String;
    .end local v23    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v24    # "e":Ljava/io/IOException;
    .end local v25    # "logs":Ljava/lang/String;
    .end local v26    # "musicController":Ljava/lang/String;
    .end local v28    # "powerkeyDoublePressing":Ljava/lang/String;
    .end local v29    # "root":Lorg/w3c/dom/Document;
    .end local v30    # "safety":Ljava/lang/String;
    .end local v31    # "smartRelay":Ljava/lang/String;
    .end local v32    # "wakeupByGestureVal":Z
    :catch_1
    move-exception v24

    .line 1382
    .restart local v24    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1389
    if-eqz p1, :cond_3

    .line 1390
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1396
    .end local v24    # "e":Ljava/io/IOException;
    :cond_3
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1392
    .restart local v24    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v24

    .line 1393
    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1383
    .end local v24    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v27

    .line 1384
    .local v27, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_4
    invoke-virtual/range {v27 .. v27}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1389
    if-eqz p1, :cond_3

    .line 1390
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 1392
    :catch_4
    move-exception v24

    .line 1393
    .restart local v24    # "e":Ljava/io/IOException;
    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1385
    .end local v24    # "e":Ljava/io/IOException;
    .end local v27    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_5
    move-exception v24

    .line 1386
    .local v24, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1389
    if-eqz p1, :cond_3

    .line 1390
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1

    .line 1392
    :catch_6
    move-exception v24

    .line 1393
    .local v24, "e":Ljava/io/IOException;
    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1388
    .end local v24    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v33

    .line 1389
    if-eqz p1, :cond_4

    .line 1390
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1394
    :cond_4
    :goto_2
    throw v33

    .line 1392
    :catch_7
    move-exception v24

    .line 1393
    .restart local v24    # "e":Ljava/io/IOException;
    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private parseTTSInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V
    .locals 31
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/TTSSetup;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 977
    .local p1, "ttsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/TTSSetup;>;"
    if-nez p1, :cond_0

    .line 978
    const-string v28, "SetupManager"

    const-string v29, "parseTTSInfo() ttsList is null..."

    invoke-static/range {v28 .. v29}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "ttsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/TTSSetup;>;"
    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    .line 982
    .restart local p1    # "ttsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/TTSSetup;>;"
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 986
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v16

    .line 987
    .local v16, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v15

    .line 988
    .local v15, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v14

    .line 989
    .local v14, "doc":Lorg/w3c/dom/Document;
    const-string v28, "item"

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 993
    .local v20, "nodelist":Lorg/w3c/dom/NodeList;
    const-string v28, "SetupManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "nodelist size = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    .line 996
    .local v21, "nodelist_count":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 997
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v23

    check-cast v23, Lorg/w3c/dom/Element;

    .line 998
    .local v23, "ttsInfo":Lorg/w3c/dom/Element;
    const-string v28, "AppName"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 999
    .local v3, "appName":Ljava/lang/String;
    const-string v28, "PackageName"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 1000
    .local v4, "packageName":Ljava/lang/String;
    const-string v28, "ClassName"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 1001
    .local v5, "className":Ljava/lang/String;
    const-string v28, "ImageFileName"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 1002
    .local v7, "imageFileName":Ljava/lang/String;
    const-string v28, "SettingFileName"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 1004
    .local v8, "settingFileName":Ljava/lang/String;
    const-string v6, "0.0.1"

    .line 1005
    .local v6, "version":Ljava/lang/String;
    const-string v28, "Version"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    .line 1006
    .local v25, "versionNodeList":Lorg/w3c/dom/NodeList;
    if-eqz v25, :cond_1

    .line 1007
    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 1008
    .local v24, "versionNode":Lorg/w3c/dom/Node;
    if-eqz v24, :cond_1

    .line 1009
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 1013
    .end local v24    # "versionNode":Lorg/w3c/dom/Node;
    :cond_1
    const-string v28, "IsInstalled"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v19

    .line 1014
    .local v19, "installed":Ljava/lang/String;
    const-string v28, "true"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 1015
    const/4 v9, 0x1

    .line 1020
    .local v9, "isInstalled":Z
    :goto_1
    const-string v28, "PreLoad"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v22

    .line 1021
    .local v22, "preLoad":Ljava/lang/String;
    const-string v28, "true"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 1022
    const/4 v10, 0x1

    .line 1027
    .local v10, "isPreload":Z
    :goto_2
    const-string v11, "male"

    .line 1028
    .local v11, "voiceType":Ljava/lang/String;
    const-string v28, "VoiceType"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v27

    .line 1029
    .local v27, "voiceTypeNodeList":Lorg/w3c/dom/NodeList;
    if-eqz v27, :cond_2

    .line 1030
    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    .line 1031
    .local v26, "voiceTypeNode":Lorg/w3c/dom/Node;
    if-eqz v26, :cond_2

    .line 1032
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    .line 1033
    const-string v28, "SetupManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "voiceType: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    .end local v26    # "voiceTypeNode":Lorg/w3c/dom/Node;
    :cond_2
    const-string v12, "TTS"

    .line 1038
    .local v12, "appCategory":Ljava/lang/String;
    const-string v28, "AppCategory"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 1039
    .local v13, "appCategoryNode":Lorg/w3c/dom/NodeList;
    if-eqz v13, :cond_3

    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    if-lez v28, :cond_3

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    if-eqz v28, :cond_3

    .line 1040
    const-string v28, "AppCategory"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v12

    .line 1042
    :cond_3
    const-string v28, "TTS"

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 1043
    const-string v28, "SetupManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "parseTTSInfo() appName = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ". AppCategory is wrong : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :cond_4
    new-instance v2, Lcom/samsung/android/hostmanager/aidl/TTSSetup;

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/hostmanager/aidl/TTSSetup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 1050
    .local v2, "tts":Lcom/samsung/android/hostmanager/aidl/TTSSetup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/hostmanager/setup/SetupManager;->checkNegativeSync(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 996
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 1017
    .end local v2    # "tts":Lcom/samsung/android/hostmanager/aidl/TTSSetup;
    .end local v9    # "isInstalled":Z
    .end local v10    # "isPreload":Z
    .end local v11    # "voiceType":Ljava/lang/String;
    .end local v12    # "appCategory":Ljava/lang/String;
    .end local v13    # "appCategoryNode":Lorg/w3c/dom/NodeList;
    .end local v22    # "preLoad":Ljava/lang/String;
    .end local v27    # "voiceTypeNodeList":Lorg/w3c/dom/NodeList;
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "isInstalled":Z
    goto/16 :goto_1

    .line 1024
    .restart local v22    # "preLoad":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "isPreload":Z
    goto/16 :goto_2

    .line 1054
    .restart local v2    # "tts":Lcom/samsung/android/hostmanager/aidl/TTSSetup;
    .restart local v11    # "voiceType":Ljava/lang/String;
    .restart local v12    # "appCategory":Ljava/lang/String;
    .restart local v13    # "appCategoryNode":Lorg/w3c/dom/NodeList;
    .restart local v27    # "voiceTypeNodeList":Lorg/w3c/dom/NodeList;
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1061
    .end local v2    # "tts":Lcom/samsung/android/hostmanager/aidl/TTSSetup;
    .end local v3    # "appName":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    .end local v7    # "imageFileName":Ljava/lang/String;
    .end local v8    # "settingFileName":Ljava/lang/String;
    .end local v9    # "isInstalled":Z
    .end local v10    # "isPreload":Z
    .end local v11    # "voiceType":Ljava/lang/String;
    .end local v12    # "appCategory":Ljava/lang/String;
    .end local v13    # "appCategoryNode":Lorg/w3c/dom/NodeList;
    .end local v14    # "doc":Lorg/w3c/dom/Document;
    .end local v15    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v16    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v18    # "i":I
    .end local v19    # "installed":Ljava/lang/String;
    .end local v20    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v21    # "nodelist_count":I
    .end local v22    # "preLoad":Ljava/lang/String;
    .end local v23    # "ttsInfo":Lorg/w3c/dom/Element;
    .end local v25    # "versionNodeList":Lorg/w3c/dom/NodeList;
    .end local v27    # "voiceTypeNodeList":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v17

    .line 1062
    .local v17, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_1
    const-string v28, "SetupManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ParserConfigurationException e = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1066
    if-eqz p2, :cond_8

    .line 1068
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1069
    const/16 p2, 0x0

    .line 1076
    .end local v17    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_8
    :goto_4
    const-string v28, "SetupManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "parseTTSInfo() ttsList size = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    return-void

    .line 1057
    .restart local v14    # "doc":Lorg/w3c/dom/Document;
    .restart local v15    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v16    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v18    # "i":I
    .restart local v20    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v21    # "nodelist_count":I
    :cond_9
    if-eqz p2, :cond_a

    .line 1058
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1059
    const/16 p2, 0x0

    .line 1066
    :cond_a
    if-eqz p2, :cond_8

    .line 1068
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1069
    const/16 p2, 0x0

    goto :goto_4

    .line 1070
    :catch_1
    move-exception v17

    .line 1071
    .local v17, "e":Ljava/io/IOException;
    const-string v28, "SetupManager"

    const-string v29, "parseTTSInfo() IOException in closing InputStream."

    invoke-static/range {v28 .. v29}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1070
    .end local v14    # "doc":Lorg/w3c/dom/Document;
    .end local v15    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v16    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v18    # "i":I
    .end local v20    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v21    # "nodelist_count":I
    .local v17, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v17

    .line 1071
    .local v17, "e":Ljava/io/IOException;
    const-string v28, "SetupManager"

    const-string v29, "parseTTSInfo() IOException in closing InputStream."

    invoke-static/range {v28 .. v29}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1063
    .end local v17    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v17

    .line 1064
    .local v17, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1066
    if-eqz p2, :cond_8

    .line 1068
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1069
    const/16 p2, 0x0

    goto :goto_4

    .line 1070
    :catch_4
    move-exception v17

    .line 1071
    .local v17, "e":Ljava/io/IOException;
    const-string v28, "SetupManager"

    const-string v29, "parseTTSInfo() IOException in closing InputStream."

    invoke-static/range {v28 .. v29}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1066
    .end local v17    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v28

    if-eqz p2, :cond_b

    .line 1068
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1069
    const/16 p2, 0x0

    .line 1072
    :cond_b
    :goto_5
    throw v28

    .line 1070
    :catch_5
    move-exception v17

    .line 1071
    .restart local v17    # "e":Ljava/io/IOException;
    const-string v29, "SetupManager"

    const-string v30, "parseTTSInfo() IOException in closing InputStream."

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private readClockListXML(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 18
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3532
    .local p2, "clockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;>;"
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3533
    .local v8, "file":Ljava/io/File;
    const-string v15, "SetupManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readXML file = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3534
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 3535
    const/4 v2, 0x0

    .line 3537
    .local v2, "clocklistfis":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3539
    .end local v2    # "clocklistfis":Ljava/io/InputStream;
    .local v3, "clocklistfis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 3540
    .local v6, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 3541
    .local v5, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v5, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 3542
    .local v4, "doc":Lorg/w3c/dom/Document;
    const-string v15, "item"

    invoke-interface {v4, v15}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 3544
    .local v10, "nodelist":Lorg/w3c/dom/NodeList;
    const-string v15, "SetupManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "nodelist size = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3545
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    .line 3546
    .local v11, "nodelist_count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_0

    .line 3547
    invoke-interface {v10, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 3548
    .local v1, "clockinfo":Lorg/w3c/dom/Element;
    const-string v15, "PackageName"

    invoke-interface {v1, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v12

    .line 3549
    .local v12, "packageName":Ljava/lang/String;
    const-string v15, "SettingFileName"

    invoke-interface {v1, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v14

    .line 3551
    .local v14, "settingFileName":Ljava/lang/String;
    new-instance v13, Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;

    invoke-direct {v13}, Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;-><init>()V

    .line 3552
    .local v13, "setting":Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;
    iput-object v12, v13, Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;->PackageName:Ljava/lang/String;

    .line 3553
    iput-object v14, v13, Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;->settingFileName:Ljava/lang/String;

    .line 3554
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3546
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3557
    .end local v1    # "clockinfo":Lorg/w3c/dom/Element;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "setting":Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;
    .end local v14    # "settingFileName":Ljava/lang/String;
    :cond_0
    const-string v15, "SetupManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "clockList size ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3558
    if-eqz v3, :cond_1

    .line 3559
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3567
    :cond_1
    if-eqz v3, :cond_2

    .line 3568
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 3572
    .end local v3    # "clocklistfis":Ljava/io/InputStream;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "i":I
    .end local v10    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v11    # "nodelist_count":I
    :cond_2
    :goto_1
    return-void

    .line 3561
    .restart local v2    # "clocklistfis":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .line 3562
    .local v7, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_2
    :try_start_2
    const-string v15, "SetupManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ParserConfigurationException e = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3567
    if-eqz v2, :cond_2

    .line 3568
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 3563
    .end local v7    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v7

    .line 3564
    .local v7, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string v15, "SetupManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception e = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3565
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3567
    if-eqz v2, :cond_2

    .line 3568
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 3567
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    :goto_4
    if-eqz v2, :cond_3

    .line 3568
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v15

    .line 3567
    .end local v2    # "clocklistfis":Ljava/io/InputStream;
    .restart local v3    # "clocklistfis":Ljava/io/InputStream;
    :catchall_1
    move-exception v15

    move-object v2, v3

    .end local v3    # "clocklistfis":Ljava/io/InputStream;
    .restart local v2    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_4

    .line 3563
    .end local v2    # "clocklistfis":Ljava/io/InputStream;
    .restart local v3    # "clocklistfis":Ljava/io/InputStream;
    :catch_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "clocklistfis":Ljava/io/InputStream;
    .restart local v2    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_3

    .line 3561
    .end local v2    # "clocklistfis":Ljava/io/InputStream;
    .restart local v3    # "clocklistfis":Ljava/io/InputStream;
    :catch_3
    move-exception v7

    move-object v2, v3

    .end local v3    # "clocklistfis":Ljava/io/InputStream;
    .restart local v2    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private readWappListXML(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 18
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3621
    .local p2, "wAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;>;"
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3622
    .local v5, "file":Ljava/io/File;
    const-string v15, "SetupManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readXML file = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3623
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 3624
    const/4 v13, 0x0

    .line 3626
    .local v13, "wapplistfis":Ljava/io/InputStream;
    :try_start_0
    new-instance v14, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3627
    .end local v13    # "wapplistfis":Ljava/io/InputStream;
    .local v14, "wapplistfis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 3628
    .local v3, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 3629
    .local v2, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v14}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 3630
    .local v1, "doc":Lorg/w3c/dom/Document;
    const-string v15, "item"

    invoke-interface {v1, v15}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 3632
    .local v7, "nodelist":Lorg/w3c/dom/NodeList;
    const-string v15, "SetupManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "nodelist size = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3633
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    .line 3634
    .local v8, "nodelist_count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 3635
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 3636
    .local v12, "wappinfo":Lorg/w3c/dom/Element;
    const-string v15, "PackageName"

    invoke-interface {v12, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 3637
    .local v9, "packageName":Ljava/lang/String;
    const-string v15, "SettingFileName"

    invoke-interface {v12, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    .line 3638
    .local v11, "settingFileName":Ljava/lang/String;
    new-instance v10, Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;

    invoke-direct {v10}, Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;-><init>()V

    .line 3639
    .local v10, "setting":Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;
    iput-object v9, v10, Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;->PackageName:Ljava/lang/String;

    .line 3640
    iput-object v11, v10, Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;->settingFileName:Ljava/lang/String;

    .line 3641
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3634
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3643
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "setting":Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;
    .end local v11    # "settingFileName":Ljava/lang/String;
    .end local v12    # "wappinfo":Lorg/w3c/dom/Element;
    :cond_0
    const-string v15, "SetupManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readXML() installedClockList size = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3644
    if-eqz v14, :cond_1

    .line 3645
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3653
    :cond_1
    if-eqz v14, :cond_2

    .line 3654
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 3658
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6    # "i":I
    .end local v7    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v8    # "nodelist_count":I
    .end local v14    # "wapplistfis":Ljava/io/InputStream;
    :cond_2
    :goto_1
    return-void

    .line 3647
    .restart local v13    # "wapplistfis":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 3648
    .local v4, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_2
    :try_start_2
    const-string v15, "SetupManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ParserConfigurationException e = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3653
    if-eqz v13, :cond_2

    .line 3654
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 3649
    .end local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v4

    .line 3650
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string v15, "SetupManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception e = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3651
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3653
    if-eqz v13, :cond_2

    .line 3654
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 3653
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    :goto_4
    if-eqz v13, :cond_3

    .line 3654
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v15

    .line 3653
    .end local v13    # "wapplistfis":Ljava/io/InputStream;
    .restart local v14    # "wapplistfis":Ljava/io/InputStream;
    :catchall_1
    move-exception v15

    move-object v13, v14

    .end local v14    # "wapplistfis":Ljava/io/InputStream;
    .restart local v13    # "wapplistfis":Ljava/io/InputStream;
    goto :goto_4

    .line 3649
    .end local v13    # "wapplistfis":Ljava/io/InputStream;
    .restart local v14    # "wapplistfis":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    move-object v13, v14

    .end local v14    # "wapplistfis":Ljava/io/InputStream;
    .restart local v13    # "wapplistfis":Ljava/io/InputStream;
    goto :goto_3

    .line 3647
    .end local v13    # "wapplistfis":Ljava/io/InputStream;
    .restart local v14    # "wapplistfis":Ljava/io/InputStream;
    :catch_3
    move-exception v4

    move-object v13, v14

    .end local v14    # "wapplistfis":Ljava/io/InputStream;
    .restart local v13    # "wapplistfis":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private restoreWappSettings(Ljava/lang/String;)V
    .locals 13
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 3662
    const/4 v1, 0x0

    .line 3664
    .local v1, "bnrManager":Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getBackupRestoreManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3669
    :goto_0
    if-nez v1, :cond_1

    .line 3670
    const-string v10, "SetupManager"

    const-string v11, "restoreWappSettings() bnrManager is Null"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3708
    :cond_0
    return-void

    .line 3665
    :catch_0
    move-exception v2

    .line 3666
    .local v2, "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 3674
    .end local v2    # "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    :cond_1
    iget-object v10, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->restoreWAppList:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    .line 3675
    iget-object v10, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->restoreWAppList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3676
    .local v6, "installedWappList_count":I
    const/4 v5, 0x0

    .local v5, "idx":I
    :goto_1
    if-ge v5, v6, :cond_0

    .line 3677
    iget-object v10, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->restoreWAppList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;

    iget-object v9, v10, Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;->settingFileName:Ljava/lang/String;

    .line 3678
    .local v9, "xmlFileName":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->restoreWAppList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;

    iget-object v0, v10, Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;->PackageName:Ljava/lang/String;

    .line 3680
    .local v0, "PackageName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v1}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3683
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3684
    const-string v10, "SetupManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wapp setting filename = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3686
    const-string v10, "_settings.xml"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3687
    .local v4, "fileName":[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_result.xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3688
    .local v8, "settingResultFileName":Ljava/lang/String;
    const-string v10, "SetupManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wapp setting result filename = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3689
    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 3690
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v11

    .line 3689
    invoke-static {v11, v1}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3693
    .local v7, "resultFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3694
    const-string v10, "SetupManager"

    const-string v11, "resultFile exist..."

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3696
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v10

    iget-object v10, v10, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v10, :cond_2

    .line 3697
    const-string v10, "SetupManager"

    const-string v11, " Send Wapp Setting..."

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3698
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v10

    iget-object v10, v10, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v10, v0, v8, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendSettingResultXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3676
    .end local v4    # "fileName":[Ljava/lang/String;
    .end local v7    # "resultFile":Ljava/io/File;
    .end local v8    # "settingResultFileName":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 3704
    :cond_3
    const-string v10, "SetupManager"

    const-string v11, "Clock Setting XML not exist.."

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateCallForwardSetup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2882
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v0

    .line 2883
    .local v0, "deviceSetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    const-string v1, "SetupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetupManager::updateSettingsSetup() mDeviceId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deviceSetup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2886
    if-nez v0, :cond_1

    .line 2887
    const-string v1, "SetupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSettingsSetup() cannot update.. deviceSetup for mDeviceId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is null..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2927
    :cond_0
    :goto_0
    return-void

    .line 2891
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2892
    const-string v1, "SetupManager"

    const-string v2, "updateSettingsSetup() cannot update.. deviceSetup.getSettings()"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2896
    :cond_2
    const-string v1, "smartrelay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2897
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setSmart(Z)V

    goto :goto_0

    .line 2898
    :cond_3
    const-string v1, "wakeupbygesture"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2899
    const-string v1, "false"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2900
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setWakeup(Ljava/lang/String;)V

    goto :goto_0

    .line 2901
    :cond_4
    const-string v1, "on"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "on1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2902
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setWakeup(Ljava/lang/String;)V

    goto :goto_0

    .line 2903
    :cond_6
    const-string v1, "off"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2904
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setWakeup(Ljava/lang/String;)V

    goto :goto_0

    .line 2906
    :cond_7
    const-string v1, "alwaysonclock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2907
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setAlwayscOnClock(Z)V

    goto :goto_0

    .line 2908
    :cond_8
    const-string v1, "musiccontroller"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2909
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setMusicController(Z)V

    goto/16 :goto_0

    .line 2910
    :cond_9
    const-string v1, "powerkeydoublepressing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2911
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setPDPressing(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2912
    :cond_a
    const-string v1, "clockcolor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2913
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setClockColor(I)V

    goto/16 :goto_0

    .line 2914
    :cond_b
    const-string v1, "contacts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2915
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setContacts(Z)V

    goto/16 :goto_0

    .line 2916
    :cond_c
    const-string v1, "logs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2917
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setLogs(Z)V

    goto/16 :goto_0

    .line 2918
    :cond_d
    const-string v1, "safety"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2919
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setSafety(Z)V

    goto/16 :goto_0

    .line 2920
    :cond_e
    const-string v1, "bgmode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2921
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setBGMode(I)V

    goto/16 :goto_0

    .line 2922
    :cond_f
    const-string v1, "bgdata"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2923
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setBGData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2924
    :cond_10
    const-string v1, "bgcolor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2925
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setBGColor(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateSettingsSetup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2834
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v0

    .line 2835
    .local v0, "deviceSetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    const-string v1, "SetupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetupManager::updateSettingsSetup() mDeviceId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deviceSetup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2838
    if-nez v0, :cond_1

    .line 2839
    const-string v1, "SetupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSettingsSetup() cannot update.. deviceSetup for mDeviceId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is null..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2879
    :cond_0
    :goto_0
    return-void

    .line 2843
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2844
    const-string v1, "SetupManager"

    const-string v2, "updateSettingsSetup() cannot update.. deviceSetup.getSettings()"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2848
    :cond_2
    const-string v1, "smartrelay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2849
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setSmart(Z)V

    goto :goto_0

    .line 2850
    :cond_3
    const-string v1, "wakeupbygesture"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2851
    const-string v1, "false"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2852
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setWakeup(Ljava/lang/String;)V

    goto :goto_0

    .line 2853
    :cond_4
    const-string v1, "on"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "on1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2854
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setWakeup(Ljava/lang/String;)V

    goto :goto_0

    .line 2855
    :cond_6
    const-string v1, "off"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2856
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setWakeup(Ljava/lang/String;)V

    goto :goto_0

    .line 2858
    :cond_7
    const-string v1, "alwaysonclock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2859
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setAlwayscOnClock(Z)V

    goto :goto_0

    .line 2860
    :cond_8
    const-string v1, "musiccontroller"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2861
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setMusicController(Z)V

    goto/16 :goto_0

    .line 2862
    :cond_9
    const-string v1, "powerkeydoublepressing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2863
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setPDPressing(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2864
    :cond_a
    const-string v1, "clockcolor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2865
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setClockColor(I)V

    goto/16 :goto_0

    .line 2866
    :cond_b
    const-string v1, "contacts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2867
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setContacts(Z)V

    goto/16 :goto_0

    .line 2868
    :cond_c
    const-string v1, "logs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2869
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setLogs(Z)V

    goto/16 :goto_0

    .line 2870
    :cond_d
    const-string v1, "safety"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2871
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setSafety(Z)V

    goto/16 :goto_0

    .line 2872
    :cond_e
    const-string v1, "bgmode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2873
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setBGMode(I)V

    goto/16 :goto_0

    .line 2874
    :cond_f
    const-string v1, "bgdata"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2875
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setBGData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2876
    :cond_10
    const-string v1, "bgcolor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2877
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->setBGColor(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public changeIdleClock(Ljava/lang/String;)V
    .locals 21
    .param p1, "idleClockPackageName"    # Ljava/lang/String;

    .prologue
    .line 2350
    const/4 v2, 0x0

    .line 2351
    .local v2, "clockInfoInputStream":Ljava/io/InputStream;
    new-instance v11, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "clocklist.xml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2352
    .local v11, "file":Ljava/io/File;
    const/4 v9, 0x0

    .line 2353
    .local v9, "fi":Ljava/io/FileInputStream;
    const-string v18, "SetupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "changeIdleClock file = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2356
    .end local v9    # "fi":Ljava/io/FileInputStream;
    .local v10, "fi":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 2357
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2358
    .end local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    .local v3, "clockInfoInputStream":Ljava/io/InputStream;
    :try_start_2
    const-string v18, "SetupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "changeIdleClock() save to XML file, filepath = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    invoke-virtual {v11}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 2362
    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 2363
    .local v7, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 2364
    .local v6, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v6, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 2365
    .local v5, "doc":Lorg/w3c/dom/Document;
    const-string v18, "item"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 2366
    .local v13, "nodelist":Lorg/w3c/dom/NodeList;
    const-string v18, "SetupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "nodelist size = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    .line 2368
    .local v14, "nodelist_count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v14, :cond_1

    .line 2369
    invoke-interface {v13, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 2370
    .local v4, "clockinfo":Lorg/w3c/dom/Element;
    const-string v18, "IsShown"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v18

    const-string v19, "true"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2371
    const-string v18, "IsShown"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    const-string v19, "false"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 2368
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2374
    .end local v4    # "clockinfo":Lorg/w3c/dom/Element;
    :cond_1
    const/4 v12, 0x0

    :goto_1
    if-ge v12, v14, :cond_3

    .line 2375
    invoke-interface {v13, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 2376
    .restart local v4    # "clockinfo":Lorg/w3c/dom/Element;
    const-string v18, "PackageName"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v18

    .line 2377
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 2378
    const-string v18, "IsShown"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    const-string v19, "true"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 2374
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2382
    .end local v4    # "clockinfo":Lorg/w3c/dom/Element;
    :cond_3
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v17

    .line 2383
    .local v17, "tansformer":Ljavax/xml/transform/Transformer;
    new-instance v16, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 2384
    .local v16, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v15, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v15, v11}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 2385
    .local v15, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 2387
    if-eqz v3, :cond_d

    .line 2388
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2389
    const/4 v2, 0x0

    .line 2398
    .end local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    :goto_2
    if-eqz v2, :cond_4

    .line 2399
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2400
    const/4 v2, 0x0

    .line 2420
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12    # "i":I
    .end local v13    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v14    # "nodelist_count":I
    .end local v15    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v16    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v17    # "tansformer":Ljavax/xml/transform/Transformer;
    :cond_4
    :goto_3
    if-eqz v10, :cond_c

    .line 2422
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 2423
    const/4 v9, 0x0

    .line 2428
    .end local v10    # "fi":Ljava/io/FileInputStream;
    .restart local v9    # "fi":Ljava/io/FileInputStream;
    :goto_4
    const/4 v11, 0x0

    .line 2429
    if-eqz v2, :cond_5

    .line 2431
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 2432
    const/4 v2, 0x0

    .line 2438
    :cond_5
    :goto_5
    return-void

    .line 2402
    .end local v9    # "fi":Ljava/io/FileInputStream;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v10    # "fi":Ljava/io/FileInputStream;
    .restart local v12    # "i":I
    .restart local v13    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v14    # "nodelist_count":I
    .restart local v15    # "result":Ljavax/xml/transform/stream/StreamResult;
    .restart local v16    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v17    # "tansformer":Ljavax/xml/transform/Transformer;
    :catch_0
    move-exception v8

    .line 2403
    .local v8, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 2417
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v12    # "i":I
    .end local v13    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v14    # "nodelist_count":I
    .end local v15    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v16    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v17    # "tansformer":Ljavax/xml/transform/Transformer;
    :catch_1
    move-exception v18

    move-object v9, v10

    .line 2420
    .end local v10    # "fi":Ljava/io/FileInputStream;
    .restart local v9    # "fi":Ljava/io/FileInputStream;
    :goto_6
    if-eqz v9, :cond_6

    .line 2422
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .line 2423
    const/4 v9, 0x0

    .line 2428
    :cond_6
    :goto_7
    const/4 v11, 0x0

    .line 2429
    if-eqz v2, :cond_5

    .line 2431
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 2432
    const/4 v2, 0x0

    goto :goto_5

    .line 2392
    .end local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    .end local v9    # "fi":Ljava/io/FileInputStream;
    .restart local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v10    # "fi":Ljava/io/FileInputStream;
    :catch_2
    move-exception v8

    .line 2393
    .local v8, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_a
    const-string v18, "SetupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ParserConfigurationException e = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2398
    if-eqz v3, :cond_b

    .line 2399
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_f
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 2400
    const/4 v2, 0x0

    .end local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 2402
    .end local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v8

    .line 2403
    .local v8, "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object v2, v3

    .line 2405
    .end local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 2394
    .end local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    :catch_4
    move-exception v8

    .line 2395
    .local v8, "e":Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2398
    if-eqz v3, :cond_b

    .line 2399
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 2400
    const/4 v2, 0x0

    .end local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 2402
    .end local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    :catch_5
    move-exception v8

    .line 2403
    .local v8, "e":Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-object v2, v3

    .line 2405
    .end local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 2397
    .end local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v18

    .line 2398
    if-eqz v3, :cond_9

    .line 2399
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_f
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 2400
    const/4 v2, 0x0

    .line 2404
    .end local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    :goto_8
    :try_start_11
    throw v18
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 2420
    :catchall_1
    move-exception v18

    move-object v9, v10

    .end local v10    # "fi":Ljava/io/FileInputStream;
    .restart local v9    # "fi":Ljava/io/FileInputStream;
    :goto_9
    if-eqz v9, :cond_7

    .line 2422
    :try_start_12
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 2423
    const/4 v9, 0x0

    .line 2428
    :cond_7
    :goto_a
    const/4 v11, 0x0

    .line 2429
    if-eqz v2, :cond_8

    .line 2431
    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    .line 2432
    const/4 v2, 0x0

    .line 2435
    :cond_8
    :goto_b
    throw v18

    .line 2402
    .end local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    .end local v9    # "fi":Ljava/io/FileInputStream;
    .restart local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v10    # "fi":Ljava/io/FileInputStream;
    :catch_6
    move-exception v8

    .line 2403
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_14
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_f
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .end local v8    # "e":Ljava/io/IOException;
    :cond_9
    move-object v2, v3

    .end local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    goto :goto_8

    .line 2408
    .end local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    :cond_a
    if-eqz v3, :cond_b

    .line 2409
    :try_start_15
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_f
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 2410
    const/4 v2, 0x0

    .end local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 2412
    .end local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    :catch_7
    move-exception v8

    .line 2413
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_16
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_f
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .end local v8    # "e":Ljava/io/IOException;
    :cond_b
    move-object v2, v3

    .end local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 2424
    :catch_8
    move-exception v8

    .line 2425
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .end local v8    # "e":Ljava/io/IOException;
    :cond_c
    move-object v9, v10

    .end local v10    # "fi":Ljava/io/FileInputStream;
    .restart local v9    # "fi":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 2433
    :catch_9
    move-exception v8

    .line 2434
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 2424
    .end local v8    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v8

    .line 2425
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 2433
    .end local v8    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v8

    .line 2434
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 2424
    .end local v8    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v8

    .line 2425
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 2433
    .end local v8    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v8

    .line 2434
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 2420
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v18

    goto :goto_9

    .end local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    .end local v9    # "fi":Ljava/io/FileInputStream;
    .restart local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v10    # "fi":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v18

    move-object v9, v10

    .end local v10    # "fi":Ljava/io/FileInputStream;
    .restart local v9    # "fi":Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    goto :goto_9

    .line 2417
    :catch_e
    move-exception v18

    goto/16 :goto_6

    .end local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    .end local v9    # "fi":Ljava/io/FileInputStream;
    .restart local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v10    # "fi":Ljava/io/FileInputStream;
    :catch_f
    move-exception v18

    move-object v9, v10

    .end local v10    # "fi":Ljava/io/FileInputStream;
    .restart local v9    # "fi":Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    goto/16 :goto_6

    .end local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    .end local v9    # "fi":Ljava/io/FileInputStream;
    .restart local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v10    # "fi":Ljava/io/FileInputStream;
    .restart local v12    # "i":I
    .restart local v13    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v14    # "nodelist_count":I
    .restart local v15    # "result":Ljavax/xml/transform/stream/StreamResult;
    .restart local v16    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v17    # "tansformer":Ljavax/xml/transform/Transformer;
    :cond_d
    move-object v2, v3

    .end local v3    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v2    # "clockInfoInputStream":Ljava/io/InputStream;
    goto/16 :goto_2
.end method

.method public changeIdleFont(Ljava/lang/String;)V
    .locals 21
    .param p1, "idleFontFamilyname"    # Ljava/lang/String;

    .prologue
    .line 2441
    const/4 v9, 0x0

    .line 2442
    .local v9, "fontInfoInputStream":Ljava/io/InputStream;
    new-instance v8, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "fontlist.xml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2443
    .local v8, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 2444
    .local v6, "fi":Ljava/io/FileInputStream;
    const-string v18, "SetupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "changeIdleFont file = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2447
    .end local v6    # "fi":Ljava/io/FileInputStream;
    .local v7, "fi":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 2448
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-direct {v10, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2449
    .end local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    .local v10, "fontInfoInputStream":Ljava/io/InputStream;
    :try_start_2
    const-string v18, "SetupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "changeIdleFont() save to XML file, filepath = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 2453
    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 2454
    .local v4, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 2455
    .local v3, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 2456
    .local v2, "doc":Lorg/w3c/dom/Document;
    const-string v18, "item"

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 2457
    .local v13, "nodelist":Lorg/w3c/dom/NodeList;
    const-string v18, "SetupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "nodelist size = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    .line 2459
    .local v14, "nodelist_count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v14, :cond_1

    .line 2460
    invoke-interface {v13, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 2461
    .local v11, "fontinfo":Lorg/w3c/dom/Element;
    const-string v18, "IsShown"

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v18

    const-string v19, "true"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2462
    const-string v18, "IsShown"

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    const-string v19, "false"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 2459
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2465
    .end local v11    # "fontinfo":Lorg/w3c/dom/Element;
    :cond_1
    const/4 v12, 0x0

    :goto_1
    if-ge v12, v14, :cond_3

    .line 2466
    invoke-interface {v13, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 2467
    .restart local v11    # "fontinfo":Lorg/w3c/dom/Element;
    const-string v18, "FamilyName"

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v18

    .line 2468
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 2469
    const-string v18, "IsShown"

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    const-string v19, "true"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 2465
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2473
    .end local v11    # "fontinfo":Lorg/w3c/dom/Element;
    :cond_3
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v17

    .line 2474
    .local v17, "tansformer":Ljavax/xml/transform/Transformer;
    new-instance v16, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 2475
    .local v16, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v15, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v15, v8}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 2476
    .local v15, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 2478
    if-eqz v10, :cond_d

    .line 2479
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2480
    const/4 v9, 0x0

    .line 2489
    .end local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    :goto_2
    if-eqz v9, :cond_4

    .line 2490
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2491
    const/4 v9, 0x0

    .line 2511
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12    # "i":I
    .end local v13    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v14    # "nodelist_count":I
    .end local v15    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v16    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v17    # "tansformer":Ljavax/xml/transform/Transformer;
    :cond_4
    :goto_3
    if-eqz v7, :cond_c

    .line 2513
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 2514
    const/4 v6, 0x0

    .line 2519
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v6    # "fi":Ljava/io/FileInputStream;
    :goto_4
    const/4 v8, 0x0

    .line 2520
    if-eqz v9, :cond_5

    .line 2522
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 2523
    const/4 v9, 0x0

    .line 2529
    :cond_5
    :goto_5
    return-void

    .line 2493
    .end local v6    # "fi":Ljava/io/FileInputStream;
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    .restart local v3    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v12    # "i":I
    .restart local v13    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v14    # "nodelist_count":I
    .restart local v15    # "result":Ljavax/xml/transform/stream/StreamResult;
    .restart local v16    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v17    # "tansformer":Ljavax/xml/transform/Transformer;
    :catch_0
    move-exception v5

    .line 2494
    .local v5, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 2508
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v12    # "i":I
    .end local v13    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v14    # "nodelist_count":I
    .end local v15    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v16    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v17    # "tansformer":Ljavax/xml/transform/Transformer;
    :catch_1
    move-exception v18

    move-object v6, v7

    .line 2511
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v6    # "fi":Ljava/io/FileInputStream;
    :goto_6
    if-eqz v6, :cond_6

    .line 2513
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .line 2514
    const/4 v6, 0x0

    .line 2519
    :cond_6
    :goto_7
    const/4 v8, 0x0

    .line 2520
    if-eqz v9, :cond_5

    .line 2522
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 2523
    const/4 v9, 0x0

    goto :goto_5

    .line 2483
    .end local v6    # "fi":Ljava/io/FileInputStream;
    .end local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v5

    .line 2484
    .local v5, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_a
    const-string v18, "SetupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ParserConfigurationException e = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2489
    if-eqz v10, :cond_b

    .line 2490
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_f
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 2491
    const/4 v9, 0x0

    .end local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 2493
    .end local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v5

    .line 2494
    .local v5, "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object v9, v10

    .line 2496
    .end local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 2485
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    :catch_4
    move-exception v5

    .line 2486
    .local v5, "e":Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2489
    if-eqz v10, :cond_b

    .line 2490
    :try_start_e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 2491
    const/4 v9, 0x0

    .end local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 2493
    .end local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    :catch_5
    move-exception v5

    .line 2494
    .local v5, "e":Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-object v9, v10

    .line 2496
    .end local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 2488
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v18

    .line 2489
    if-eqz v10, :cond_9

    .line 2490
    :try_start_10
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_f
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 2491
    const/4 v9, 0x0

    .line 2495
    .end local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    :goto_8
    :try_start_11
    throw v18
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 2511
    :catchall_1
    move-exception v18

    move-object v6, v7

    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v6    # "fi":Ljava/io/FileInputStream;
    :goto_9
    if-eqz v6, :cond_7

    .line 2513
    :try_start_12
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 2514
    const/4 v6, 0x0

    .line 2519
    :cond_7
    :goto_a
    const/4 v8, 0x0

    .line 2520
    if-eqz v9, :cond_8

    .line 2522
    :try_start_13
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    .line 2523
    const/4 v9, 0x0

    .line 2526
    :cond_8
    :goto_b
    throw v18

    .line 2493
    .end local v6    # "fi":Ljava/io/FileInputStream;
    .end local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    :catch_6
    move-exception v5

    .line 2494
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_14
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_f
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .end local v5    # "e":Ljava/io/IOException;
    :cond_9
    move-object v9, v10

    .end local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    goto :goto_8

    .line 2499
    .end local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    :cond_a
    if-eqz v10, :cond_b

    .line 2500
    :try_start_15
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_f
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 2501
    const/4 v9, 0x0

    .end local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 2503
    .end local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    :catch_7
    move-exception v5

    .line 2504
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_16
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_f
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .end local v5    # "e":Ljava/io/IOException;
    :cond_b
    move-object v9, v10

    .end local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 2515
    :catch_8
    move-exception v5

    .line 2516
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    :cond_c
    move-object v6, v7

    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v6    # "fi":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 2524
    :catch_9
    move-exception v5

    .line 2525
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 2515
    .end local v5    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v5

    .line 2516
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 2524
    .end local v5    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v5

    .line 2525
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 2515
    .end local v5    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v5

    .line 2516
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 2524
    .end local v5    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v5

    .line 2525
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 2511
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v18

    goto :goto_9

    .end local v6    # "fi":Ljava/io/FileInputStream;
    .end local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    :catchall_3
    move-exception v18

    move-object v6, v7

    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v6    # "fi":Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    goto :goto_9

    .line 2508
    :catch_e
    move-exception v18

    goto/16 :goto_6

    .end local v6    # "fi":Ljava/io/FileInputStream;
    .end local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    :catch_f
    move-exception v18

    move-object v6, v7

    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v6    # "fi":Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    goto/16 :goto_6

    .end local v6    # "fi":Ljava/io/FileInputStream;
    .end local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    .restart local v3    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v12    # "i":I
    .restart local v13    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v14    # "nodelist_count":I
    .restart local v15    # "result":Ljavax/xml/transform/stream/StreamResult;
    .restart local v16    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v17    # "tansformer":Ljavax/xml/transform/Transformer;
    :cond_d
    move-object v9, v10

    .end local v10    # "fontInfoInputStream":Ljava/io/InputStream;
    .restart local v9    # "fontInfoInputStream":Ljava/io/InputStream;
    goto/16 :goto_2
.end method

.method public changeIdleIME(Ljava/lang/String;)V
    .locals 21
    .param p1, "idleIMEClasseName"    # Ljava/lang/String;

    .prologue
    .line 2532
    const/4 v11, 0x0

    .line 2533
    .local v11, "imeInfoInputStream":Ljava/io/InputStream;
    new-instance v8, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "imelist.xml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2534
    .local v8, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 2535
    .local v6, "fi":Ljava/io/FileInputStream;
    const-string v18, "SetupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "changeIdleIME file = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2538
    .end local v6    # "fi":Ljava/io/FileInputStream;
    .local v7, "fi":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 2539
    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-direct {v12, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2540
    .end local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    .local v12, "imeInfoInputStream":Ljava/io/InputStream;
    :try_start_2
    const-string v18, "SetupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "changeIdleIME() save to XML file, filepath = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 2544
    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 2545
    .local v4, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 2546
    .local v3, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 2547
    .local v2, "doc":Lorg/w3c/dom/Document;
    const-string v18, "item"

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 2548
    .local v13, "nodelist":Lorg/w3c/dom/NodeList;
    const-string v18, "SetupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "nodelist size = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2549
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    .line 2550
    .local v14, "nodelist_count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v14, :cond_1

    .line 2551
    invoke-interface {v13, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 2552
    .local v10, "imeInfo":Lorg/w3c/dom/Element;
    const-string v18, "IsShown"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v18

    const-string v19, "true"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2553
    const-string v18, "IsShown"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    const-string v19, "false"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 2550
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2556
    .end local v10    # "imeInfo":Lorg/w3c/dom/Element;
    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_3

    .line 2557
    invoke-interface {v13, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 2558
    .restart local v10    # "imeInfo":Lorg/w3c/dom/Element;
    const-string v18, "ClassName"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v18

    .line 2559
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 2560
    const-string v18, "IsShown"

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    const-string v19, "true"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 2556
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2564
    .end local v10    # "imeInfo":Lorg/w3c/dom/Element;
    :cond_3
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v17

    .line 2565
    .local v17, "tansformer":Ljavax/xml/transform/Transformer;
    new-instance v16, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 2566
    .local v16, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v15, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v15, v8}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 2567
    .local v15, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 2569
    if-eqz v12, :cond_d

    .line 2570
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2571
    const/4 v11, 0x0

    .line 2580
    .end local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    :goto_2
    if-eqz v11, :cond_4

    .line 2581
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2582
    const/4 v11, 0x0

    .line 2602
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "i":I
    .end local v13    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v14    # "nodelist_count":I
    .end local v15    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v16    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v17    # "tansformer":Ljavax/xml/transform/Transformer;
    :cond_4
    :goto_3
    if-eqz v7, :cond_c

    .line 2604
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 2605
    const/4 v6, 0x0

    .line 2610
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v6    # "fi":Ljava/io/FileInputStream;
    :goto_4
    const/4 v8, 0x0

    .line 2611
    if-eqz v11, :cond_5

    .line 2613
    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 2614
    const/4 v11, 0x0

    .line 2620
    :cond_5
    :goto_5
    return-void

    .line 2584
    .end local v6    # "fi":Ljava/io/FileInputStream;
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    .restart local v3    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v9    # "i":I
    .restart local v13    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v14    # "nodelist_count":I
    .restart local v15    # "result":Ljavax/xml/transform/stream/StreamResult;
    .restart local v16    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v17    # "tansformer":Ljavax/xml/transform/Transformer;
    :catch_0
    move-exception v5

    .line 2585
    .local v5, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 2599
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "i":I
    .end local v13    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v14    # "nodelist_count":I
    .end local v15    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v16    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v17    # "tansformer":Ljavax/xml/transform/Transformer;
    :catch_1
    move-exception v18

    move-object v6, v7

    .line 2602
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v6    # "fi":Ljava/io/FileInputStream;
    :goto_6
    if-eqz v6, :cond_6

    .line 2604
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .line 2605
    const/4 v6, 0x0

    .line 2610
    :cond_6
    :goto_7
    const/4 v8, 0x0

    .line 2611
    if-eqz v11, :cond_5

    .line 2613
    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 2614
    const/4 v11, 0x0

    goto :goto_5

    .line 2574
    .end local v6    # "fi":Ljava/io/FileInputStream;
    .end local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v5

    .line 2575
    .local v5, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_a
    const-string v18, "SetupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ParserConfigurationException e = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2580
    if-eqz v12, :cond_b

    .line 2581
    :try_start_b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_f
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 2582
    const/4 v11, 0x0

    .end local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 2584
    .end local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v5

    .line 2585
    .local v5, "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object v11, v12

    .line 2587
    .end local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 2576
    .end local v5    # "e":Ljava/io/IOException;
    .end local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    :catch_4
    move-exception v5

    .line 2577
    .local v5, "e":Ljava/lang/Exception;
    :try_start_d
    const-string v18, "SetupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception e = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2580
    if-eqz v12, :cond_b

    .line 2581
    :try_start_e
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 2582
    const/4 v11, 0x0

    .end local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 2584
    .end local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    :catch_5
    move-exception v5

    .line 2585
    .local v5, "e":Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-object v11, v12

    .line 2587
    .end local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 2579
    .end local v5    # "e":Ljava/io/IOException;
    .end local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v18

    .line 2580
    if-eqz v12, :cond_9

    .line 2581
    :try_start_10
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_f
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 2582
    const/4 v11, 0x0

    .line 2586
    .end local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    :goto_8
    :try_start_11
    throw v18
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 2602
    :catchall_1
    move-exception v18

    move-object v6, v7

    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v6    # "fi":Ljava/io/FileInputStream;
    :goto_9
    if-eqz v6, :cond_7

    .line 2604
    :try_start_12
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 2605
    const/4 v6, 0x0

    .line 2610
    :cond_7
    :goto_a
    const/4 v8, 0x0

    .line 2611
    if-eqz v11, :cond_8

    .line 2613
    :try_start_13
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    .line 2614
    const/4 v11, 0x0

    .line 2617
    :cond_8
    :goto_b
    throw v18

    .line 2584
    .end local v6    # "fi":Ljava/io/FileInputStream;
    .end local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    :catch_6
    move-exception v5

    .line 2585
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_14
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_f
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .end local v5    # "e":Ljava/io/IOException;
    :cond_9
    move-object v11, v12

    .end local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    goto :goto_8

    .line 2590
    .end local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    :cond_a
    if-eqz v12, :cond_b

    .line 2591
    :try_start_15
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_f
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 2592
    const/4 v11, 0x0

    .end local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 2594
    .end local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    :catch_7
    move-exception v5

    .line 2595
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_16
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_f
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .end local v5    # "e":Ljava/io/IOException;
    :cond_b
    move-object v11, v12

    .end local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 2606
    :catch_8
    move-exception v5

    .line 2607
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    :cond_c
    move-object v6, v7

    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v6    # "fi":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 2615
    :catch_9
    move-exception v5

    .line 2616
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 2606
    .end local v5    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v5

    .line 2607
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 2615
    .end local v5    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v5

    .line 2616
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 2606
    .end local v5    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v5

    .line 2607
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 2615
    .end local v5    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v5

    .line 2616
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 2602
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v18

    goto :goto_9

    .end local v6    # "fi":Ljava/io/FileInputStream;
    .end local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    :catchall_3
    move-exception v18

    move-object v6, v7

    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v6    # "fi":Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    goto :goto_9

    .line 2599
    :catch_e
    move-exception v18

    goto/16 :goto_6

    .end local v6    # "fi":Ljava/io/FileInputStream;
    .end local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    :catch_f
    move-exception v18

    move-object v6, v7

    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v6    # "fi":Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    goto/16 :goto_6

    .end local v6    # "fi":Ljava/io/FileInputStream;
    .end local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    .restart local v3    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v9    # "i":I
    .restart local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v13    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v14    # "nodelist_count":I
    .restart local v15    # "result":Ljavax/xml/transform/stream/StreamResult;
    .restart local v16    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v17    # "tansformer":Ljavax/xml/transform/Transformer;
    :cond_d
    move-object v11, v12

    .end local v12    # "imeInfoInputStream":Ljava/io/InputStream;
    .restart local v11    # "imeInfoInputStream":Ljava/io/InputStream;
    goto/16 :goto_2
.end method

.method public createAppsOrderXmlByAppsOrderList(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1718
    .local p1, "appsOrderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;>;"
    new-instance v3, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "apps_order.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1719
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1720
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    .line 1721
    .local v5, "result":Z
    const-string v14, "SetupManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "createAppsOrderXmlByAppsOrderList() apps_order.xml already exsist, Remove.. Delete result = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1726
    .end local v5    # "result":Z
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 1728
    .local v2, "doc":Lorg/w3c/dom/Document;
    const-string v14, "data"

    invoke-interface {v2, v14}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 1729
    .local v6, "root":Lorg/w3c/dom/Element;
    invoke-interface {v2, v6}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1731
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-eqz v14, :cond_1

    .line 1732
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1733
    .local v1, "appsOrderList_size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 1734
    const-string v14, "apps"

    invoke-interface {v2, v14}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 1735
    .local v10, "tagItem":Lorg/w3c/dom/Element;
    invoke-interface {v6, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1737
    const-string v14, "packageName"

    invoke-interface {v2, v14}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 1738
    .local v11, "tagPackageName":Lorg/w3c/dom/Element;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v14}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1739
    invoke-interface {v10, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1741
    const-string v14, "className"

    invoke-interface {v2, v14}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 1742
    .local v9, "tagClassName":Lorg/w3c/dom/Element;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v14}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1743
    invoke-interface {v10, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1745
    const-string v14, "screen"

    invoke-interface {v2, v14}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 1746
    .local v12, "tagScreen":Lorg/w3c/dom/Element;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;->getScreenOrder()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1747
    invoke-interface {v10, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1749
    const-string v14, "cell"

    invoke-interface {v2, v14}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 1750
    .local v8, "tagCell":Lorg/w3c/dom/Element;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;->getCell()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v14}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1751
    invoke-interface {v10, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1733
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1755
    .end local v1    # "appsOrderList_size":I
    .end local v4    # "i":I
    .end local v8    # "tagCell":Lorg/w3c/dom/Element;
    .end local v9    # "tagClassName":Lorg/w3c/dom/Element;
    .end local v10    # "tagItem":Lorg/w3c/dom/Element;
    .end local v11    # "tagPackageName":Lorg/w3c/dom/Element;
    .end local v12    # "tagScreen":Lorg/w3c/dom/Element;
    :cond_1
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v13

    .line 1756
    .local v13, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v7, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v7, v2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1757
    .local v7, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v5, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1758
    .local v5, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v13, v7, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1759
    return-void
.end method

.method public createFavoriteReorderXmlByMyAppList()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1661
    new-instance v3, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "favorites_order.xml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1662
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1663
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v7

    .line 1664
    .local v7, "result":Z
    const-string v15, "SetupManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "createFavoriteReorderXmlByMyAppList() favoritelist_reorder.xml already exsist, Remove.. Delete result = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1670
    .end local v7    # "result":Z
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v15

    invoke-virtual {v15}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 1673
    .local v2, "docFR":Lorg/w3c/dom/Document;
    const-string v15, "data"

    invoke-interface {v2, v15}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 1674
    .local v8, "rootFR":Lorg/w3c/dom/Element;
    invoke-interface {v2, v8}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1676
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v1

    .line 1677
    .local v1, "deviceSetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v1, :cond_1

    .line 1678
    const-string v15, "SetupManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "createFavoriteReorderXmlByMyAppList() cannot create favoritelist_reorder.xml.. deviceSetup for mDeviceId("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") is null..."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    :goto_0
    return-void

    .line 1685
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getMyAppsList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1686
    .local v5, "myAppsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1687
    .local v6, "myApps_count":I
    const-string v15, "SetupManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "createFavoriteReorderXmlByMyAppList() myAppsList size = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_3

    .line 1689
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;

    invoke-virtual {v15}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->getAppType()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1688
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1692
    :cond_2
    const-string v15, "favorite"

    invoke-interface {v2, v15}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 1693
    .local v11, "tagFavorite":Lorg/w3c/dom/Element;
    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1694
    const-string v15, "packageName"

    invoke-interface {v2, v15}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 1695
    .local v12, "tagPackageName":Lorg/w3c/dom/Element;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;

    invoke-virtual {v15}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v15}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1696
    invoke-interface {v11, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1697
    const-string v15, "className"

    invoke-interface {v2, v15}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 1698
    .local v10, "tagClassName":Lorg/w3c/dom/Element;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;

    invoke-virtual {v15}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v15}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1699
    invoke-interface {v11, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1700
    const-string v15, "screen"

    invoke-interface {v2, v15}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 1701
    .local v13, "tagScreen":Lorg/w3c/dom/Element;
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1702
    invoke-interface {v11, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    .line 1706
    .end local v10    # "tagClassName":Lorg/w3c/dom/Element;
    .end local v11    # "tagFavorite":Lorg/w3c/dom/Element;
    .end local v12    # "tagPackageName":Lorg/w3c/dom/Element;
    .end local v13    # "tagScreen":Lorg/w3c/dom/Element;
    :cond_3
    const-string v15, "SetupManager"

    const-string v16, "createFavoriteReorderXmlByMyAppList() favoritelist_reorder.xml not exsist, create new xml file"

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "favorites_order.xml"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1710
    .restart local v3    # "file":Ljava/io/File;
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v15

    invoke-virtual {v15}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v14

    .line 1711
    .local v14, "tansformer":Ljavax/xml/transform/Transformer;
    new-instance v9, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v9, v2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1712
    .local v9, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v7, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v7, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1713
    .local v7, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v14, v9, v7}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    goto/16 :goto_0
.end method

.method public createInitialSyncSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 29
    .param p1, "smart"    # Ljava/lang/String;
    .param p2, "wake"    # Ljava/lang/String;
    .param p3, "mPDClassname"    # Ljava/lang/String;
    .param p4, "mHomeBGMode"    # Ljava/lang/String;
    .param p5, "mHomeBGValue"    # Ljava/lang/String;
    .param p6, "mHomeBGColor"    # Ljava/lang/String;

    .prologue
    .line 2625
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 2626
    .local v5, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 2628
    .local v4, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    .line 2631
    .local v3, "doc":Lorg/w3c/dom/Document;
    const-string v27, "root"

    move-object/from16 v0, v27

    invoke-interface {v3, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    .line 2632
    .local v23, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2634
    const-string v27, "smartrelay"

    move-object/from16 v0, v27

    invoke-interface {v3, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    .line 2635
    .local v18, "mSR":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2636
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2638
    const-string v27, "wakeupbygesture"

    move-object/from16 v0, v27

    invoke-interface {v3, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v20

    .line 2639
    .local v20, "mWG":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2640
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2642
    const-string v27, "safety"

    move-object/from16 v0, v27

    invoke-interface {v3, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 2643
    .local v9, "mAL":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2644
    const-string v27, "true"

    move-object/from16 v0, v27

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2646
    const-string v27, "alwaysonclock"

    move-object/from16 v0, v27

    invoke-interface {v3, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    .line 2647
    .local v19, "mSU":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2648
    const-string v27, "false"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2650
    const-string v27, "powerkeydoublepressing"

    move-object/from16 v0, v27

    invoke-interface {v3, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 2651
    .local v17, "mPD":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2652
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2654
    const-string v27, "musiccontroller"

    move-object/from16 v0, v27

    invoke-interface {v3, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    .line 2655
    .local v16, "mMC":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2656
    const-string v27, "true"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2658
    const-string v27, "clockcolor"

    move-object/from16 v0, v27

    invoke-interface {v3, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 2659
    .local v13, "mCC":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2660
    const-string v27, "0"

    move-object/from16 v0, v27

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2662
    const-string v27, "contacts"

    move-object/from16 v0, v27

    invoke-interface {v3, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    .line 2663
    .local v14, "mContacts":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2664
    const-string v27, "true"

    move-object/from16 v0, v27

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2666
    const-string v27, "logs"

    move-object/from16 v0, v27

    invoke-interface {v3, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 2667
    .local v15, "mLogs":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2668
    const-string v27, "true"

    move-object/from16 v0, v27

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2670
    const-string v27, "bgmode"

    move-object/from16 v0, v27

    invoke-interface {v3, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 2671
    .local v12, "mBGMode":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2672
    move-object/from16 v0, p4

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2674
    const-string v27, "bgdata"

    move-object/from16 v0, v27

    invoke-interface {v3, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 2675
    .local v11, "mBGData":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2676
    move-object/from16 v0, p5

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2678
    const-string v27, "bgcolor"

    move-object/from16 v0, v27

    invoke-interface {v3, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 2679
    .local v10, "mBGColor":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2680
    move-object/from16 v0, p6

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2683
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v26

    .line 2684
    .local v26, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v26 .. v26}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v25

    .line 2686
    .local v25, "transformer":Ljavax/xml/transform/Transformer;
    const-string v27, "encoding"

    const-string v28, "utf-8"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2687
    const-string v27, "indent"

    const-string v28, "yes"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2688
    new-instance v24, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 2690
    .local v24, "source":Ljavax/xml/transform/dom/DOMSource;
    const-string v8, "settings_result.xml"

    .line 2691
    .local v8, "fileName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2692
    .local v7, "file":Ljava/io/File;
    new-instance v21, Ljava/io/BufferedOutputStream;

    new-instance v27, Ljava/io/FileOutputStream;

    move-object/from16 v0, v27

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 2696
    .local v21, "os":Ljava/io/OutputStream;
    :try_start_1
    new-instance v22, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 2697
    .local v22, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2699
    if-eqz v21, :cond_0

    .line 2700
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 2701
    const/16 v21, 0x0

    .line 2713
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "mAL":Lorg/w3c/dom/Element;
    .end local v10    # "mBGColor":Lorg/w3c/dom/Element;
    .end local v11    # "mBGData":Lorg/w3c/dom/Element;
    .end local v12    # "mBGMode":Lorg/w3c/dom/Element;
    .end local v13    # "mCC":Lorg/w3c/dom/Element;
    .end local v14    # "mContacts":Lorg/w3c/dom/Element;
    .end local v15    # "mLogs":Lorg/w3c/dom/Element;
    .end local v16    # "mMC":Lorg/w3c/dom/Element;
    .end local v17    # "mPD":Lorg/w3c/dom/Element;
    .end local v18    # "mSR":Lorg/w3c/dom/Element;
    .end local v19    # "mSU":Lorg/w3c/dom/Element;
    .end local v20    # "mWG":Lorg/w3c/dom/Element;
    .end local v21    # "os":Ljava/io/OutputStream;
    .end local v22    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v23    # "rootElement":Lorg/w3c/dom/Element;
    .end local v24    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v25    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v26    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_0
    :goto_0
    return-void

    .line 2699
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v4    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v9    # "mAL":Lorg/w3c/dom/Element;
    .restart local v10    # "mBGColor":Lorg/w3c/dom/Element;
    .restart local v11    # "mBGData":Lorg/w3c/dom/Element;
    .restart local v12    # "mBGMode":Lorg/w3c/dom/Element;
    .restart local v13    # "mCC":Lorg/w3c/dom/Element;
    .restart local v14    # "mContacts":Lorg/w3c/dom/Element;
    .restart local v15    # "mLogs":Lorg/w3c/dom/Element;
    .restart local v16    # "mMC":Lorg/w3c/dom/Element;
    .restart local v17    # "mPD":Lorg/w3c/dom/Element;
    .restart local v18    # "mSR":Lorg/w3c/dom/Element;
    .restart local v19    # "mSU":Lorg/w3c/dom/Element;
    .restart local v20    # "mWG":Lorg/w3c/dom/Element;
    .restart local v21    # "os":Ljava/io/OutputStream;
    .restart local v23    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v24    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v25    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v26    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catchall_0
    move-exception v27

    if-eqz v21, :cond_1

    .line 2700
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 2701
    const/16 v21, 0x0

    :cond_1
    throw v27
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 2704
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "mAL":Lorg/w3c/dom/Element;
    .end local v10    # "mBGColor":Lorg/w3c/dom/Element;
    .end local v11    # "mBGData":Lorg/w3c/dom/Element;
    .end local v12    # "mBGMode":Lorg/w3c/dom/Element;
    .end local v13    # "mCC":Lorg/w3c/dom/Element;
    .end local v14    # "mContacts":Lorg/w3c/dom/Element;
    .end local v15    # "mLogs":Lorg/w3c/dom/Element;
    .end local v16    # "mMC":Lorg/w3c/dom/Element;
    .end local v17    # "mPD":Lorg/w3c/dom/Element;
    .end local v18    # "mSR":Lorg/w3c/dom/Element;
    .end local v19    # "mSU":Lorg/w3c/dom/Element;
    .end local v20    # "mWG":Lorg/w3c/dom/Element;
    .end local v21    # "os":Ljava/io/OutputStream;
    .end local v23    # "rootElement":Lorg/w3c/dom/Element;
    .end local v24    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v25    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v26    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_0
    move-exception v6

    .line 2705
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2706
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 2707
    .local v6, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v6}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 2708
    .end local v6    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v6

    .line 2709
    .local v6, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v6}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_0

    .line 2710
    .end local v6    # "e":Ljavax/xml/transform/TransformerException;
    :catch_3
    move-exception v6

    .line 2711
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAppSettingString(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "settingFileName"    # Ljava/lang/String;

    .prologue
    .line 1499
    const-string v10, "SetupManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAppSettingString()  settingFileName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    const/4 v9, 0x0

    .line 1502
    .local v9, "settingStr":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1503
    .local v8, "settingFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 1505
    .local v6, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1506
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1507
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 1508
    .local v3, "isSize":I
    const v10, 0x989680

    if-le v3, v10, :cond_2

    .line 1509
    const-string v10, "SetupManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAppSettingString() InputStream too large !!!!!! Failed to load appsetting to plugin... returning null. isSize = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    const-string v10, "SetupManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAppSettingString() InputStream too large !!!!!! Failed to load appsetting to plugin... returning null. isSize = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    const-string v10, "SetupManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAppSettingString() InputStream too large !!!!!! Failed to load appsetting to plugin... returning null. isSize = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    if-eqz v2, :cond_0

    .line 1519
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1520
    const/4 v2, 0x0

    .line 1522
    :cond_0
    if-eqz v1, :cond_1

    .line 1523
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1524
    const/4 v1, 0x0

    .line 1526
    :cond_1
    const/4 v10, 0x0

    .line 1555
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "isSize":I
    :goto_0
    return-object v10

    .line 1528
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "isSize":I
    :cond_2
    new-array v5, v3, [B

    .line 1529
    .local v5, "readBuf":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1530
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1533
    .local v4, "len":I
    :goto_1
    :try_start_1
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_5

    .line 1534
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v5, v11, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1537
    :catchall_0
    move-exception v10

    if-eqz v2, :cond_3

    .line 1538
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1540
    :cond_3
    if-eqz v1, :cond_4

    .line 1541
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_4
    throw v10
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1544
    :catch_0
    move-exception v0

    move-object v6, v7

    .line 1545
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "isSize":I
    .end local v4    # "len":I
    .end local v5    # "readBuf":[B
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1549
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    if-eqz v6, :cond_8

    .line 1550
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1551
    const-string v10, "SetupManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAppSettingString() sb.length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-object v10, v9

    .line 1555
    goto :goto_0

    .line 1537
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "isSize":I
    .restart local v4    # "len":I
    .restart local v5    # "readBuf":[B
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    if-eqz v2, :cond_6

    .line 1538
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1540
    :cond_6
    if-eqz v1, :cond_7

    .line 1541
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_7
    move-object v6, v7

    .line 1548
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    goto :goto_3

    .line 1546
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "isSize":I
    .end local v4    # "len":I
    .end local v5    # "readBuf":[B
    :catch_1
    move-exception v0

    .line 1547
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1553
    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    const-string v10, "SetupManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAppSettingString() NO String in file => "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1546
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "isSize":I
    .restart local v4    # "len":I
    .restart local v5    # "readBuf":[B
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v0

    move-object v6, v7

    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    goto :goto_5

    .line 1544
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "isSize":I
    .end local v4    # "len":I
    .end local v5    # "readBuf":[B
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public getAppsData()[Ljava/lang/String;
    .locals 24

    .prologue
    .line 2993
    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v3, v0, [Ljava/lang/String;

    .line 2994
    .local v3, "appsData":[Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "apps.xml"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2995
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 2996
    const/4 v4, 0x0

    .line 2998
    .local v4, "appsXmlFis":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3000
    .end local v4    # "appsXmlFis":Ljava/io/InputStream;
    .local v5, "appsXmlFis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    .line 3001
    .local v9, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v8

    .line 3002
    .local v8, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v8, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 3003
    .local v7, "doc":Lorg/w3c/dom/Document;
    const-string v20, "item"

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 3005
    .local v15, "nodelist":Lorg/w3c/dom/NodeList;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    .line 3007
    .local v19, "wappinfo":Lorg/w3c/dom/Element;
    const-string v20, "AppName"

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 3008
    .local v2, "appName":Ljava/lang/String;
    const-string v20, "PackageName"

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v16

    .line 3009
    .local v16, "packageName":Ljava/lang/String;
    const-string v20, "ClassName"

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 3010
    .local v6, "className":Ljava/lang/String;
    const-string v20, "ImageFileName"

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 3011
    .local v13, "imageFileName":Ljava/lang/String;
    const-string v20, "SettingFileName"

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v18

    .line 3012
    .local v18, "settingFileName":Ljava/lang/String;
    const-string v20, "IsAppWidget"

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v14

    .line 3013
    .local v14, "isAppWidget":Ljava/lang/String;
    const-string v20, "PreLoad"

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v17

    .line 3015
    .local v17, "preload":Ljava/lang/String;
    const/16 v20, 0x0

    aput-object v2, v3, v20

    .line 3016
    const/16 v20, 0x1

    aput-object v16, v3, v20

    .line 3017
    const/16 v20, 0x2

    aput-object v6, v3, v20

    .line 3018
    const/16 v20, 0x3

    aput-object v13, v3, v20

    .line 3019
    const/16 v20, 0x4

    aput-object v18, v3, v20

    .line 3020
    const/16 v20, 0x5

    aput-object v14, v3, v20

    .line 3021
    const/16 v20, 0x6

    aput-object v17, v3, v20

    .line 3023
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v12, v0, :cond_0

    .line 3024
    const-string v20, "SetupManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "appsData["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v3, v12

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3023
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 3027
    :cond_0
    if-eqz v5, :cond_1

    .line 3028
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3036
    :cond_1
    if-eqz v5, :cond_5

    .line 3038
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 3049
    .end local v2    # "appName":Ljava/lang/String;
    .end local v5    # "appsXmlFis":Ljava/io/InputStream;
    .end local v6    # "className":Ljava/lang/String;
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v9    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12    # "i":I
    .end local v13    # "imageFileName":Ljava/lang/String;
    .end local v14    # "isAppWidget":Ljava/lang/String;
    .end local v15    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v17    # "preload":Ljava/lang/String;
    .end local v18    # "settingFileName":Ljava/lang/String;
    .end local v19    # "wappinfo":Lorg/w3c/dom/Element;
    :cond_2
    :goto_1
    return-object v3

    .line 3039
    .restart local v2    # "appName":Ljava/lang/String;
    .restart local v5    # "appsXmlFis":Ljava/io/InputStream;
    .restart local v6    # "className":Ljava/lang/String;
    .restart local v7    # "doc":Lorg/w3c/dom/Document;
    .restart local v8    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v9    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v12    # "i":I
    .restart local v13    # "imageFileName":Ljava/lang/String;
    .restart local v14    # "isAppWidget":Ljava/lang/String;
    .restart local v15    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v16    # "packageName":Ljava/lang/String;
    .restart local v17    # "preload":Ljava/lang/String;
    .restart local v18    # "settingFileName":Ljava/lang/String;
    .restart local v19    # "wappinfo":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v10

    .line 3040
    .local v10, "e":Ljava/io/IOException;
    const-string v20, "SetupManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAppsData()  IOException e = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 3041
    .end local v5    # "appsXmlFis":Ljava/io/InputStream;
    .restart local v4    # "appsXmlFis":Ljava/io/InputStream;
    goto :goto_1

    .line 3030
    .end local v2    # "appName":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v9    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v12    # "i":I
    .end local v13    # "imageFileName":Ljava/lang/String;
    .end local v14    # "isAppWidget":Ljava/lang/String;
    .end local v15    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v17    # "preload":Ljava/lang/String;
    .end local v18    # "settingFileName":Ljava/lang/String;
    .end local v19    # "wappinfo":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v10

    .line 3031
    .local v10, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_2
    :try_start_3
    const-string v20, "SetupManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAppsData()  ParserConfigurationException e = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3036
    if-eqz v4, :cond_2

    .line 3038
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 3039
    :catch_2
    move-exception v10

    .line 3040
    .local v10, "e":Ljava/io/IOException;
    const-string v20, "SetupManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAppsData()  IOException e = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3032
    .end local v10    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v10

    .line 3033
    .local v10, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v20, "SetupManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAppsData()  Exception e = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3036
    if-eqz v4, :cond_2

    .line 3038
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 3039
    :catch_4
    move-exception v10

    .line 3040
    .local v10, "e":Ljava/io/IOException;
    const-string v20, "SetupManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAppsData()  IOException e = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3036
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v20

    :goto_4
    if-eqz v4, :cond_3

    .line 3038
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 3041
    :cond_3
    :goto_5
    throw v20

    .line 3039
    :catch_5
    move-exception v10

    .line 3040
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v21, "SetupManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getAppsData()  IOException e = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3045
    .end local v4    # "appsXmlFis":Ljava/io/InputStream;
    .end local v10    # "e":Ljava/io/IOException;
    :cond_4
    const-string v20, "SetupManager"

    const-string v21, "apps.xml file not Exits..."

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3046
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 3036
    .restart local v5    # "appsXmlFis":Ljava/io/InputStream;
    :catchall_1
    move-exception v20

    move-object v4, v5

    .end local v5    # "appsXmlFis":Ljava/io/InputStream;
    .restart local v4    # "appsXmlFis":Ljava/io/InputStream;
    goto :goto_4

    .line 3032
    .end local v4    # "appsXmlFis":Ljava/io/InputStream;
    .restart local v5    # "appsXmlFis":Ljava/io/InputStream;
    :catch_6
    move-exception v10

    move-object v4, v5

    .end local v5    # "appsXmlFis":Ljava/io/InputStream;
    .restart local v4    # "appsXmlFis":Ljava/io/InputStream;
    goto :goto_3

    .line 3030
    .end local v4    # "appsXmlFis":Ljava/io/InputStream;
    .restart local v5    # "appsXmlFis":Ljava/io/InputStream;
    :catch_7
    move-exception v10

    move-object v4, v5

    .end local v5    # "appsXmlFis":Ljava/io/InputStream;
    .restart local v4    # "appsXmlFis":Ljava/io/InputStream;
    goto/16 :goto_2

    .end local v4    # "appsXmlFis":Ljava/io/InputStream;
    .restart local v2    # "appName":Ljava/lang/String;
    .restart local v5    # "appsXmlFis":Ljava/io/InputStream;
    .restart local v6    # "className":Ljava/lang/String;
    .restart local v7    # "doc":Lorg/w3c/dom/Document;
    .restart local v8    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v9    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v12    # "i":I
    .restart local v13    # "imageFileName":Ljava/lang/String;
    .restart local v14    # "isAppWidget":Ljava/lang/String;
    .restart local v15    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v16    # "packageName":Ljava/lang/String;
    .restart local v17    # "preload":Ljava/lang/String;
    .restart local v18    # "settingFileName":Ljava/lang/String;
    .restart local v19    # "wappinfo":Lorg/w3c/dom/Element;
    :cond_5
    move-object v4, v5

    .end local v5    # "appsXmlFis":Ljava/io/InputStream;
    .restart local v4    # "appsXmlFis":Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method public getAppsOrderSetupList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-nez v0, :cond_0

    .line 1446
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    .line 1447
    :cond_0
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppsOrderSetupList()  mDeviceSetup is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getAppsOrderList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getBooleanValFromString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "settingsItem"    # Ljava/lang/String;

    .prologue
    .line 2989
    if-eqz p1, :cond_0

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCallForwardSetup()Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .locals 3

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-nez v0, :cond_0

    .line 1460
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    .line 1461
    :cond_0
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallForwardSetup()  mDeviceSetup is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getCallForwardSetup()Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClockSetupList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/ClocksSetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-nez v0, :cond_0

    .line 1404
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    .line 1405
    :cond_0
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClockSetupList()  mDeviceSetup is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getClockList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentFontFamilyname()Ljava/lang/String;
    .locals 7

    .prologue
    .line 3467
    const/4 v0, 0x0

    .line 3468
    .local v0, "curFontFamilyname":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v1

    .line 3470
    .local v1, "deviceSetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v1, :cond_0

    .line 3471
    const-string v4, "SetupManager"

    const-string v5, "getCurrentFontFamilyname() deviceSetup is null..."

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    const/4 v4, 0x0

    .line 3482
    :goto_0
    return-object v4

    .line 3475
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getFontsList()Ljava/util/ArrayList;

    move-result-object v3

    .line 3476
    .local v3, "fontList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/FontsSetup;

    .line 3477
    .local v2, "font":Lcom/samsung/android/hostmanager/aidl/FontsSetup;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->getShownState()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 3478
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3481
    .end local v2    # "font":Lcom/samsung/android/hostmanager/aidl/FontsSetup;
    :cond_2
    const-string v4, "SetupManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentFontFamilyname() curFontFamilyname = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    .line 3482
    goto :goto_0
.end method

.method public getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    .locals 3

    .prologue
    .line 545
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceSetup() mDeviceId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDeviceSetup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-nez v0, :cond_6

    .line 548
    new-instance v0, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;-><init>(Lcom/samsung/android/hostmanager/setup/SetupManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    .line 549
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    const-string v1, "clocklist.xml"

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->setSetupDataFromFile(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-eqz v0, :cond_0

    .line 551
    const-string v1, "SetupManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceSetup() new DeviceSetup is created. mDeviceSetup.getClockList().size() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    .line 552
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getClockList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getClockList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-static {v1, v0}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    const-string v1, "wapplist.xml"

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->setSetupDataFromFile(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-eqz v0, :cond_1

    .line 557
    const-string v1, "SetupManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceSetup() new DeviceSetup is created. mDeviceSetup.getMyAppsList().size() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    .line 558
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getMyAppsList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getMyAppsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-static {v1, v0}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    const-string v1, "fontlist.xml"

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->setSetupDataFromFile(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-eqz v0, :cond_2

    .line 563
    const-string v1, "SetupManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceSetup() new DeviceSetup is created. mDeviceSetup.getFontsList.size() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    .line 564
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getFontsList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getFontsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    invoke-static {v1, v0}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    const-string v1, "ttslist.xml"

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->setSetupDataFromFile(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-eqz v0, :cond_3

    .line 569
    const-string v1, "SetupManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceSetup() new DeviceSetup is created. mDeviceSetup.getTTSList.size() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    .line 570
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getTTSList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getTTSList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-static {v1, v0}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    const-string v1, "imelist.xml"

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->setSetupDataFromFile(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-eqz v0, :cond_4

    .line 575
    const-string v1, "SetupManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceSetup() new DeviceSetup is created. mDeviceSetup.getIMEList.size() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    .line 576
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getIMEList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getIMEList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-static {v1, v0}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    const-string v1, "settings_result.xml"

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->setSetupDataFromFile(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-eqz v0, :cond_5

    .line 581
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceSetup() new DeviceSetup is created. mDeviceSetup.getSettings() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    const-string v1, "callfwdlist.xml"

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->setSetupDataFromFile(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-eqz v0, :cond_6

    .line 586
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceSetup() new DeviceSetup is created. mDeviceSetup.getCallForwardSetup() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getCallForwardSetup()Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :cond_6
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceSetup() mDeviceId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDeviceSetup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    return-object v0

    .line 552
    :cond_7
    const-string v0, "Zero..."

    goto/16 :goto_0

    .line 558
    :cond_8
    const-string v0, "Zero..."

    goto/16 :goto_1

    .line 564
    :cond_9
    const-string v0, "Zero..."

    goto/16 :goto_2

    .line 570
    :cond_a
    const-string v0, "Zero..."

    goto/16 :goto_3

    .line 576
    :cond_b
    const-string v0, "Zero..."

    goto/16 :goto_4
.end method

.method public getFavoriteReorderSetupList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-nez v0, :cond_0

    .line 1439
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    .line 1440
    :cond_0
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFavoriteReorderSetupList()  mDeviceSetup is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getFavoriteReorderList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFontsSetupList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FontsSetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-nez v0, :cond_0

    .line 1418
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    .line 1419
    :cond_0
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFontsSetupList()  mDeviceSetup is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getFontsList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIMESetupList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/IMESetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-nez v0, :cond_0

    .line 1432
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    .line 1433
    :cond_0
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIMESetupList()  mDeviceSetup is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getIMEList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageByteArray(Ljava/lang/String;)[B
    .locals 9
    .param p1, "imgFileName"    # Ljava/lang/String;

    .prologue
    .line 1466
    const/4 v1, 0x0

    .line 1467
    .local v1, "imgData":[B
    const/4 v5, 0x0

    .line 1468
    .local v5, "imgFisSize":I
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1469
    .local v2, "imgFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1470
    const-string v6, "SetupManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getImageByteArray() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exists.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    const/4 v3, 0x0

    .line 1473
    .local v3, "imgFis":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1474
    .end local v3    # "imgFis":Ljava/io/InputStream;
    .local v4, "imgFis":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v6

    new-array v1, v6, [B

    .line 1475
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 1476
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1477
    const/4 v3, 0x0

    .line 1483
    .end local v4    # "imgFis":Ljava/io/InputStream;
    .restart local v3    # "imgFis":Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 1485
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1486
    const/4 v3, 0x0

    .line 1493
    .end local v3    # "imgFis":Ljava/io/InputStream;
    :cond_0
    :goto_0
    const-string v7, "SetupManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getImageByteArray() imgData.length = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v1, :cond_2

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "imgFisSize = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    return-object v1

    .line 1487
    .restart local v3    # "imgFis":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 1488
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1478
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1479
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1483
    if-eqz v3, :cond_0

    .line 1485
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1486
    const/4 v3, 0x0

    goto :goto_0

    .line 1487
    :catch_2
    move-exception v0

    .line 1488
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1480
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1481
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1483
    if-eqz v3, :cond_0

    .line 1485
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1486
    const/4 v3, 0x0

    goto :goto_0

    .line 1487
    :catch_4
    move-exception v0

    .line 1488
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1483
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_1

    .line 1485
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1486
    const/4 v3, 0x0

    .line 1489
    :cond_1
    :goto_5
    throw v6

    .line 1487
    :catch_5
    move-exception v0

    .line 1488
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1493
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "imgFis":Ljava/io/InputStream;
    :cond_2
    array-length v6, v1

    goto :goto_1

    .line 1483
    .restart local v4    # "imgFis":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "imgFis":Ljava/io/InputStream;
    .restart local v3    # "imgFis":Ljava/io/InputStream;
    goto :goto_4

    .line 1480
    .end local v3    # "imgFis":Ljava/io/InputStream;
    .restart local v4    # "imgFis":Ljava/io/InputStream;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4    # "imgFis":Ljava/io/InputStream;
    .restart local v3    # "imgFis":Ljava/io/InputStream;
    goto :goto_3

    .line 1478
    .end local v3    # "imgFis":Ljava/io/InputStream;
    .restart local v4    # "imgFis":Ljava/io/InputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4    # "imgFis":Ljava/io/InputStream;
    .restart local v3    # "imgFis":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public getMyAppsSetupList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-nez v0, :cond_0

    .line 1411
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    .line 1412
    :cond_0
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMyAppsSetupList()  mDeviceSetup is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getMyAppsList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSettingsSetup()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    .locals 3

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-nez v0, :cond_0

    .line 1453
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    .line 1454
    :cond_0
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSettingsSetup()  mDeviceSetup is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getSettings()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTTSSetupList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/TTSSetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-nez v0, :cond_0

    .line 1425
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    .line 1426
    :cond_0
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTTSSetupList()  mDeviceSetup is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceSetup:Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getTTSList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWappListDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2716
    new-instance v7, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "wapplist.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2717
    .local v7, "file":Ljava/io/File;
    const-string v14, "SetupManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getWappListDisplayName() name = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2719
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 2720
    const/4 v12, 0x0

    .line 2722
    .local v12, "wapplistfis":Ljava/io/InputStream;
    :try_start_0
    new-instance v13, Ljava/io/BufferedInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2724
    .end local v12    # "wapplistfis":Ljava/io/InputStream;
    .local v13, "wapplistfis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 2725
    .local v5, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 2726
    .local v4, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v4, v13}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 2727
    .local v3, "doc":Lorg/w3c/dom/Document;
    const-string v14, "item"

    invoke-interface {v3, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 2729
    .local v9, "nodelist":Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    .line 2731
    .local v10, "nodelist_count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_2

    .line 2732
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 2733
    .local v11, "wappinfo":Lorg/w3c/dom/Element;
    const-string v14, "ClassName"

    invoke-interface {v11, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 2734
    .local v2, "className":Ljava/lang/String;
    const-string v14, "AppName"

    invoke-interface {v11, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 2736
    .local v1, "appName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2737
    if-eqz v13, :cond_0

    .line 2738
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 2741
    :cond_0
    const-string v14, "SetupManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getWappListDisplayName() returnString = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2757
    if-eqz v13, :cond_6

    .line 2758
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 2759
    const/4 v12, 0x0

    .line 2764
    .end local v1    # "appName":Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "i":I
    .end local v9    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v10    # "nodelist_count":I
    .end local v11    # "wappinfo":Lorg/w3c/dom/Element;
    .end local v13    # "wapplistfis":Ljava/io/InputStream;
    :goto_1
    return-object v1

    .line 2744
    .restart local v1    # "appName":Ljava/lang/String;
    .restart local v2    # "className":Ljava/lang/String;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v4    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8    # "i":I
    .restart local v9    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v10    # "nodelist_count":I
    .restart local v11    # "wappinfo":Lorg/w3c/dom/Element;
    .restart local v13    # "wapplistfis":Ljava/io/InputStream;
    :cond_1
    :try_start_2
    const-string v14, "SetupManager"

    const-string v15, "getWappListDisplayName() nothing"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2748
    .end local v1    # "appName":Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    .end local v11    # "wappinfo":Lorg/w3c/dom/Element;
    :cond_2
    if-eqz v13, :cond_3

    .line 2749
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2757
    :cond_3
    if-eqz v13, :cond_4

    .line 2758
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 2759
    const/4 v12, 0x0

    .line 2764
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "i":I
    .end local v9    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v10    # "nodelist_count":I
    .end local v13    # "wapplistfis":Ljava/io/InputStream;
    :cond_4
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 2751
    .restart local v12    # "wapplistfis":Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .line 2752
    .local v6, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    :try_start_3
    const-string v14, "SetupManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getWappListDisplayName()  ParserConfigurationException e = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2757
    if-eqz v12, :cond_4

    .line 2758
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 2759
    const/4 v12, 0x0

    goto :goto_2

    .line 2753
    .end local v6    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v6

    .line 2754
    .local v6, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    const-string v14, "SetupManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getWappListDisplayName()  Exception e = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2757
    if-eqz v12, :cond_4

    .line 2758
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 2759
    const/4 v12, 0x0

    goto :goto_2

    .line 2757
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :goto_5
    if-eqz v12, :cond_5

    .line 2758
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 2759
    const/4 v12, 0x0

    :cond_5
    throw v14

    .line 2757
    .end local v12    # "wapplistfis":Ljava/io/InputStream;
    .restart local v13    # "wapplistfis":Ljava/io/InputStream;
    :catchall_1
    move-exception v14

    move-object v12, v13

    .end local v13    # "wapplistfis":Ljava/io/InputStream;
    .restart local v12    # "wapplistfis":Ljava/io/InputStream;
    goto :goto_5

    .line 2753
    .end local v12    # "wapplistfis":Ljava/io/InputStream;
    .restart local v13    # "wapplistfis":Ljava/io/InputStream;
    :catch_2
    move-exception v6

    move-object v12, v13

    .end local v13    # "wapplistfis":Ljava/io/InputStream;
    .restart local v12    # "wapplistfis":Ljava/io/InputStream;
    goto :goto_4

    .line 2751
    .end local v12    # "wapplistfis":Ljava/io/InputStream;
    .restart local v13    # "wapplistfis":Ljava/io/InputStream;
    :catch_3
    move-exception v6

    move-object v12, v13

    .end local v13    # "wapplistfis":Ljava/io/InputStream;
    .restart local v12    # "wapplistfis":Ljava/io/InputStream;
    goto :goto_3

    .end local v12    # "wapplistfis":Ljava/io/InputStream;
    .restart local v1    # "appName":Ljava/lang/String;
    .restart local v2    # "className":Ljava/lang/String;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v4    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8    # "i":I
    .restart local v9    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v10    # "nodelist_count":I
    .restart local v11    # "wappinfo":Lorg/w3c/dom/Element;
    .restart local v13    # "wapplistfis":Ljava/io/InputStream;
    :cond_6
    move-object v12, v13

    .end local v13    # "wapplistfis":Ljava/io/InputStream;
    .restart local v12    # "wapplistfis":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public getWappListPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2768
    new-instance v9, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "wapplist.xml"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2769
    .local v9, "file":Ljava/io/File;
    const-string v16, "SetupManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "evanjs getWappListPackageName name = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2771
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 2772
    const/4 v3, 0x0

    .line 2774
    .local v3, "clocklistfis":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2776
    .end local v3    # "clocklistfis":Ljava/io/InputStream;
    .local v4, "clocklistfis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 2777
    .local v7, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 2778
    .local v6, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v6, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 2779
    .local v5, "doc":Lorg/w3c/dom/Document;
    const-string v16, "item"

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 2781
    .local v11, "nodelist":Lorg/w3c/dom/NodeList;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    .line 2783
    .local v12, "nodelist_count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v12, :cond_6

    .line 2784
    invoke-interface {v11, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    .line 2785
    .local v15, "wappinfo":Lorg/w3c/dom/Element;
    const-string v16, "ClassName"

    invoke-interface/range {v15 .. v16}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 2786
    .local v2, "className":Ljava/lang/String;
    const-string v16, "PackageName"

    invoke-interface/range {v15 .. v16}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 2788
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 2789
    if-eqz v4, :cond_0

    .line 2790
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 2793
    :cond_0
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2794
    .local v14, "returnString":Ljava/lang/String;
    const-string v16, "SetupManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "evanjs getWappListPackageName returnString = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2824
    if-eqz v4, :cond_1

    .line 2825
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 2830
    .end local v2    # "className":Ljava/lang/String;
    .end local v4    # "clocklistfis":Ljava/io/InputStream;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10    # "i":I
    .end local v11    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v12    # "nodelist_count":I
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "returnString":Ljava/lang/String;
    .end local v15    # "wappinfo":Lorg/w3c/dom/Element;
    :cond_1
    :goto_1
    return-object v14

    .line 2796
    .restart local v2    # "className":Ljava/lang/String;
    .restart local v4    # "clocklistfis":Ljava/io/InputStream;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v10    # "i":I
    .restart local v11    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v12    # "nodelist_count":I
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v15    # "wappinfo":Lorg/w3c/dom/Element;
    :cond_2
    :try_start_2
    const-string v16, "none"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    const-string v16, "recent"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v16

    if-eqz v16, :cond_5

    .line 2824
    :cond_3
    if-eqz v4, :cond_4

    .line 2825
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_4
    move-object/from16 v14, p1

    goto :goto_1

    .line 2811
    :cond_5
    :try_start_3
    const-string v16, "SetupManager"

    const-string v17, "evanjs getWappListPackageName nothing"

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 2815
    .end local v2    # "className":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "wappinfo":Lorg/w3c/dom/Element;
    :cond_6
    if-eqz v4, :cond_7

    .line 2816
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2824
    :cond_7
    if-eqz v4, :cond_8

    .line 2825
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 2830
    .end local v4    # "clocklistfis":Ljava/io/InputStream;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10    # "i":I
    .end local v11    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v12    # "nodelist_count":I
    :cond_8
    :goto_2
    const/4 v14, 0x0

    goto :goto_1

    .line 2818
    .restart local v3    # "clocklistfis":Ljava/io/InputStream;
    :catch_0
    move-exception v8

    .line 2819
    .local v8, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    :try_start_4
    const-string v16, "SetupManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getWappListPackageName ParserConfigurationException e = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2824
    if-eqz v3, :cond_8

    .line 2825
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 2820
    .end local v8    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v8

    .line 2821
    .local v8, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    const-string v16, "SetupManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getWappListPackageName Exception e = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2822
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2824
    if-eqz v3, :cond_8

    .line 2825
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 2824
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    :goto_5
    if-eqz v3, :cond_9

    .line 2825
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_9
    throw v16

    .line 2824
    .end local v3    # "clocklistfis":Ljava/io/InputStream;
    .restart local v4    # "clocklistfis":Ljava/io/InputStream;
    :catchall_1
    move-exception v16

    move-object v3, v4

    .end local v4    # "clocklistfis":Ljava/io/InputStream;
    .restart local v3    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_5

    .line 2820
    .end local v3    # "clocklistfis":Ljava/io/InputStream;
    .restart local v4    # "clocklistfis":Ljava/io/InputStream;
    :catch_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "clocklistfis":Ljava/io/InputStream;
    .restart local v3    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_4

    .line 2818
    .end local v3    # "clocklistfis":Ljava/io/InputStream;
    .restart local v4    # "clocklistfis":Ljava/io/InputStream;
    :catch_3
    move-exception v8

    move-object v3, v4

    .end local v4    # "clocklistfis":Ljava/io/InputStream;
    .restart local v3    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public isFileExists(Ljava/lang/String;)Z
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, "exists":Z
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 597
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 599
    :cond_0
    const-string v2, "SetupManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFileExists() fileName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDataFullPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", file = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exists = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    return v0
.end method

.method public manageSetupInfo(I)Z
    .locals 40
    .param p1, "setupCategory"    # I

    .prologue
    .line 88
    const-string v37, "SetupManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "manageSetupInfo() setupCategory = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", mDeviceId = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v11

    .line 91
    .local v11, "device":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v37, v0

    if-nez v37, :cond_0

    .line 92
    const-string v37, "SetupManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "manageSetupInfo():: DeviceSetup for deviceID("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ") is null..."

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/16 v37, 0x0

    .line 483
    :goto_0
    return v37

    .line 97
    :cond_0
    const-string v37, "SetupManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "manageSetupInfo() - mDataFullPath : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v37, v0

    if-nez v37, :cond_1

    .line 100
    const-string v37, "SetupManager"

    const-string v38, "mDataFullPath is null!!!"

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 103
    .local v12, "deviceType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/hostmanager/setup/SetupManager;->setDeviceType(Ljava/lang/String;)V

    .line 107
    .end local v12    # "deviceType":Ljava/lang/String;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 483
    :cond_2
    :goto_1
    :pswitch_0
    const/16 v37, 0x0

    goto :goto_0

    .line 115
    :pswitch_1
    invoke-virtual {v11}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getClockList()Ljava/util/ArrayList;

    move-result-object v9

    .line 120
    .local v9, "clockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    const/4 v7, 0x0

    .line 121
    .local v7, "clockInfoInputStream":Ljava/io/InputStream;
    new-instance v19, Ljava/io/File;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "clocklist.xml"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v19, "file":Ljava/io/File;
    const/16 v17, 0x0

    .line 123
    .local v17, "fi":Ljava/io/FileInputStream;
    const-string v37, "SetupManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "readClocksSetupInfo file = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :try_start_0
    new-instance v18, Ljava/io/FileInputStream;

    invoke-direct/range {v18 .. v19}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .local v18, "fi":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_4

    .line 127
    new-instance v8, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_41
    .catchall {:try_start_1 .. :try_end_1} :catchall_11

    .line 128
    .end local v7    # "clockInfoInputStream":Ljava/io/InputStream;
    .local v8, "clockInfoInputStream":Ljava/io/InputStream;
    if-eqz v8, :cond_3

    .line 129
    :try_start_2
    invoke-virtual {v11}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->removeClockList()V

    .line 130
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/samsung/android/hostmanager/setup/SetupManager;->parseClockInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_42
    .catchall {:try_start_2 .. :try_end_2} :catchall_12

    :cond_3
    move-object v7, v8

    .line 136
    .end local v8    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v7    # "clockInfoInputStream":Ljava/io/InputStream;
    :cond_4
    if-eqz v18, :cond_7

    .line 138
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 139
    const/16 v17, 0x0

    .line 144
    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    :goto_2
    const/16 v19, 0x0

    .line 145
    if-eqz v7, :cond_5

    .line 147
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 148
    const/4 v7, 0x0

    .line 155
    :cond_5
    :goto_3
    const/16 v37, 0x8

    move/from16 v0, p1

    move/from16 v1, v37

    if-eq v0, v1, :cond_2

    .line 156
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 157
    .local v10, "clockListSize":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_4
    move/from16 v0, v23

    if-ge v0, v10, :cond_2

    .line 158
    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->getShownState()Z

    move-result v37

    if-eqz v37, :cond_6

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->demoSyncHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    if-eqz v37, :cond_b

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->demoSyncHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    const/16 v38, 0x1771

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    .line 164
    .local v27, "msg":Landroid/os/Message;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v37, "DEVICEID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v38, "packageName"

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->getPacakgename()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 168
    invoke-virtual/range {v27 .. v27}, Landroid/os/Message;->sendToTarget()V

    .line 157
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v27    # "msg":Landroid/os/Message;
    :cond_6
    :goto_5
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 140
    .end local v10    # "clockListSize":I
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .end local v23    # "i":I
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catch_0
    move-exception v13

    .line 141
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .end local v13    # "e":Ljava/io/IOException;
    :cond_7
    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto :goto_2

    .line 149
    :catch_1
    move-exception v13

    .line 150
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 133
    .end local v13    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v37

    .line 136
    :goto_6
    if-eqz v17, :cond_8

    .line 138
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 139
    const/16 v17, 0x0

    .line 144
    :cond_8
    :goto_7
    const/16 v19, 0x0

    .line 145
    if-eqz v7, :cond_5

    .line 147
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 148
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 140
    :catch_3
    move-exception v13

    .line 141
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 149
    .end local v13    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v13

    .line 150
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 136
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v37

    :goto_8
    if-eqz v17, :cond_9

    .line 138
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 139
    const/16 v17, 0x0

    .line 144
    :cond_9
    :goto_9
    const/16 v19, 0x0

    .line 145
    if-eqz v7, :cond_a

    .line 147
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 148
    const/4 v7, 0x0

    .line 151
    :cond_a
    :goto_a
    throw v37

    .line 140
    :catch_5
    move-exception v13

    .line 141
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 149
    .end local v13    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v13

    .line 150
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 170
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v10    # "clockListSize":I
    .restart local v23    # "i":I
    :cond_b
    const-string v37, "SetupManager"

    const-string v38, "demoSyncHandler is null"

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 184
    .end local v7    # "clockInfoInputStream":Ljava/io/InputStream;
    .end local v9    # "clockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    .end local v10    # "clockListSize":I
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .end local v19    # "file":Ljava/io/File;
    .end local v23    # "i":I
    :pswitch_2
    const/16 v29, 0x0

    .line 185
    .local v29, "myAppsInfoInputStream":Ljava/io/InputStream;
    new-instance v19, Ljava/io/File;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "wapplist.xml"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .restart local v19    # "file":Ljava/io/File;
    const/16 v17, 0x0

    .line 187
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    const-string v37, "SetupManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "readMyAppsSetupInfo file = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :try_start_9
    new-instance v18, Ljava/io/FileInputStream;

    invoke-direct/range {v18 .. v19}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 190
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :try_start_a
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_d

    .line 191
    new-instance v30, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3f
    .catchall {:try_start_a .. :try_end_a} :catchall_f

    .line 193
    .end local v29    # "myAppsInfoInputStream":Ljava/io/InputStream;
    .local v30, "myAppsInfoInputStream":Ljava/io/InputStream;
    :try_start_b
    invoke-virtual {v11}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getMyAppsList()Ljava/util/ArrayList;

    move-result-object v28

    .line 194
    .local v28, "myAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    if-eqz v30, :cond_c

    .line 195
    invoke-virtual {v11}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->removeMyAppsList()V

    .line 196
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->parseMyAppsInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_40
    .catchall {:try_start_b .. :try_end_b} :catchall_10

    :cond_c
    move-object/from16 v29, v30

    .line 202
    .end local v28    # "myAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    .end local v30    # "myAppsInfoInputStream":Ljava/io/InputStream;
    .restart local v29    # "myAppsInfoInputStream":Ljava/io/InputStream;
    :cond_d
    if-eqz v18, :cond_e

    .line 204
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 205
    const/16 v17, 0x0

    .line 210
    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    :goto_b
    const/16 v19, 0x0

    .line 211
    if-eqz v29, :cond_2

    .line 213
    :try_start_d
    invoke-virtual/range {v29 .. v29}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 214
    const/16 v29, 0x0

    goto/16 :goto_1

    .line 206
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catch_7
    move-exception v13

    .line 207
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .end local v13    # "e":Ljava/io/IOException;
    :cond_e
    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto :goto_b

    .line 215
    :catch_8
    move-exception v13

    .line 216
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 199
    .end local v13    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v37

    .line 202
    :goto_c
    if-eqz v17, :cond_f

    .line 204
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 205
    const/16 v17, 0x0

    .line 210
    :cond_f
    :goto_d
    const/16 v19, 0x0

    .line 211
    if-eqz v29, :cond_2

    .line 213
    :try_start_f
    invoke-virtual/range {v29 .. v29}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 214
    const/16 v29, 0x0

    goto/16 :goto_1

    .line 206
    :catch_a
    move-exception v13

    .line 207
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 215
    .end local v13    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v13

    .line 216
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 202
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v37

    :goto_e
    if-eqz v17, :cond_10

    .line 204
    :try_start_10
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 205
    const/16 v17, 0x0

    .line 210
    :cond_10
    :goto_f
    const/16 v19, 0x0

    .line 211
    if-eqz v29, :cond_11

    .line 213
    :try_start_11
    invoke-virtual/range {v29 .. v29}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 214
    const/16 v29, 0x0

    .line 217
    :cond_11
    :goto_10
    throw v37

    .line 206
    :catch_c
    move-exception v13

    .line 207
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 215
    .end local v13    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v13

    .line 216
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 223
    .end local v13    # "e":Ljava/io/IOException;
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .end local v19    # "file":Ljava/io/File;
    .end local v29    # "myAppsInfoInputStream":Ljava/io/InputStream;
    :pswitch_3
    const/16 v21, 0x0

    .line 224
    .local v21, "fontsInfoInputStream":Ljava/io/InputStream;
    new-instance v19, Ljava/io/File;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "fontlist.xml"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .restart local v19    # "file":Ljava/io/File;
    const/16 v17, 0x0

    .line 226
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    const-string v37, "SetupManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "readFontsSetupInfo file = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :try_start_12
    new-instance v18, Ljava/io/FileInputStream;

    invoke-direct/range {v18 .. v19}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_10
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 229
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :try_start_13
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_13

    .line 230
    new-instance v22, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_3d
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    .line 232
    .end local v21    # "fontsInfoInputStream":Ljava/io/InputStream;
    .local v22, "fontsInfoInputStream":Ljava/io/InputStream;
    :try_start_14
    invoke-virtual {v11}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getFontsList()Ljava/util/ArrayList;

    move-result-object v20

    .line 233
    .local v20, "fontList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    if-eqz v22, :cond_12

    .line 234
    invoke-virtual {v11}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->removeFontsList()V

    .line 235
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->parseFontsInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_3e
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    :cond_12
    move-object/from16 v21, v22

    .line 241
    .end local v20    # "fontList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    .end local v22    # "fontsInfoInputStream":Ljava/io/InputStream;
    .restart local v21    # "fontsInfoInputStream":Ljava/io/InputStream;
    :cond_13
    if-eqz v18, :cond_14

    .line 243
    :try_start_15
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    .line 244
    const/16 v17, 0x0

    .line 249
    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    :goto_11
    const/16 v19, 0x0

    .line 250
    if-eqz v21, :cond_2

    .line 252
    :try_start_16
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f

    .line 253
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 245
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catch_e
    move-exception v13

    .line 246
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .end local v13    # "e":Ljava/io/IOException;
    :cond_14
    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto :goto_11

    .line 254
    :catch_f
    move-exception v13

    .line 255
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 238
    .end local v13    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v13

    .line 239
    .local v13, "e":Ljava/io/FileNotFoundException;
    :goto_12
    :try_start_17
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 241
    if-eqz v17, :cond_15

    .line 243
    :try_start_18
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_11

    .line 244
    const/16 v17, 0x0

    .line 249
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    :cond_15
    :goto_13
    const/16 v19, 0x0

    .line 250
    if-eqz v21, :cond_2

    .line 252
    :try_start_19
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_12

    .line 253
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 245
    .restart local v13    # "e":Ljava/io/FileNotFoundException;
    :catch_11
    move-exception v13

    .line 246
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 254
    .end local v13    # "e":Ljava/io/IOException;
    :catch_12
    move-exception v13

    .line 255
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 241
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v37

    :goto_14
    if-eqz v17, :cond_16

    .line 243
    :try_start_1a
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_13

    .line 244
    const/16 v17, 0x0

    .line 249
    :cond_16
    :goto_15
    const/16 v19, 0x0

    .line 250
    if-eqz v21, :cond_17

    .line 252
    :try_start_1b
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_14

    .line 253
    const/16 v21, 0x0

    .line 256
    :cond_17
    :goto_16
    throw v37

    .line 245
    :catch_13
    move-exception v13

    .line 246
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 254
    .end local v13    # "e":Ljava/io/IOException;
    :catch_14
    move-exception v13

    .line 255
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16

    .line 263
    .end local v13    # "e":Ljava/io/IOException;
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .end local v19    # "file":Ljava/io/File;
    .end local v21    # "fontsInfoInputStream":Ljava/io/InputStream;
    :pswitch_4
    const/16 v34, 0x0

    .line 264
    .local v34, "ttsAppsSetupInfoInputStream":Ljava/io/InputStream;
    new-instance v19, Ljava/io/File;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "ttslist.xml"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .restart local v19    # "file":Ljava/io/File;
    const/16 v17, 0x0

    .line 266
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    const-string v37, "SetupManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "readTTSSetupInfo file = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :try_start_1c
    new-instance v18, Ljava/io/FileInputStream;

    invoke-direct/range {v18 .. v19}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_17
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 269
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :try_start_1d
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_18

    .line 270
    new-instance v35, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v34    # "ttsAppsSetupInfoInputStream":Ljava/io/InputStream;
    .local v35, "ttsAppsSetupInfoInputStream":Ljava/io/InputStream;
    move-object/from16 v34, v35

    .line 273
    .end local v35    # "ttsAppsSetupInfoInputStream":Ljava/io/InputStream;
    .restart local v34    # "ttsAppsSetupInfoInputStream":Ljava/io/InputStream;
    :cond_18
    invoke-virtual {v11}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getTTSList()Ljava/util/ArrayList;

    move-result-object v36

    .line 274
    .local v36, "ttsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/TTSSetup;>;"
    if-eqz v34, :cond_19

    .line 275
    invoke-virtual {v11}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->removeTTSList()V

    .line 276
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->parseTTSInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_3c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    .line 281
    :cond_19
    if-eqz v18, :cond_1a

    .line 283
    :try_start_1e
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_15

    .line 284
    const/16 v17, 0x0

    .line 289
    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    :goto_17
    const/16 v19, 0x0

    .line 290
    if-eqz v34, :cond_2

    .line 292
    :try_start_1f
    invoke-virtual/range {v34 .. v34}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_16

    .line 293
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 285
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catch_15
    move-exception v13

    .line 286
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .end local v13    # "e":Ljava/io/IOException;
    :cond_1a
    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto :goto_17

    .line 294
    :catch_16
    move-exception v13

    .line 295
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 278
    .end local v13    # "e":Ljava/io/IOException;
    .end local v36    # "ttsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/TTSSetup;>;"
    :catch_17
    move-exception v13

    .line 279
    .local v13, "e":Ljava/io/FileNotFoundException;
    :goto_18
    :try_start_20
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    .line 281
    if-eqz v17, :cond_1b

    .line 283
    :try_start_21
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_18

    .line 284
    const/16 v17, 0x0

    .line 289
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    :cond_1b
    :goto_19
    const/16 v19, 0x0

    .line 290
    if-eqz v34, :cond_2

    .line 292
    :try_start_22
    invoke-virtual/range {v34 .. v34}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_19

    .line 293
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 285
    .restart local v13    # "e":Ljava/io/FileNotFoundException;
    :catch_18
    move-exception v13

    .line 286
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 294
    .end local v13    # "e":Ljava/io/IOException;
    :catch_19
    move-exception v13

    .line 295
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 281
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v37

    :goto_1a
    if-eqz v17, :cond_1c

    .line 283
    :try_start_23
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1a

    .line 284
    const/16 v17, 0x0

    .line 289
    :cond_1c
    :goto_1b
    const/16 v19, 0x0

    .line 290
    if-eqz v34, :cond_1d

    .line 292
    :try_start_24
    invoke-virtual/range {v34 .. v34}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_1b

    .line 293
    const/16 v34, 0x0

    .line 296
    :cond_1d
    :goto_1c
    throw v37

    .line 285
    :catch_1a
    move-exception v13

    .line 286
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    .line 294
    .end local v13    # "e":Ljava/io/IOException;
    :catch_1b
    move-exception v13

    .line 295
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    .line 302
    .end local v13    # "e":Ljava/io/IOException;
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .end local v19    # "file":Ljava/io/File;
    .end local v34    # "ttsAppsSetupInfoInputStream":Ljava/io/InputStream;
    :pswitch_5
    const/16 v25, 0x0

    .line 303
    .local v25, "imeSetupInfoInputStream":Ljava/io/InputStream;
    new-instance v19, Ljava/io/File;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "imelist.xml"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .restart local v19    # "file":Ljava/io/File;
    const/16 v17, 0x0

    .line 305
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    const-string v37, "SetupManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "readIMESetupInfo file = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :try_start_25
    new-instance v18, Ljava/io/FileInputStream;

    invoke-direct/range {v18 .. v19}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_25} :catch_1e
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    .line 308
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :try_start_26
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_1e

    .line 309
    new-instance v26, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v25    # "imeSetupInfoInputStream":Ljava/io/InputStream;
    .local v26, "imeSetupInfoInputStream":Ljava/io/InputStream;
    move-object/from16 v25, v26

    .line 312
    .end local v26    # "imeSetupInfoInputStream":Ljava/io/InputStream;
    .restart local v25    # "imeSetupInfoInputStream":Ljava/io/InputStream;
    :cond_1e
    invoke-virtual {v11}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getIMEList()Ljava/util/ArrayList;

    move-result-object v24

    .line 313
    .local v24, "imeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/IMESetup;>;"
    if-eqz v25, :cond_1f

    .line 314
    invoke-virtual {v11}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->removeIMEList()V

    .line 315
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->parseIMEInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_26} :catch_3b
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    .line 320
    :cond_1f
    if-eqz v18, :cond_20

    .line 322
    :try_start_27
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_1c

    .line 323
    const/16 v17, 0x0

    .line 328
    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    :goto_1d
    const/16 v19, 0x0

    .line 329
    if-eqz v25, :cond_2

    .line 331
    :try_start_28
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_1d

    .line 332
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 324
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catch_1c
    move-exception v13

    .line 325
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .end local v13    # "e":Ljava/io/IOException;
    :cond_20
    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto :goto_1d

    .line 333
    :catch_1d
    move-exception v13

    .line 334
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 317
    .end local v13    # "e":Ljava/io/IOException;
    .end local v24    # "imeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/IMESetup;>;"
    :catch_1e
    move-exception v13

    .line 318
    .local v13, "e":Ljava/io/FileNotFoundException;
    :goto_1e
    :try_start_29
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_4

    .line 320
    if-eqz v17, :cond_21

    .line 322
    :try_start_2a
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_1f

    .line 323
    const/16 v17, 0x0

    .line 328
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    :cond_21
    :goto_1f
    const/16 v19, 0x0

    .line 329
    if-eqz v25, :cond_2

    .line 331
    :try_start_2b
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_20

    .line 332
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 324
    .restart local v13    # "e":Ljava/io/FileNotFoundException;
    :catch_1f
    move-exception v13

    .line 325
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 333
    .end local v13    # "e":Ljava/io/IOException;
    :catch_20
    move-exception v13

    .line 334
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 320
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v37

    :goto_20
    if-eqz v17, :cond_22

    .line 322
    :try_start_2c
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_21

    .line 323
    const/16 v17, 0x0

    .line 328
    :cond_22
    :goto_21
    const/16 v19, 0x0

    .line 329
    if-eqz v25, :cond_23

    .line 331
    :try_start_2d
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_22

    .line 332
    const/16 v25, 0x0

    .line 335
    :cond_23
    :goto_22
    throw v37

    .line 324
    :catch_21
    move-exception v13

    .line 325
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 333
    .end local v13    # "e":Ljava/io/IOException;
    :catch_22
    move-exception v13

    .line 334
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    .line 341
    .end local v13    # "e":Ljava/io/IOException;
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .end local v19    # "file":Ljava/io/File;
    .end local v25    # "imeSetupInfoInputStream":Ljava/io/InputStream;
    :pswitch_6
    const/16 v31, 0x0

    .line 342
    .local v31, "settingsInfoInputStream":Ljava/io/InputStream;
    new-instance v19, Ljava/io/File;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "settings_result.xml"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .restart local v19    # "file":Ljava/io/File;
    const/16 v17, 0x0

    .line 344
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    const-string v37, "SetupManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "readSettingSetupInfo file = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :try_start_2e
    new-instance v18, Ljava/io/FileInputStream;

    invoke-direct/range {v18 .. v19}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_2e} :catch_25
    .catchall {:try_start_2e .. :try_end_2e} :catchall_5

    .line 347
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :try_start_2f
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_24

    .line 348
    new-instance v32, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v31    # "settingsInfoInputStream":Ljava/io/InputStream;
    .local v32, "settingsInfoInputStream":Ljava/io/InputStream;
    move-object/from16 v31, v32

    .line 350
    .end local v32    # "settingsInfoInputStream":Ljava/io/InputStream;
    .restart local v31    # "settingsInfoInputStream":Ljava/io/InputStream;
    :cond_24
    if-eqz v31, :cond_25

    .line 351
    const-string v37, "SetupManager"

    const-string v38, "GlobalConst.SETTING_SETUP"

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v11}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->removeSettings()V

    .line 353
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager;->parseSettingsInfo(Ljava/io/InputStream;)Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v33

    .line 354
    .local v33, "ss":Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->setSettings(Lcom/samsung/android/hostmanager/aidl/SettingsSetup;)V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_2f} :catch_3a
    .catchall {:try_start_2f .. :try_end_2f} :catchall_a

    .line 359
    .end local v33    # "ss":Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    :cond_25
    if-eqz v18, :cond_26

    .line 361
    :try_start_30
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_23

    .line 362
    const/16 v17, 0x0

    .line 367
    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    :goto_23
    const/16 v19, 0x0

    .line 368
    if-eqz v31, :cond_2

    .line 370
    :try_start_31
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_24

    .line 371
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 363
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catch_23
    move-exception v13

    .line 364
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .end local v13    # "e":Ljava/io/IOException;
    :cond_26
    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto :goto_23

    .line 372
    :catch_24
    move-exception v13

    .line 373
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 356
    .end local v13    # "e":Ljava/io/IOException;
    :catch_25
    move-exception v37

    .line 359
    :goto_24
    if-eqz v17, :cond_27

    .line 361
    :try_start_32
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_26

    .line 362
    const/16 v17, 0x0

    .line 367
    :cond_27
    :goto_25
    const/16 v19, 0x0

    .line 368
    if-eqz v31, :cond_2

    .line 370
    :try_start_33
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_27

    .line 371
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 363
    :catch_26
    move-exception v13

    .line 364
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    .line 372
    .end local v13    # "e":Ljava/io/IOException;
    :catch_27
    move-exception v13

    .line 373
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 359
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v37

    :goto_26
    if-eqz v17, :cond_28

    .line 361
    :try_start_34
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_28

    .line 362
    const/16 v17, 0x0

    .line 367
    :cond_28
    :goto_27
    const/16 v19, 0x0

    .line 368
    if-eqz v31, :cond_29

    .line 370
    :try_start_35
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_29

    .line 371
    const/16 v31, 0x0

    .line 374
    :cond_29
    :goto_28
    throw v37

    .line 363
    :catch_28
    move-exception v13

    .line 364
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    .line 372
    .end local v13    # "e":Ljava/io/IOException;
    :catch_29
    move-exception v13

    .line 373
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_28

    .line 401
    .end local v13    # "e":Ljava/io/IOException;
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .end local v19    # "file":Ljava/io/File;
    .end local v31    # "settingsInfoInputStream":Ljava/io/InputStream;
    :pswitch_7
    const/4 v14, 0x0

    .line 402
    .local v14, "favoriteReorderInfoInputStream":Ljava/io/InputStream;
    new-instance v19, Ljava/io/File;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "favorites_order.xml"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    .restart local v19    # "file":Ljava/io/File;
    const/16 v17, 0x0

    .line 404
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    const-string v37, "SetupManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "readFavoriteReorderSetupInfo file = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :try_start_36
    new-instance v18, Ljava/io/FileInputStream;

    invoke-direct/range {v18 .. v19}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_36} :catch_2c
    .catchall {:try_start_36 .. :try_end_36} :catchall_6

    .line 407
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :try_start_37
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_2a

    .line 408
    new-instance v15, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v14    # "favoriteReorderInfoInputStream":Ljava/io/InputStream;
    .local v15, "favoriteReorderInfoInputStream":Ljava/io/InputStream;
    move-object v14, v15

    .line 411
    .end local v15    # "favoriteReorderInfoInputStream":Ljava/io/InputStream;
    .restart local v14    # "favoriteReorderInfoInputStream":Ljava/io/InputStream;
    :cond_2a
    invoke-virtual {v11}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getFavoriteReorderList()Ljava/util/ArrayList;

    move-result-object v16

    .line 412
    .local v16, "favoriteReorderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;>;"
    if-eqz v14, :cond_2b

    .line 413
    invoke-virtual {v11}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->removeFavoriteReorderList()V

    .line 414
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/hostmanager/setup/SetupManager;->parseFavoriteReorderInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_37} :catch_39
    .catchall {:try_start_37 .. :try_end_37} :catchall_9

    .line 419
    :cond_2b
    if-eqz v18, :cond_2c

    .line 421
    :try_start_38
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_2a

    .line 422
    const/16 v17, 0x0

    .line 427
    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    :goto_29
    const/16 v19, 0x0

    .line 428
    if-eqz v14, :cond_2

    .line 430
    :try_start_39
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_2b

    .line 431
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 423
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catch_2a
    move-exception v13

    .line 424
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .end local v13    # "e":Ljava/io/IOException;
    :cond_2c
    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto :goto_29

    .line 432
    :catch_2b
    move-exception v13

    .line 433
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 416
    .end local v13    # "e":Ljava/io/IOException;
    .end local v16    # "favoriteReorderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;>;"
    :catch_2c
    move-exception v13

    .line 417
    .local v13, "e":Ljava/io/FileNotFoundException;
    :goto_2a
    :try_start_3a
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_6

    .line 419
    if-eqz v17, :cond_2d

    .line 421
    :try_start_3b
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_2d

    .line 422
    const/16 v17, 0x0

    .line 427
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    :cond_2d
    :goto_2b
    const/16 v19, 0x0

    .line 428
    if-eqz v14, :cond_2

    .line 430
    :try_start_3c
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_2e

    .line 431
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 423
    .restart local v13    # "e":Ljava/io/FileNotFoundException;
    :catch_2d
    move-exception v13

    .line 424
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b

    .line 432
    .end local v13    # "e":Ljava/io/IOException;
    :catch_2e
    move-exception v13

    .line 433
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 419
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_6
    move-exception v37

    :goto_2c
    if-eqz v17, :cond_2e

    .line 421
    :try_start_3d
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3d} :catch_2f

    .line 422
    const/16 v17, 0x0

    .line 427
    :cond_2e
    :goto_2d
    const/16 v19, 0x0

    .line 428
    if-eqz v14, :cond_2f

    .line 430
    :try_start_3e
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_30

    .line 431
    const/4 v14, 0x0

    .line 434
    :cond_2f
    :goto_2e
    throw v37

    .line 423
    :catch_2f
    move-exception v13

    .line 424
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d

    .line 432
    .end local v13    # "e":Ljava/io/IOException;
    :catch_30
    move-exception v13

    .line 433
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    .line 441
    .end local v13    # "e":Ljava/io/IOException;
    .end local v14    # "favoriteReorderInfoInputStream":Ljava/io/InputStream;
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .end local v19    # "file":Ljava/io/File;
    :pswitch_8
    const/4 v4, 0x0

    .line 442
    .local v4, "appsOrderSetupInfoInputStream":Ljava/io/InputStream;
    new-instance v19, Ljava/io/File;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "apps_order.xml"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 443
    .restart local v19    # "file":Ljava/io/File;
    const/16 v17, 0x0

    .line 444
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    const-string v37, "SetupManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "readAppsOrderSetupInfo file = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :try_start_3f
    new-instance v18, Ljava/io/FileInputStream;

    invoke-direct/range {v18 .. v19}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_3f} :catch_33
    .catchall {:try_start_3f .. :try_end_3f} :catchall_7

    .line 447
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :try_start_40
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_30

    .line 448
    new-instance v5, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v4    # "appsOrderSetupInfoInputStream":Ljava/io/InputStream;
    .local v5, "appsOrderSetupInfoInputStream":Ljava/io/InputStream;
    move-object v4, v5

    .line 451
    .end local v5    # "appsOrderSetupInfoInputStream":Ljava/io/InputStream;
    .restart local v4    # "appsOrderSetupInfoInputStream":Ljava/io/InputStream;
    :cond_30
    invoke-virtual {v11}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getAppsOrderList()Ljava/util/ArrayList;

    move-result-object v3

    .line 452
    .local v3, "appsOrderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;>;"
    if-eqz v4, :cond_31

    .line 453
    invoke-virtual {v11}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->removeAppsOrderList()V

    .line 454
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/hostmanager/setup/SetupManager;->parseAppsOrderInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_40} :catch_38
    .catchall {:try_start_40 .. :try_end_40} :catchall_8

    .line 459
    :cond_31
    if-eqz v18, :cond_32

    .line 461
    :try_start_41
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_31

    .line 462
    const/16 v17, 0x0

    .line 467
    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    :goto_2f
    const/16 v19, 0x0

    .line 468
    if-eqz v4, :cond_2

    .line 470
    :try_start_42
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_42} :catch_32

    .line 471
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 463
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catch_31
    move-exception v13

    .line 464
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .end local v13    # "e":Ljava/io/IOException;
    :cond_32
    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto :goto_2f

    .line 472
    :catch_32
    move-exception v13

    .line 473
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 456
    .end local v3    # "appsOrderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppsOrderSetup;>;"
    .end local v13    # "e":Ljava/io/IOException;
    :catch_33
    move-exception v13

    .line 457
    .local v13, "e":Ljava/io/FileNotFoundException;
    :goto_30
    :try_start_43
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_7

    .line 459
    if-eqz v17, :cond_33

    .line 461
    :try_start_44
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_44} :catch_34

    .line 462
    const/16 v17, 0x0

    .line 467
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    :cond_33
    :goto_31
    const/16 v19, 0x0

    .line 468
    if-eqz v4, :cond_2

    .line 470
    :try_start_45
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_35

    .line 471
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 463
    .restart local v13    # "e":Ljava/io/FileNotFoundException;
    :catch_34
    move-exception v13

    .line 464
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    .line 472
    .end local v13    # "e":Ljava/io/IOException;
    :catch_35
    move-exception v13

    .line 473
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 459
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_7
    move-exception v37

    :goto_32
    if-eqz v17, :cond_34

    .line 461
    :try_start_46
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_46} :catch_36

    .line 462
    const/16 v17, 0x0

    .line 467
    :cond_34
    :goto_33
    const/16 v19, 0x0

    .line 468
    if-eqz v4, :cond_35

    .line 470
    :try_start_47
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_47} :catch_37

    .line 471
    const/4 v4, 0x0

    .line 474
    :cond_35
    :goto_34
    throw v37

    .line 463
    :catch_36
    move-exception v13

    .line 464
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    .line 472
    .end local v13    # "e":Ljava/io/IOException;
    :catch_37
    move-exception v13

    .line 473
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 459
    .end local v13    # "e":Ljava/io/IOException;
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catchall_8
    move-exception v37

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto :goto_32

    .line 456
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catch_38
    move-exception v13

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto :goto_30

    .line 419
    .end local v4    # "appsOrderSetupInfoInputStream":Ljava/io/InputStream;
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v14    # "favoriteReorderInfoInputStream":Ljava/io/InputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catchall_9
    move-exception v37

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto/16 :goto_2c

    .line 416
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catch_39
    move-exception v13

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto/16 :goto_2a

    .line 359
    .end local v14    # "favoriteReorderInfoInputStream":Ljava/io/InputStream;
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v31    # "settingsInfoInputStream":Ljava/io/InputStream;
    :catchall_a
    move-exception v37

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto/16 :goto_26

    .line 356
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catch_3a
    move-exception v37

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto/16 :goto_24

    .line 320
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .end local v31    # "settingsInfoInputStream":Ljava/io/InputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v25    # "imeSetupInfoInputStream":Ljava/io/InputStream;
    :catchall_b
    move-exception v37

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto/16 :goto_20

    .line 317
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catch_3b
    move-exception v13

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto/16 :goto_1e

    .line 281
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .end local v25    # "imeSetupInfoInputStream":Ljava/io/InputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v34    # "ttsAppsSetupInfoInputStream":Ljava/io/InputStream;
    :catchall_c
    move-exception v37

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto/16 :goto_1a

    .line 278
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catch_3c
    move-exception v13

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto/16 :goto_18

    .line 241
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .end local v34    # "ttsAppsSetupInfoInputStream":Ljava/io/InputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v21    # "fontsInfoInputStream":Ljava/io/InputStream;
    :catchall_d
    move-exception v37

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto/16 :goto_14

    .end local v17    # "fi":Ljava/io/FileInputStream;
    .end local v21    # "fontsInfoInputStream":Ljava/io/InputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v22    # "fontsInfoInputStream":Ljava/io/InputStream;
    :catchall_e
    move-exception v37

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    move-object/from16 v21, v22

    .end local v22    # "fontsInfoInputStream":Ljava/io/InputStream;
    .restart local v21    # "fontsInfoInputStream":Ljava/io/InputStream;
    goto/16 :goto_14

    .line 238
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catch_3d
    move-exception v13

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto/16 :goto_12

    .end local v17    # "fi":Ljava/io/FileInputStream;
    .end local v21    # "fontsInfoInputStream":Ljava/io/InputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v22    # "fontsInfoInputStream":Ljava/io/InputStream;
    :catch_3e
    move-exception v13

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    move-object/from16 v21, v22

    .end local v22    # "fontsInfoInputStream":Ljava/io/InputStream;
    .restart local v21    # "fontsInfoInputStream":Ljava/io/InputStream;
    goto/16 :goto_12

    .line 202
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .end local v21    # "fontsInfoInputStream":Ljava/io/InputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v29    # "myAppsInfoInputStream":Ljava/io/InputStream;
    :catchall_f
    move-exception v37

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto/16 :goto_e

    .end local v17    # "fi":Ljava/io/FileInputStream;
    .end local v29    # "myAppsInfoInputStream":Ljava/io/InputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v30    # "myAppsInfoInputStream":Ljava/io/InputStream;
    :catchall_10
    move-exception v37

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    move-object/from16 v29, v30

    .end local v30    # "myAppsInfoInputStream":Ljava/io/InputStream;
    .restart local v29    # "myAppsInfoInputStream":Ljava/io/InputStream;
    goto/16 :goto_e

    .line 199
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catch_3f
    move-exception v37

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto/16 :goto_c

    .end local v17    # "fi":Ljava/io/FileInputStream;
    .end local v29    # "myAppsInfoInputStream":Ljava/io/InputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v30    # "myAppsInfoInputStream":Ljava/io/InputStream;
    :catch_40
    move-exception v37

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    move-object/from16 v29, v30

    .end local v30    # "myAppsInfoInputStream":Ljava/io/InputStream;
    .restart local v29    # "myAppsInfoInputStream":Ljava/io/InputStream;
    goto/16 :goto_c

    .line 136
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .end local v29    # "myAppsInfoInputStream":Ljava/io/InputStream;
    .restart local v7    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v9    # "clockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catchall_11
    move-exception v37

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v7    # "clockInfoInputStream":Ljava/io/InputStream;
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v8    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catchall_12
    move-exception v37

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v7    # "clockInfoInputStream":Ljava/io/InputStream;
    goto/16 :goto_8

    .line 133
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catch_41
    move-exception v37

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    goto/16 :goto_6

    .end local v7    # "clockInfoInputStream":Ljava/io/InputStream;
    .end local v17    # "fi":Ljava/io/FileInputStream;
    .restart local v8    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v18    # "fi":Ljava/io/FileInputStream;
    :catch_42
    move-exception v37

    move-object/from16 v17, v18

    .end local v18    # "fi":Ljava/io/FileInputStream;
    .restart local v17    # "fi":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "clockInfoInputStream":Ljava/io/InputStream;
    .restart local v7    # "clockInfoInputStream":Ljava/io/InputStream;
    goto/16 :goto_6

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public pushResultFileToHM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "settingFileName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 2930
    iget-object v7, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    .line 2931
    .local v7, "filePath":Ljava/lang/String;
    const-string v9, "SetupManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pushResultFileToHM()  settingFileName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", data = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", filePath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2934
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2935
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2936
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 2938
    :cond_0
    const-string v9, "SetupManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pushResultFileToHM file = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 2941
    .local v2, "dirPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2942
    .local v5, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 2943
    .local v0, "deleted":Z
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2944
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    .line 2945
    const-string v9, "SetupManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pushResultFileToHM() deleted = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2947
    :cond_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2948
    .local v6, "fileOutStream":Ljava/io/FileOutputStream;
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2950
    .local v8, "fos":Ljava/io/OutputStream;
    const-string v9, "SetupManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pushResultFileToHM() fos = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2951
    if-eqz v8, :cond_2

    .line 2953
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V

    .line 2954
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2956
    if-eqz v8, :cond_2

    .line 2957
    :try_start_2
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 2958
    const/4 v8, 0x0

    .line 2962
    :cond_2
    if-eqz v6, :cond_3

    .line 2965
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 2974
    .end local v0    # "deleted":Z
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "dirPath":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileOutStream":Ljava/io/FileOutputStream;
    .end local v8    # "fos":Ljava/io/OutputStream;
    :cond_3
    :goto_0
    return-void

    .line 2956
    .restart local v0    # "deleted":Z
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v2    # "dirPath":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "fileOutStream":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/OutputStream;
    :catchall_0
    move-exception v9

    if-eqz v8, :cond_4

    .line 2957
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 2958
    const/4 v8, 0x0

    :cond_4
    throw v9
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2969
    .end local v0    # "deleted":Z
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "dirPath":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileOutStream":Ljava/io/FileOutputStream;
    .end local v8    # "fos":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 2970
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2971
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 2972
    .local v4, "e2":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public restoreClockSettings(Ljava/lang/String;)V
    .locals 13
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 3576
    const/4 v1, 0x0

    .line 3578
    .local v1, "bnrManager":Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getBackupRestoreManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3583
    :goto_0
    if-nez v1, :cond_1

    .line 3584
    const-string v10, "SetupManager"

    const-string v11, "restoreClockSettings() bnrManager is Null"

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3618
    :cond_0
    return-void

    .line 3579
    :catch_0
    move-exception v2

    .line 3580
    .local v2, "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 3588
    .end local v2    # "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    :cond_1
    iget-object v10, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->restoreClockList:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    .line 3589
    iget-object v10, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->restoreClockList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3590
    .local v6, "installedClockList_count":I
    const/4 v5, 0x0

    .local v5, "idx":I
    :goto_1
    if-ge v5, v6, :cond_0

    .line 3591
    iget-object v10, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->restoreClockList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;

    iget-object v9, v10, Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;->settingFileName:Ljava/lang/String;

    .line 3592
    .local v9, "xmlFileName":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->restoreClockList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;

    iget-object v0, v10, Lcom/samsung/android/hostmanager/setup/SetupManager$DetailedSetting;->PackageName:Ljava/lang/String;

    .line 3593
    .local v0, "PackageName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v1}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3595
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3596
    const-string v10, "SetupManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "clock setting filename = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3598
    const-string v10, "_settings.xml"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3599
    .local v4, "fileName":[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_result.xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3600
    .local v8, "settingResultFileName":Ljava/lang/String;
    const-string v10, "SetupManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "clock setting result filename = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3601
    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 3602
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v11

    .line 3601
    invoke-static {v11, v1}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3604
    .local v7, "resultFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3605
    const-string v10, "SetupManager"

    const-string v11, "resultFile exist..."

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3607
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v10

    iget-object v10, v10, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v10, :cond_2

    .line 3608
    const-string v10, "SetupManager"

    const-string v11, " Send Clock Setting..."

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3609
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v10

    iget-object v10, v10, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v10, v0, v8, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendSettingResultXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3590
    .end local v4    # "fileName":[Ljava/lang/String;
    .end local v7    # "resultFile":Ljava/io/File;
    .end local v8    # "settingResultFileName":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 3614
    :cond_3
    const-string v10, "SetupManager"

    const-string v11, "Clock Setting XML not exist.."

    invoke-static {v10, v11}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public saveCallForwardSetup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2176
    const-string v14, "SetupManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "saveCallForwardSetup():: element = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", value = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    const/4 v12, 0x0

    .line 2181
    .local v12, "xmlData":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "callfwdlist.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2183
    .local v4, "loadfile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2184
    const-string v14, "SetupManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "saveSetting():: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "is exist"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    new-instance v13, Ljava/io/BufferedInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2186
    .end local v12    # "xmlData":Ljava/io/InputStream;
    .local v13, "xmlData":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 2187
    .local v1, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 2189
    .local v7, "root":Lorg/w3c/dom/Document;
    move-object/from16 v0, p1

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 2192
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v11

    .line 2193
    .local v11, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v11}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v10

    .line 2195
    .local v10, "transformer":Ljavax/xml/transform/Transformer;
    const-string v14, "encoding"

    const-string v15, "utf-8"

    invoke-virtual {v10, v14, v15}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    const-string v14, "indent"

    const-string v15, "yes"

    invoke-virtual {v10, v14, v15}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    new-instance v8, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v8, v7}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 2199
    .local v8, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v3, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "settings_result.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2202
    .local v3, "file":Ljava/io/File;
    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v14}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2204
    .local v6, "result":Ljavax/xml/transform/stream/StreamResult;
    :try_start_2
    invoke-virtual {v10, v8, v6}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 2205
    const-string v14, "SetupManager"

    const-string v15, "saveSetting():: save setting finished"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2207
    :try_start_3
    invoke-virtual {v6}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v12, v13

    .line 2220
    .end local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v7    # "root":Lorg/w3c/dom/Document;
    .end local v8    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v10    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v11    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .end local v13    # "xmlData":Ljava/io/InputStream;
    .restart local v12    # "xmlData":Ljava/io/InputStream;
    :cond_0
    if-eqz v12, :cond_1

    .line 2221
    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2227
    .end local v4    # "loadfile":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 2207
    .end local v12    # "xmlData":Ljava/io/InputStream;
    .restart local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "loadfile":Ljava/io/File;
    .restart local v6    # "result":Ljavax/xml/transform/stream/StreamResult;
    .restart local v7    # "root":Lorg/w3c/dom/Document;
    .restart local v8    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v10    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v11    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v13    # "xmlData":Ljava/io/InputStream;
    :catchall_0
    move-exception v14

    :try_start_5
    invoke-virtual {v6}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    throw v14
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2210
    .end local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v7    # "root":Lorg/w3c/dom/Document;
    .end local v8    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v10    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v11    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_0
    move-exception v2

    move-object v12, v13

    .line 2211
    .end local v4    # "loadfile":Ljava/io/File;
    .end local v13    # "xmlData":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v12    # "xmlData":Ljava/io/InputStream;
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2220
    if-eqz v12, :cond_1

    .line 2221
    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 2223
    :catch_1
    move-exception v2

    .line 2224
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2223
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "loadfile":Ljava/io/File;
    :catch_2
    move-exception v2

    .line 2224
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2212
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "loadfile":Ljava/io/File;
    :catch_3
    move-exception v5

    .line 2213
    .local v5, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_2
    :try_start_8
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2220
    if-eqz v12, :cond_1

    .line 2221
    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    .line 2223
    :catch_4
    move-exception v2

    .line 2224
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2214
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_5
    move-exception v9

    .line 2215
    .local v9, "tfe":Ljavax/xml/transform/TransformerException;
    :goto_3
    :try_start_a
    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2220
    if-eqz v12, :cond_1

    .line 2221
    :try_start_b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_0

    .line 2223
    :catch_6
    move-exception v2

    .line 2224
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2216
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "tfe":Ljavax/xml/transform/TransformerException;
    :catch_7
    move-exception v2

    .line 2217
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2220
    if-eqz v12, :cond_1

    .line 2221
    :try_start_d
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_0

    .line 2223
    :catch_8
    move-exception v2

    .line 2224
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2219
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v14

    .line 2220
    :goto_5
    if-eqz v12, :cond_2

    .line 2221
    :try_start_e
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 2225
    :cond_2
    :goto_6
    throw v14

    .line 2223
    :catch_9
    move-exception v2

    .line 2224
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 2219
    .end local v2    # "e":Ljava/io/IOException;
    .end local v12    # "xmlData":Ljava/io/InputStream;
    .restart local v4    # "loadfile":Ljava/io/File;
    .restart local v13    # "xmlData":Ljava/io/InputStream;
    :catchall_2
    move-exception v14

    move-object v12, v13

    .end local v13    # "xmlData":Ljava/io/InputStream;
    .restart local v12    # "xmlData":Ljava/io/InputStream;
    goto :goto_5

    .line 2216
    .end local v12    # "xmlData":Ljava/io/InputStream;
    .restart local v13    # "xmlData":Ljava/io/InputStream;
    :catch_a
    move-exception v2

    move-object v12, v13

    .end local v13    # "xmlData":Ljava/io/InputStream;
    .restart local v12    # "xmlData":Ljava/io/InputStream;
    goto :goto_4

    .line 2214
    .end local v12    # "xmlData":Ljava/io/InputStream;
    .restart local v13    # "xmlData":Ljava/io/InputStream;
    :catch_b
    move-exception v9

    move-object v12, v13

    .end local v13    # "xmlData":Ljava/io/InputStream;
    .restart local v12    # "xmlData":Ljava/io/InputStream;
    goto :goto_3

    .line 2212
    .end local v12    # "xmlData":Ljava/io/InputStream;
    .restart local v13    # "xmlData":Ljava/io/InputStream;
    :catch_c
    move-exception v5

    move-object v12, v13

    .end local v13    # "xmlData":Ljava/io/InputStream;
    .restart local v12    # "xmlData":Ljava/io/InputStream;
    goto :goto_2

    .line 2210
    .end local v4    # "loadfile":Ljava/io/File;
    :catch_d
    move-exception v2

    goto :goto_1
.end method

.method public saveClockXML()Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2044
    new-instance v5, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "clocklist.xml"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2045
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 2046
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v7

    .line 2047
    .local v7, "result":Z
    const-string v21, "SetupManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "file delete result = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    .end local v7    # "result":Z
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    .line 2051
    .local v6, "newdoc":Lorg/w3c/dom/Document;
    const-string v21, "Clock"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 2052
    .local v8, "root":Lorg/w3c/dom/Element;
    invoke-interface {v6, v8}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2054
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v4

    .line 2055
    .local v4, "deviceSetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v4, :cond_1

    .line 2056
    const-string v21, "SetupManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveClockXML() cannot save clocklist.xml.. deviceSetup for mDeviceId("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") is null..."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    const/16 v21, 0x0

    .line 2117
    :goto_0
    return v21

    .line 2061
    :cond_1
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getClockList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2062
    .local v3, "clockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;

    .line 2063
    .local v2, "app":Lcom/samsung/android/hostmanager/aidl/ClocksSetup;
    const-string v21, "item"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 2064
    .local v17, "tagItem":Lorg/w3c/dom/Element;
    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2066
    const-string v21, "AppName"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 2067
    .local v11, "tagAppName":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->getClockName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2068
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2070
    const-string v21, "PackageName"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 2071
    .local v13, "tagGearPackageName":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->getPacakgename()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2072
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2074
    const-string v21, "ClassName"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 2075
    .local v12, "tagClassName":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->getClassName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2076
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2078
    const-string v21, "ImageFileName"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 2079
    .local v15, "tagImageFileName":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->getClockImageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2080
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2082
    const-string v21, "SettingFileName"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    .line 2083
    .local v19, "tagSettingFileName":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->getSettingFileName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2084
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2086
    const-string v21, "IsShown"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    .line 2087
    .local v16, "tagIsShown":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->getShownState()Z

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const-string v21, "true"

    :goto_2
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2088
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2090
    const-string v21, "PreLoad"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    .line 2091
    .local v18, "tagPreload":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->getPreloadClock()Z

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    const-string v21, "true"

    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2092
    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2094
    const-string v21, "Group"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    .line 2095
    .local v14, "tagGroup":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->getGroup()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2096
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2106
    const-string v21, "AppCategory"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 2107
    .local v10, "tagAppCategory":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->getAppCategory()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2108
    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_1

    .line 2087
    .end local v10    # "tagAppCategory":Lorg/w3c/dom/Element;
    .end local v14    # "tagGroup":Lorg/w3c/dom/Element;
    .end local v18    # "tagPreload":Lorg/w3c/dom/Element;
    :cond_2
    const-string v21, "false"

    goto :goto_2

    .line 2091
    .restart local v18    # "tagPreload":Lorg/w3c/dom/Element;
    :cond_3
    const-string v21, "false"

    goto :goto_3

    .line 2112
    .end local v2    # "app":Lcom/samsung/android/hostmanager/aidl/ClocksSetup;
    .end local v11    # "tagAppName":Lorg/w3c/dom/Element;
    .end local v12    # "tagClassName":Lorg/w3c/dom/Element;
    .end local v13    # "tagGearPackageName":Lorg/w3c/dom/Element;
    .end local v15    # "tagImageFileName":Lorg/w3c/dom/Element;
    .end local v16    # "tagIsShown":Lorg/w3c/dom/Element;
    .end local v17    # "tagItem":Lorg/w3c/dom/Element;
    .end local v18    # "tagPreload":Lorg/w3c/dom/Element;
    .end local v19    # "tagSettingFileName":Lorg/w3c/dom/Element;
    :cond_4
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v20

    .line 2113
    .local v20, "tansformer":Ljavax/xml/transform/Transformer;
    new-instance v9, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v9, v6}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 2114
    .local v9, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v7, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v7, v5}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 2115
    .local v7, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v7}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 2117
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v21

    goto/16 :goto_0
.end method

.method public saveFavoriteOrderXML()Z
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2230
    new-instance v10, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "favorites_order.xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2231
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 2232
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v14

    .line 2233
    .local v14, "result":Z
    const-string v24, "SetupManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "file delete result = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    .end local v14    # "result":Z
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v13

    .line 2237
    .local v13, "newdoc":Lorg/w3c/dom/Document;
    const-string v24, "data"

    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 2238
    .local v15, "root":Lorg/w3c/dom/Element;
    invoke-interface {v13, v15}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2240
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v5

    .line 2241
    .local v5, "deviceSetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v5, :cond_1

    .line 2242
    const-string v24, "SetupManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "saveFavoriteOrderXML() cannot save favorites_order.xml.. deviceSetup for mDeviceId("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ") is null..."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    const/16 v24, 0x0

    .line 2343
    :goto_0
    return v24

    .line 2247
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getClockSetupList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2249
    .local v3, "clocksSetupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    if-nez v3, :cond_2

    .line 2250
    const-string v24, "SetupManager"

    const-string v25, "clocksSetupList is null"

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    const/16 v24, 0x0

    goto :goto_0

    .line 2254
    :cond_2
    const/4 v12, -0x1

    .line 2257
    .local v12, "idleClockPosition":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2258
    .local v4, "clocksSetupListSize":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v4, :cond_4

    .line 2259
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->getShownState()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 2260
    move v12, v11

    .line 2258
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2264
    :cond_4
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getFavoriteReorderList()Ljava/util/ArrayList;

    move-result-object v9

    .line 2265
    .local v9, "favoriteOrderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;

    .line 2268
    .local v2, "app":Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->getPackageName()Ljava/lang/String;

    move-result-object v24

    const-string v26, "idle-clock"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 2269
    const-string v24, "idle-clock"

    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 2271
    .local v17, "subTag":Lorg/w3c/dom/Element;
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2273
    const-string v24, "packageName"

    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v21

    .line 2274
    .local v21, "tagGearPackageName":Lorg/w3c/dom/Element;
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->getPacakgename()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2275
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2277
    const-string v24, "className"

    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v20

    .line 2278
    .local v20, "tagClassName":Lorg/w3c/dom/Element;
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/hostmanager/aidl/ClocksSetup;->getClassName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2279
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2281
    const-string v24, "screen"

    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v22

    .line 2282
    .local v22, "tagScreenOrder":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->getScreenOrder()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2283
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2285
    const-string v24, "cellX"

    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    .line 2286
    .local v18, "tagCellX":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->getCellX()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2287
    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2289
    const-string v24, "cellY"

    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    .line 2290
    .local v19, "tagCellY":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->getCellY()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2291
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_2

    .line 2295
    .end local v17    # "subTag":Lorg/w3c/dom/Element;
    .end local v18    # "tagCellX":Lorg/w3c/dom/Element;
    .end local v19    # "tagCellY":Lorg/w3c/dom/Element;
    .end local v20    # "tagClassName":Lorg/w3c/dom/Element;
    .end local v21    # "tagGearPackageName":Lorg/w3c/dom/Element;
    .end local v22    # "tagScreenOrder":Lorg/w3c/dom/Element;
    :cond_5
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->getPackageName()Ljava/lang/String;

    move-result-object v24

    const-string v26, "com.samsung.w-launcher-app"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 2296
    const-string v24, "more-apps"

    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 2301
    .restart local v17    # "subTag":Lorg/w3c/dom/Element;
    :goto_3
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2303
    const-string v24, "packageName"

    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v21

    .line 2304
    .restart local v21    # "tagGearPackageName":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2305
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2307
    const-string v24, "className"

    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v20

    .line 2308
    .restart local v20    # "tagClassName":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->getClassName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2309
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2311
    const-string v24, "screen"

    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v22

    .line 2312
    .restart local v22    # "tagScreenOrder":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->getScreenOrder()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2313
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2315
    const-string v24, "cellX"

    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    .line 2316
    .restart local v18    # "tagCellX":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->getCellX()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2317
    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2319
    const-string v24, "cellY"

    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    .line 2320
    .restart local v19    # "tagCellY":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;->getCellY()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2321
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_2

    .line 2298
    .end local v17    # "subTag":Lorg/w3c/dom/Element;
    .end local v18    # "tagCellX":Lorg/w3c/dom/Element;
    .end local v19    # "tagCellY":Lorg/w3c/dom/Element;
    .end local v20    # "tagClassName":Lorg/w3c/dom/Element;
    .end local v21    # "tagGearPackageName":Lorg/w3c/dom/Element;
    .end local v22    # "tagScreenOrder":Lorg/w3c/dom/Element;
    :cond_6
    const-string v24, "favorite"

    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .restart local v17    # "subTag":Lorg/w3c/dom/Element;
    goto/16 :goto_3

    .line 2325
    .end local v2    # "app":Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;
    .end local v17    # "subTag":Lorg/w3c/dom/Element;
    :cond_7
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v23

    .line 2326
    .local v23, "tansformer":Ljavax/xml/transform/Transformer;
    new-instance v16, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 2327
    .local v16, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v14, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v14, v10}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 2328
    .local v14, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 2330
    const/4 v8, 0x0

    .line 2331
    .local v8, "favoriteOrderInputStream":Ljava/io/InputStream;
    new-instance v6, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "favorites_order.xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2332
    .local v6, "favoriteFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 2333
    .local v7, "favoriteFis":Ljava/io/FileInputStream;
    const-string v24, "SetupManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "readFavoriteSetupInfo file = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 2335
    new-instance v7, Ljava/io/FileInputStream;

    .end local v7    # "favoriteFis":Ljava/io/FileInputStream;
    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2336
    .restart local v7    # "favoriteFis":Ljava/io/FileInputStream;
    new-instance v8, Ljava/io/BufferedInputStream;

    .end local v8    # "favoriteOrderInputStream":Ljava/io/InputStream;
    invoke-direct {v8, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2338
    .restart local v8    # "favoriteOrderInputStream":Ljava/io/InputStream;
    if-eqz v8, :cond_8

    .line 2339
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/samsung/android/hostmanager/setup/SetupManager;->parseFavoriteReorderInfo(Ljava/util/ArrayList;Ljava/io/InputStream;)V

    .line 2343
    :cond_8
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v24

    goto/16 :goto_0
.end method

.method public saveFontXML()Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1831
    new-instance v3, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "fontlist.xml"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1832
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1833
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v7

    .line 1834
    .local v7, "result":Z
    const-string v22, "SetupManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "file delete result = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    .end local v7    # "result":Z
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    .line 1838
    .local v6, "newdoc":Lorg/w3c/dom/Document;
    const-string v22, "Font"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 1839
    .local v8, "root":Lorg/w3c/dom/Element;
    invoke-interface {v6, v8}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1841
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v2

    .line 1842
    .local v2, "deviceSetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v2, :cond_1

    .line 1843
    const-string v22, "SetupManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "saveFontXML() cannot save fontlist.xml.. deviceSetup for mDeviceId("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") is null..."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    const/16 v22, 0x0

    .line 1900
    :goto_0
    return v22

    .line 1848
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getFontsList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1849
    .local v5, "fontList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/aidl/FontsSetup;

    .line 1850
    .local v4, "font":Lcom/samsung/android/hostmanager/aidl/FontsSetup;
    const-string v22, "item"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 1851
    .local v17, "tagItem":Lorg/w3c/dom/Element;
    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1853
    const-string v22, "AppName"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 1854
    .local v11, "tagAppName":Lorg/w3c/dom/Element;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1855
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1857
    const-string v22, "PackageName"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    .line 1858
    .local v14, "tagGearPackageName":Lorg/w3c/dom/Element;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1859
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1861
    const-string v22, "ClassName"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 1862
    .local v12, "tagClassName":Lorg/w3c/dom/Element;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->getClassName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1863
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1865
    const-string v22, "ImageFileName"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 1866
    .local v15, "tagImageFileName":Lorg/w3c/dom/Element;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->getImageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1867
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1869
    const-string v22, "SettingFileName"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    .line 1870
    .local v19, "tagSettingFileName":Lorg/w3c/dom/Element;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->getSettingFileName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1871
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1873
    const-string v22, "PreLoad"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    .line 1874
    .local v18, "tagPreload":Lorg/w3c/dom/Element;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->getPreloadState()Z

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const-string v22, "true"

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1875
    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1877
    const-string v22, "Version"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v20

    .line 1878
    .local v20, "tagVersion":Lorg/w3c/dom/Element;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->getVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1879
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1881
    const-string v22, "IsShown"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    .line 1882
    .local v16, "tagIsShown":Lorg/w3c/dom/Element;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->getShownState()Z

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    const-string v22, "true"

    :goto_3
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1883
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1885
    const-string v22, "FamilyName"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 1886
    .local v13, "tagFamilyName":Lorg/w3c/dom/Element;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->getFamilyName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1887
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1889
    const-string v22, "AppCategory"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 1890
    .local v10, "tagAppCategory":Lorg/w3c/dom/Element;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->getAppCategory()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1891
    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_1

    .line 1874
    .end local v10    # "tagAppCategory":Lorg/w3c/dom/Element;
    .end local v13    # "tagFamilyName":Lorg/w3c/dom/Element;
    .end local v16    # "tagIsShown":Lorg/w3c/dom/Element;
    .end local v20    # "tagVersion":Lorg/w3c/dom/Element;
    :cond_2
    const-string v22, "false"

    goto :goto_2

    .line 1882
    .restart local v16    # "tagIsShown":Lorg/w3c/dom/Element;
    .restart local v20    # "tagVersion":Lorg/w3c/dom/Element;
    :cond_3
    const-string v22, "false"

    goto :goto_3

    .line 1895
    .end local v4    # "font":Lcom/samsung/android/hostmanager/aidl/FontsSetup;
    .end local v11    # "tagAppName":Lorg/w3c/dom/Element;
    .end local v12    # "tagClassName":Lorg/w3c/dom/Element;
    .end local v14    # "tagGearPackageName":Lorg/w3c/dom/Element;
    .end local v15    # "tagImageFileName":Lorg/w3c/dom/Element;
    .end local v16    # "tagIsShown":Lorg/w3c/dom/Element;
    .end local v17    # "tagItem":Lorg/w3c/dom/Element;
    .end local v18    # "tagPreload":Lorg/w3c/dom/Element;
    .end local v19    # "tagSettingFileName":Lorg/w3c/dom/Element;
    .end local v20    # "tagVersion":Lorg/w3c/dom/Element;
    :cond_4
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v21

    .line 1896
    .local v21, "tansformer":Ljavax/xml/transform/Transformer;
    new-instance v9, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v9, v6}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1897
    .local v9, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v7, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v7, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1898
    .local v7, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v7}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1900
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v22

    goto/16 :goto_0
.end method

.method public saveIMEXML()Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1976
    new-instance v3, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "imelist.xml"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1977
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1978
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v7

    .line 1979
    .local v7, "result":Z
    const-string v21, "SetupManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "file delete result = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    .end local v7    # "result":Z
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    .line 1983
    .local v6, "newdoc":Lorg/w3c/dom/Document;
    const-string v21, "IME"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 1984
    .local v8, "root":Lorg/w3c/dom/Element;
    invoke-interface {v6, v8}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1986
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v2

    .line 1987
    .local v2, "deviceSetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v2, :cond_1

    .line 1988
    const-string v21, "SetupManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveIMEXML() cannot save imelist.xml.. deviceSetup for mDeviceId("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") is null..."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    const/16 v21, 0x0

    .line 2040
    :goto_0
    return v21

    .line 1992
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getIMEList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1993
    .local v5, "imeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/IMESetup;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hostmanager/aidl/IMESetup;

    .line 1994
    .local v4, "ime":Lcom/samsung/android/hostmanager/aidl/IMESetup;
    const-string v21, "item"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 1995
    .local v15, "tagItem":Lorg/w3c/dom/Element;
    invoke-interface {v8, v15}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1997
    const-string v21, "AppName"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 1998
    .local v11, "tagAppName":Lorg/w3c/dom/Element;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/IMESetup;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1999
    invoke-interface {v15, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2001
    const-string v21, "PackageName"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 2002
    .local v13, "tagGearPackageName":Lorg/w3c/dom/Element;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/IMESetup;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2003
    invoke-interface {v15, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2005
    const-string v21, "ClassName"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 2006
    .local v12, "tagClassName":Lorg/w3c/dom/Element;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/IMESetup;->getClassName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2007
    invoke-interface {v15, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2009
    const-string v21, "Version"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    .line 2010
    .local v19, "tagVersion":Lorg/w3c/dom/Element;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/IMESetup;->getVersion()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2011
    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2013
    const-string v21, "ImageFileName"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    .line 2014
    .local v14, "tagImageFileName":Lorg/w3c/dom/Element;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/IMESetup;->getImageFileName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2015
    invoke-interface {v15, v14}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2017
    const-string v21, "SettingFileName"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 2018
    .local v17, "tagSettingFileName":Lorg/w3c/dom/Element;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/IMESetup;->getSettingFileName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2019
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2021
    const-string v21, "IsShown"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    .line 2022
    .local v18, "tagShown":Lorg/w3c/dom/Element;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/IMESetup;->getPreloadState()Z

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const-string v21, "true"

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2023
    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2025
    const-string v21, "AppCategory"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 2026
    .local v10, "tagAppCategory":Lorg/w3c/dom/Element;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/IMESetup;->getAppCategory()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2027
    invoke-interface {v15, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2029
    const-string v21, "PreLoad"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    .line 2030
    .local v16, "tagPreload":Lorg/w3c/dom/Element;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/IMESetup;->getPreloadState()Z

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    const-string v21, "true"

    :goto_3
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 2031
    invoke-interface/range {v15 .. v16}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_1

    .line 2022
    .end local v10    # "tagAppCategory":Lorg/w3c/dom/Element;
    .end local v16    # "tagPreload":Lorg/w3c/dom/Element;
    :cond_2
    const-string v21, "false"

    goto :goto_2

    .line 2030
    .restart local v10    # "tagAppCategory":Lorg/w3c/dom/Element;
    .restart local v16    # "tagPreload":Lorg/w3c/dom/Element;
    :cond_3
    const-string v21, "false"

    goto :goto_3

    .line 2035
    .end local v4    # "ime":Lcom/samsung/android/hostmanager/aidl/IMESetup;
    .end local v10    # "tagAppCategory":Lorg/w3c/dom/Element;
    .end local v11    # "tagAppName":Lorg/w3c/dom/Element;
    .end local v12    # "tagClassName":Lorg/w3c/dom/Element;
    .end local v13    # "tagGearPackageName":Lorg/w3c/dom/Element;
    .end local v14    # "tagImageFileName":Lorg/w3c/dom/Element;
    .end local v15    # "tagItem":Lorg/w3c/dom/Element;
    .end local v16    # "tagPreload":Lorg/w3c/dom/Element;
    .end local v17    # "tagSettingFileName":Lorg/w3c/dom/Element;
    .end local v18    # "tagShown":Lorg/w3c/dom/Element;
    .end local v19    # "tagVersion":Lorg/w3c/dom/Element;
    :cond_4
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v20

    .line 2036
    .local v20, "tansformer":Ljavax/xml/transform/Transformer;
    new-instance v9, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v9, v6}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 2037
    .local v9, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v7, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v7, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 2038
    .local v7, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v7}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 2040
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v21

    goto/16 :goto_0
.end method

.method public saveMyAppsXML()Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1762
    new-instance v5, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "wapplist.xml"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1763
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1764
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v7

    .line 1765
    .local v7, "result":Z
    const-string v21, "SetupManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "file delete result = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    .end local v7    # "result":Z
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    .line 1769
    .local v6, "newdoc":Lorg/w3c/dom/Document;
    const-string v21, "Wapp"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 1770
    .local v8, "root":Lorg/w3c/dom/Element;
    invoke-interface {v6, v8}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1772
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v4

    .line 1773
    .local v4, "deviceSetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v4, :cond_1

    .line 1774
    const-string v21, "SetupManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveMyAppsXML() cannot save wapplist.xml.. deviceSetup for mDeviceId("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") is null..."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    const/16 v21, 0x0

    .line 1827
    :goto_0
    return v21

    .line 1779
    :cond_1
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getMyAppsList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1780
    .local v3, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;

    .line 1781
    .local v2, "app":Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;
    const-string v21, "item"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    .line 1782
    .local v16, "tagItem":Lorg/w3c/dom/Element;
    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1784
    const-string v21, "AppName"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 1785
    .local v11, "tagAppName":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1786
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1788
    const-string v21, "PackageName"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 1789
    .local v13, "tagGearPackageName":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1790
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1792
    const-string v21, "ClassName"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 1793
    .local v12, "tagClassName":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->getClassName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1794
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1796
    const-string v21, "ImageFileName"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    .line 1797
    .local v14, "tagImageFileName":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->getImageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1798
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1800
    const-string v21, "SettingFileName"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    .line 1801
    .local v18, "tagSettingFileName":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->getSettingFileName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1802
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1804
    const-string v21, "IsAppWidget"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 1805
    .local v15, "tagIsAppWidget":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->getAppType()Z

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const-string v21, "true"

    :goto_2
    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1806
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1808
    const-string v21, "PreLoad"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 1809
    .local v17, "tagPreload":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->getPreloadState()Z

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    const-string v21, "true"

    :goto_3
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1810
    invoke-interface/range {v16 .. v17}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1812
    const-string v21, "Version"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    .line 1813
    .local v19, "tagVersion":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->getVersion()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1814
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1816
    const-string v21, "AppCategory"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 1817
    .local v10, "tagAppCategory":Lorg/w3c/dom/Element;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;->getAppCategory()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1818
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_1

    .line 1805
    .end local v10    # "tagAppCategory":Lorg/w3c/dom/Element;
    .end local v17    # "tagPreload":Lorg/w3c/dom/Element;
    .end local v19    # "tagVersion":Lorg/w3c/dom/Element;
    :cond_2
    const-string v21, "false"

    goto :goto_2

    .line 1809
    .restart local v17    # "tagPreload":Lorg/w3c/dom/Element;
    :cond_3
    const-string v21, "false"

    goto :goto_3

    .line 1822
    .end local v2    # "app":Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;
    .end local v11    # "tagAppName":Lorg/w3c/dom/Element;
    .end local v12    # "tagClassName":Lorg/w3c/dom/Element;
    .end local v13    # "tagGearPackageName":Lorg/w3c/dom/Element;
    .end local v14    # "tagImageFileName":Lorg/w3c/dom/Element;
    .end local v15    # "tagIsAppWidget":Lorg/w3c/dom/Element;
    .end local v16    # "tagItem":Lorg/w3c/dom/Element;
    .end local v17    # "tagPreload":Lorg/w3c/dom/Element;
    .end local v18    # "tagSettingFileName":Lorg/w3c/dom/Element;
    :cond_4
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v20

    .line 1823
    .local v20, "tansformer":Ljavax/xml/transform/Transformer;
    new-instance v9, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v9, v6}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1824
    .local v9, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v7, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v7, v5}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1825
    .local v7, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v7}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1827
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v21

    goto/16 :goto_0
.end method

.method public saveSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2121
    const-string v14, "SetupManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "saveSetting():: element = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", value = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    const/4 v12, 0x0

    .line 2126
    .local v12, "xmlData":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "settings_result.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2128
    .local v4, "loadfile":Ljava/io/File;
    const/4 v6, 0x0

    .line 2129
    .local v6, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2130
    const-string v14, "SetupManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "saveSetting():: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "is exist"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    new-instance v13, Ljava/io/BufferedInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2132
    .end local v12    # "xmlData":Ljava/io/InputStream;
    .local v13, "xmlData":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 2133
    .local v1, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 2135
    .local v7, "root":Lorg/w3c/dom/Document;
    move-object/from16 v0, p1

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 2138
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v11

    .line 2139
    .local v11, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v11}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v10

    .line 2141
    .local v10, "transformer":Ljavax/xml/transform/Transformer;
    const-string v14, "encoding"

    const-string v15, "utf-8"

    invoke-virtual {v10, v14, v15}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    const-string v14, "indent"

    const-string v15, "yes"

    invoke-virtual {v10, v14, v15}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    new-instance v8, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v8, v7}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 2145
    .local v8, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v3, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "settings_result.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2148
    .local v3, "file":Ljava/io/File;
    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    .end local v6    # "result":Ljavax/xml/transform/stream/StreamResult;
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v14}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2150
    .restart local v6    # "result":Ljavax/xml/transform/stream/StreamResult;
    :try_start_2
    invoke-virtual {v10, v8, v6}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 2151
    const-string v14, "SetupManager"

    const-string v15, "saveSetting():: save setting finished"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2153
    :try_start_3
    invoke-virtual {v6}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v12, v13

    .line 2166
    .end local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "root":Lorg/w3c/dom/Document;
    .end local v8    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v10    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v11    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .end local v13    # "xmlData":Ljava/io/InputStream;
    .restart local v12    # "xmlData":Ljava/io/InputStream;
    :cond_0
    if-eqz v12, :cond_1

    .line 2167
    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2173
    .end local v4    # "loadfile":Ljava/io/File;
    .end local v6    # "result":Ljavax/xml/transform/stream/StreamResult;
    :cond_1
    :goto_0
    return-void

    .line 2153
    .end local v12    # "xmlData":Ljava/io/InputStream;
    .restart local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "loadfile":Ljava/io/File;
    .restart local v6    # "result":Ljavax/xml/transform/stream/StreamResult;
    .restart local v7    # "root":Lorg/w3c/dom/Document;
    .restart local v8    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v10    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v11    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v13    # "xmlData":Ljava/io/InputStream;
    :catchall_0
    move-exception v14

    :try_start_5
    invoke-virtual {v6}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    throw v14
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2156
    .end local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v7    # "root":Lorg/w3c/dom/Document;
    .end local v8    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v10    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v11    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_0
    move-exception v2

    move-object v12, v13

    .line 2157
    .end local v4    # "loadfile":Ljava/io/File;
    .end local v13    # "xmlData":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v12    # "xmlData":Ljava/io/InputStream;
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2166
    if-eqz v12, :cond_1

    .line 2167
    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 2169
    :catch_1
    move-exception v2

    .line 2170
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2169
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "loadfile":Ljava/io/File;
    .restart local v6    # "result":Ljavax/xml/transform/stream/StreamResult;
    :catch_2
    move-exception v2

    .line 2170
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2158
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "loadfile":Ljava/io/File;
    .end local v6    # "result":Ljavax/xml/transform/stream/StreamResult;
    :catch_3
    move-exception v5

    .line 2159
    .local v5, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_2
    :try_start_8
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2166
    if-eqz v12, :cond_1

    .line 2167
    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    .line 2169
    :catch_4
    move-exception v2

    .line 2170
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2160
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_5
    move-exception v9

    .line 2161
    .local v9, "tfe":Ljavax/xml/transform/TransformerException;
    :goto_3
    :try_start_a
    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2166
    if-eqz v12, :cond_1

    .line 2167
    :try_start_b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_0

    .line 2169
    :catch_6
    move-exception v2

    .line 2170
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2162
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "tfe":Ljavax/xml/transform/TransformerException;
    :catch_7
    move-exception v2

    .line 2163
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2166
    if-eqz v12, :cond_1

    .line 2167
    :try_start_d
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_0

    .line 2169
    :catch_8
    move-exception v2

    .line 2170
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2165
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v14

    .line 2166
    :goto_5
    if-eqz v12, :cond_2

    .line 2167
    :try_start_e
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 2171
    :cond_2
    :goto_6
    throw v14

    .line 2169
    :catch_9
    move-exception v2

    .line 2170
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 2165
    .end local v2    # "e":Ljava/io/IOException;
    .end local v12    # "xmlData":Ljava/io/InputStream;
    .restart local v4    # "loadfile":Ljava/io/File;
    .restart local v13    # "xmlData":Ljava/io/InputStream;
    :catchall_2
    move-exception v14

    move-object v12, v13

    .end local v13    # "xmlData":Ljava/io/InputStream;
    .restart local v12    # "xmlData":Ljava/io/InputStream;
    goto :goto_5

    .line 2162
    .end local v12    # "xmlData":Ljava/io/InputStream;
    .restart local v13    # "xmlData":Ljava/io/InputStream;
    :catch_a
    move-exception v2

    move-object v12, v13

    .end local v13    # "xmlData":Ljava/io/InputStream;
    .restart local v12    # "xmlData":Ljava/io/InputStream;
    goto :goto_4

    .line 2160
    .end local v12    # "xmlData":Ljava/io/InputStream;
    .restart local v13    # "xmlData":Ljava/io/InputStream;
    :catch_b
    move-exception v9

    move-object v12, v13

    .end local v13    # "xmlData":Ljava/io/InputStream;
    .restart local v12    # "xmlData":Ljava/io/InputStream;
    goto :goto_3

    .line 2158
    .end local v12    # "xmlData":Ljava/io/InputStream;
    .restart local v13    # "xmlData":Ljava/io/InputStream;
    :catch_c
    move-exception v5

    move-object v12, v13

    .end local v13    # "xmlData":Ljava/io/InputStream;
    .restart local v12    # "xmlData":Ljava/io/InputStream;
    goto :goto_2

    .line 2156
    .end local v4    # "loadfile":Ljava/io/File;
    :catch_d
    move-exception v2

    goto :goto_1
.end method

.method public saveTTSXML()Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1904
    new-instance v3, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ttslist.xml"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1905
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1906
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    .line 1907
    .local v5, "result":Z
    const-string v22, "SetupManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "file delete result = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    .end local v5    # "result":Z
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    .line 1911
    .local v4, "newdoc":Lorg/w3c/dom/Document;
    const-string v22, "TTS"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 1912
    .local v6, "root":Lorg/w3c/dom/Element;
    invoke-interface {v4, v6}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1914
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v2

    .line 1915
    .local v2, "deviceSetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v2, :cond_1

    .line 1916
    const-string v22, "SetupManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "saveTTSXML() cannot save ttslist.xml.. deviceSetup for mDeviceId("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") is null..."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    const/16 v22, 0x0

    .line 1972
    :goto_0
    return v22

    .line 1920
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->getTTSList()Ljava/util/ArrayList;

    move-result-object v21

    .line 1921
    .local v21, "ttsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/TTSSetup;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/hostmanager/aidl/TTSSetup;

    .line 1922
    .local v20, "tts":Lcom/samsung/android/hostmanager/aidl/TTSSetup;
    const-string v22, "item"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    .line 1923
    .local v14, "tagItem":Lorg/w3c/dom/Element;
    invoke-interface {v6, v14}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1925
    const-string v22, "AppName"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 1926
    .local v9, "tagAppName":Lorg/w3c/dom/Element;
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hostmanager/aidl/TTSSetup;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1927
    invoke-interface {v14, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1929
    const-string v22, "PackageName"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 1930
    .local v11, "tagGearPackageName":Lorg/w3c/dom/Element;
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hostmanager/aidl/TTSSetup;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1931
    invoke-interface {v14, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1933
    const-string v22, "ClassName"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 1934
    .local v10, "tagClassName":Lorg/w3c/dom/Element;
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hostmanager/aidl/TTSSetup;->getClassName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1935
    invoke-interface {v14, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1937
    const-string v22, "Version"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 1938
    .local v17, "tagVersion":Lorg/w3c/dom/Element;
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hostmanager/aidl/TTSSetup;->getVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1939
    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1941
    const-string v22, "ImageFileName"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 1942
    .local v12, "tagImageFileName":Lorg/w3c/dom/Element;
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hostmanager/aidl/TTSSetup;->getImageFileName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1943
    invoke-interface {v14, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1945
    const-string v22, "SettingFileName"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    .line 1946
    .local v16, "tagSettingFileName":Lorg/w3c/dom/Element;
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hostmanager/aidl/TTSSetup;->getSettingFileName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1947
    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1949
    const-string v22, "IsInstalled"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 1950
    .local v13, "tagIsInstalled":Lorg/w3c/dom/Element;
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hostmanager/aidl/TTSSetup;->getInstalledState()Z

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const-string v22, "true"

    :goto_2
    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1951
    invoke-interface {v14, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1953
    const-string v22, "PreLoad"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 1954
    .local v15, "tagPreload":Lorg/w3c/dom/Element;
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hostmanager/aidl/TTSSetup;->getPreloadState()Z

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    const-string v22, "true"

    :goto_3
    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1955
    invoke-interface {v14, v15}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1957
    const-string v22, "VoiceType"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    .line 1958
    .local v18, "tagVoiceType":Lorg/w3c/dom/Element;
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hostmanager/aidl/TTSSetup;->getVoiceType()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1959
    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1961
    const-string v22, "AppCategory"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 1962
    .local v8, "tagAppCategory":Lorg/w3c/dom/Element;
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hostmanager/aidl/TTSSetup;->getAppCategory()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1963
    invoke-interface {v14, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_1

    .line 1950
    .end local v8    # "tagAppCategory":Lorg/w3c/dom/Element;
    .end local v15    # "tagPreload":Lorg/w3c/dom/Element;
    .end local v18    # "tagVoiceType":Lorg/w3c/dom/Element;
    :cond_2
    const-string v22, "false"

    goto :goto_2

    .line 1954
    .restart local v15    # "tagPreload":Lorg/w3c/dom/Element;
    :cond_3
    const-string v22, "false"

    goto :goto_3

    .line 1967
    .end local v9    # "tagAppName":Lorg/w3c/dom/Element;
    .end local v10    # "tagClassName":Lorg/w3c/dom/Element;
    .end local v11    # "tagGearPackageName":Lorg/w3c/dom/Element;
    .end local v12    # "tagImageFileName":Lorg/w3c/dom/Element;
    .end local v13    # "tagIsInstalled":Lorg/w3c/dom/Element;
    .end local v14    # "tagItem":Lorg/w3c/dom/Element;
    .end local v15    # "tagPreload":Lorg/w3c/dom/Element;
    .end local v16    # "tagSettingFileName":Lorg/w3c/dom/Element;
    .end local v17    # "tagVersion":Lorg/w3c/dom/Element;
    .end local v20    # "tts":Lcom/samsung/android/hostmanager/aidl/TTSSetup;
    :cond_4
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v19

    .line 1968
    .local v19, "tansformer":Ljavax/xml/transform/Transformer;
    new-instance v7, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v7, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1969
    .local v7, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v5, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1970
    .local v5, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1972
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v22

    goto/16 :goto_0
.end method

.method public setChangedCallForwardSetup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1621
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->saveCallForwardSetup(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->updateCallForwardSetup(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    return-void
.end method

.method public setChangedClockSetup(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/ClocksSetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1562
    .local p1, "changedClockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/ClocksSetup;>;"
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v0

    .line 1563
    .local v0, "deviceSetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v0, :cond_0

    .line 1564
    const-string v1, "SetupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChangedClockSetup() deviceSetup for mDeviceId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is null..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    :goto_0
    return-void

    .line 1567
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->changeClockList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public setChangedFavoriteReorderSetup(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1607
    .local p1, "favoriteReorderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FavoriteOrderSetup;>;"
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v0

    .line 1608
    .local v0, "deviceSetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v0, :cond_0

    .line 1609
    const-string v1, "SetupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChangedFavoriteReorderSetup() deviceSetup for mDeviceId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is null..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    :goto_0
    return-void

    .line 1612
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->changeFavoriteReorderList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public setChangedFontSetup(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FontsSetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1580
    .local p1, "fontsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/FontsSetup;>;"
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v0

    .line 1581
    .local v0, "deviceSetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v0, :cond_0

    .line 1582
    const-string v1, "SetupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChangedFontSetup() deviceSetup for mDeviceId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is null..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    :goto_0
    return-void

    .line 1585
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->changeFontsList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public setChangedIMESetup(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/IMESetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1598
    .local p1, "imeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/IMESetup;>;"
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v0

    .line 1599
    .local v0, "deviceSetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v0, :cond_0

    .line 1600
    const-string v1, "SetupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChangedIMESetup() deviceSetup for mDeviceId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is null..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    :goto_0
    return-void

    .line 1603
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->changeIMEList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public setChangedMyAppSetup(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1571
    .local p1, "myAppsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/MyAppsSetup;>;"
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v0

    .line 1572
    .local v0, "deviceSetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v0, :cond_0

    .line 1573
    const-string v1, "SetupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChangedMyAppSetup() deviceSetup for mDeviceId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is null..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    :goto_0
    return-void

    .line 1576
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->changeMyAppList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public setChangedSettingsSetup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1616
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->saveSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/setup/SetupManager;->updateSettingsSetup(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    return-void
.end method

.method public setChangedTTSSetup(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/TTSSetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1589
    .local p1, "ttsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/TTSSetup;>;"
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v0

    .line 1590
    .local v0, "deviceSetup":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v0, :cond_0

    .line 1591
    const-string v1, "SetupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChangedTTSSetup() deviceSetup for mDeviceId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is null..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    :goto_0
    return-void

    .line 1594
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->changeTTSList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public setDemoSyncHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 82
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDemoSyncHandler() handler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  Setup No.3 *****************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->demoSyncHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method public setDevcieSetupFromXML(I)V
    .locals 4
    .param p1, "deviceSetupType"    # I

    .prologue
    .line 1626
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getDeviceSetup()Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;

    move-result-object v0

    .line 1627
    .local v0, "device":Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;
    if-nez v0, :cond_0

    .line 1628
    const-string v1, "SetupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDevcieSetupFromXML() deviceSetup for mDeviceId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is null.. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    :goto_0
    return-void

    .line 1632
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1634
    :pswitch_1
    const-string v1, "clocklist.xml"

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->setSetupDataFromFile(Ljava/lang/String;)V

    goto :goto_0

    .line 1637
    :pswitch_2
    const-string v1, "wapplist.xml"

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->setSetupDataFromFile(Ljava/lang/String;)V

    goto :goto_0

    .line 1640
    :pswitch_3
    const-string v1, "fontlist.xml"

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->setSetupDataFromFile(Ljava/lang/String;)V

    goto :goto_0

    .line 1643
    :pswitch_4
    const-string v1, "favorites_order.xml"

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->setSetupDataFromFile(Ljava/lang/String;)V

    goto :goto_0

    .line 1646
    :pswitch_5
    const-string v1, "settings_result.xml"

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->setSetupDataFromFile(Ljava/lang/String;)V

    goto :goto_0

    .line 1649
    :pswitch_6
    const-string v1, "callfwdlist.xml"

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager$DeviceSetup;->setSetupDataFromFile(Ljava/lang/String;)V

    goto :goto_0

    .line 1632
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string v0, "SetupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")  Setup No.2 *****************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceType:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data/data/com.samsung.android.hostmanager/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFolderPath:Ljava/lang/String;

    .line 75
    const-string v0, "data/data/com.samsung.android.hostmanager/files/"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDatafilesPath:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public startRestoreAppSettings(Ljava/lang/String;)V
    .locals 7
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 3497
    const/4 v0, 0x0

    .line 3499
    .local v0, "bnrManager":Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getBackupRestoreManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3504
    :goto_0
    if-nez v0, :cond_0

    .line 3505
    const-string v5, "SetupManager"

    const-string v6, "startRestoreAppSettings() bnrManager is Null"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3528
    :goto_1
    return-void

    .line 3500
    :catch_0
    move-exception v2

    .line 3501
    .local v2, "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 3510
    .end local v2    # "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    :cond_0
    :try_start_1
    const-string v3, "clocklist.xml"

    .line 3511
    .local v3, "fileName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3512
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3513
    .local v4, "filePath":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->restoreClockList:Ljava/util/ArrayList;

    .line 3514
    iget-object v5, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->restoreClockList:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/hostmanager/setup/SetupManager;->readClockListXML(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3516
    const-string v3, "wapplist.xml"

    .line 3517
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3519
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->restoreWAppList:Ljava/util/ArrayList;

    .line 3520
    iget-object v5, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->restoreWAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/hostmanager/setup/SetupManager;->readWappListXML(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3522
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/setup/SetupManager;->restoreClockSettings(Ljava/lang/String;)V

    .line 3523
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/setup/SetupManager;->restoreWappSettings(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3525
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "filePath":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 3526
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public writeFileToDeviceDataFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 3053
    iget-object v7, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    .line 3054
    .local v7, "filePath":Ljava/lang/String;
    const-string v9, "SetupManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeFileToDeviceDataFolder() : file full path = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3056
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3057
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 3058
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 3060
    :cond_0
    const-string v9, "SetupManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeFileToDeviceDataFolder file = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3062
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 3063
    .local v2, "dirPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3064
    .local v5, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 3065
    .local v0, "deleted":Z
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3066
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    .line 3067
    const-string v9, "SetupManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeFileToDeviceDataFolder() deleted = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    :cond_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3070
    .local v6, "fileOutStream":Ljava/io/FileOutputStream;
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3072
    .local v8, "fos":Ljava/io/OutputStream;
    const-string v9, "SetupManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeFileToDeviceDataFolder() fos = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3073
    if-eqz v8, :cond_2

    .line 3075
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V

    .line 3076
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3078
    if-eqz v8, :cond_2

    .line 3079
    :try_start_2
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 3080
    const/4 v8, 0x0

    .line 3084
    :cond_2
    if-eqz v6, :cond_3

    .line 3087
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 3096
    .end local v0    # "deleted":Z
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "dirPath":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileOutStream":Ljava/io/FileOutputStream;
    .end local v8    # "fos":Ljava/io/OutputStream;
    :cond_3
    :goto_0
    return-void

    .line 3078
    .restart local v0    # "deleted":Z
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v2    # "dirPath":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "fileOutStream":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/OutputStream;
    :catchall_0
    move-exception v9

    if-eqz v8, :cond_4

    .line 3079
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 3080
    const/4 v8, 0x0

    :cond_4
    throw v9
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3091
    .end local v0    # "deleted":Z
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "dirPath":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileOutStream":Ljava/io/FileOutputStream;
    .end local v8    # "fos":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 3092
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3093
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 3094
    .local v4, "e2":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public writeFileToDeviceDataFolder(Ljava/lang/String;[B)V
    .locals 12
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 3099
    iget-object v7, p0, Lcom/samsung/android/hostmanager/setup/SetupManager;->mDataFullPath:Ljava/lang/String;

    .line 3100
    .local v7, "filePath":Ljava/lang/String;
    const-string v9, "SetupManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeFileToDeviceDataFolder() : file full path = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3102
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3103
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 3104
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 3106
    :cond_0
    const-string v9, "SetupManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeFileToDeviceDataFolder file = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3108
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 3109
    .local v2, "dirPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3110
    .local v5, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 3111
    .local v0, "deleted":Z
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3112
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    .line 3113
    const-string v9, "SetupManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeFileToDeviceDataFolder() deleted = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    :cond_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3116
    .local v6, "fileOutStream":Ljava/io/FileOutputStream;
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3118
    .local v8, "fos":Ljava/io/OutputStream;
    const-string v9, "SetupManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeFileToDeviceDataFolder() fos = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3119
    if-eqz v8, :cond_2

    .line 3121
    :try_start_1
    invoke-virtual {v8, p2}, Ljava/io/OutputStream;->write([B)V

    .line 3122
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3124
    if-eqz v8, :cond_2

    .line 3125
    :try_start_2
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 3126
    const/4 v8, 0x0

    .line 3130
    :cond_2
    if-eqz v6, :cond_3

    .line 3133
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 3142
    .end local v0    # "deleted":Z
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "dirPath":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileOutStream":Ljava/io/FileOutputStream;
    .end local v8    # "fos":Ljava/io/OutputStream;
    :cond_3
    :goto_0
    return-void

    .line 3124
    .restart local v0    # "deleted":Z
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v2    # "dirPath":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "fileOutStream":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/OutputStream;
    :catchall_0
    move-exception v9

    if-eqz v8, :cond_4

    .line 3125
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 3126
    const/4 v8, 0x0

    :cond_4
    throw v9
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3137
    .end local v0    # "deleted":Z
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "dirPath":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileOutStream":Ljava/io/FileOutputStream;
    .end local v8    # "fos":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 3138
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3139
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 3140
    .local v4, "e2":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
