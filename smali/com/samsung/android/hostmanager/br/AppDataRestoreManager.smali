.class public Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;
.super Ljava/lang/Object;
.source "AppDataRestoreManager.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/br/BackupRestoreListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;,
        Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;
    }
.end annotation


# static fields
.field private static final RESTORE_COMPLETE:I = 0x2

.field private static final RESTORE_PROGRESS_UPDATE:I = 0x3

.field private static final RESTORE_SETTINGS:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field static mContext:Landroid/content/Context;


# instance fields
.field private appListIndex:I

.field private backupIdleClockPackage:Ljava/lang/String;

.field lenghtOfTotalFile:I

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/BackupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBnRHandler:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;

.field private mHandler:Landroid/os/Handler;

.field private final mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

.field private mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

.field private mRestoreHandler:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;

.field private restoreWAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/br/WatchAppsInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bnrManager"    # Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v0, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->appListIndex:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->lenghtOfTotalFile:I

    .line 67
    sput-object p1, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    .line 69
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    .prologue
    .line 46
    iget v0, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->appListIndex:I

    return v0
.end method

.method static synthetic access$308(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    .prologue
    .line 46
    iget v0, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->appListIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->appListIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->backupIdleClockPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mRestoreHandler:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->sendProgressUpdate(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private readWappListXML(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 31
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/br/WatchAppsInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 480
    .local p2, "wAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/br/WatchAppsInfo;>;"
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 481
    .local v19, "file":Ljava/io/File;
    sget-object v28, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "readXML file = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    .line 483
    const/4 v13, 0x0

    .line 485
    .local v13, "clocklistfis":Ljava/io/InputStream;
    :try_start_0
    new-instance v14, Ljava/io/BufferedInputStream;

    new-instance v28, Ljava/io/FileInputStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v28

    invoke-direct {v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    .end local v13    # "clocklistfis":Ljava/io/InputStream;
    .local v14, "clocklistfis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v17

    .line 488
    .local v17, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v17 .. v17}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v16

    .line 489
    .local v16, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v15

    .line 490
    .local v15, "doc":Lorg/w3c/dom/Document;
    const-string v28, "item"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 495
    .local v21, "nodelist":Lorg/w3c/dom/NodeList;
    sget-object v28, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "nodelist size = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    .line 497
    .local v22, "nodelist_count":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 498
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v27

    check-cast v27, Lorg/w3c/dom/Element;

    .line 499
    .local v27, "wappinfo":Lorg/w3c/dom/Element;
    const-string v28, "AppName"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "appname":Ljava/lang/String;
    const-string v28, "ClassName"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 501
    .local v5, "className":Ljava/lang/String;
    const-string v28, "PackageName"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, "packageName":Ljava/lang/String;
    const-string v28, "ImageFileName"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 503
    .local v6, "imageFileName":Ljava/lang/String;
    const-string v28, "SettingFileName"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 504
    .local v7, "settingFileName":Ljava/lang/String;
    const-string v28, "PreLoad"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v26

    .line 505
    .local v26, "preLoad":Ljava/lang/String;
    const-string v28, "true"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 506
    const/4 v9, 0x1

    .line 510
    .local v9, "isPreload":Z
    :goto_1
    const-string v28, "IsAppWidget"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    .line 511
    .local v11, "AppWidgetcheck":Ljava/lang/String;
    const-string v28, "true"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 512
    const/4 v8, 0x1

    .line 517
    .local v8, "isAppWidget":Z
    :goto_2
    const-string v28, "PreCheckSettingsCondition"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 518
    .local v23, "preCheck":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    if-lez v28, :cond_3

    .line 519
    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    check-cast v28, Lorg/w3c/dom/Element;

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v24

    .line 520
    .local v24, "preCheckSettingCondition":Ljava/lang/String;
    const-string v28, "true"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    .line 521
    .local v25, "preCheckSettingConditionState":Z
    sget-object v28, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "preCheckSettingConditionState"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .end local v24    # "preCheckSettingCondition":Ljava/lang/String;
    :goto_3
    const-string v10, "unused"

    .line 527
    .local v10, "appCategory":Ljava/lang/String;
    const-string v28, "AppCategory"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 528
    .local v12, "appCategoryList":Lorg/w3c/dom/NodeList;
    if-eqz v12, :cond_0

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    if-lez v28, :cond_0

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    if-eqz v28, :cond_0

    .line 529
    const-string v28, "AppCategory"

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    .line 532
    :cond_0
    new-instance v2, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 534
    .local v2, "app":Lcom/samsung/android/hostmanager/br/WatchAppsInfo;
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 508
    .end local v2    # "app":Lcom/samsung/android/hostmanager/br/WatchAppsInfo;
    .end local v8    # "isAppWidget":Z
    .end local v9    # "isPreload":Z
    .end local v10    # "appCategory":Ljava/lang/String;
    .end local v11    # "AppWidgetcheck":Ljava/lang/String;
    .end local v12    # "appCategoryList":Lorg/w3c/dom/NodeList;
    .end local v23    # "preCheck":Lorg/w3c/dom/NodeList;
    .end local v25    # "preCheckSettingConditionState":Z
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "isPreload":Z
    goto/16 :goto_1

    .line 514
    .restart local v11    # "AppWidgetcheck":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "isAppWidget":Z
    goto :goto_2

    .line 523
    .restart local v23    # "preCheck":Lorg/w3c/dom/NodeList;
    :cond_3
    const/16 v25, 0x0

    .restart local v25    # "preCheckSettingConditionState":Z
    goto :goto_3

    .line 536
    .end local v3    # "appname":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "imageFileName":Ljava/lang/String;
    .end local v7    # "settingFileName":Ljava/lang/String;
    .end local v8    # "isAppWidget":Z
    .end local v9    # "isPreload":Z
    .end local v11    # "AppWidgetcheck":Ljava/lang/String;
    .end local v23    # "preCheck":Lorg/w3c/dom/NodeList;
    .end local v25    # "preCheckSettingConditionState":Z
    .end local v26    # "preLoad":Ljava/lang/String;
    .end local v27    # "wappinfo":Lorg/w3c/dom/Element;
    :cond_4
    sget-object v28, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "readXML() installedClockList size = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    if-eqz v14, :cond_5

    .line 538
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 545
    :cond_5
    if-eqz v14, :cond_6

    .line 546
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 550
    .end local v14    # "clocklistfis":Ljava/io/InputStream;
    .end local v15    # "doc":Lorg/w3c/dom/Document;
    .end local v16    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v17    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v20    # "i":I
    .end local v21    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v22    # "nodelist_count":I
    :cond_6
    :goto_4
    return-void

    .line 540
    .restart local v13    # "clocklistfis":Ljava/io/InputStream;
    :catch_0
    move-exception v18

    .line 541
    .local v18, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_5
    :try_start_2
    sget-object v28, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ParserConfigurationException e = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 545
    if-eqz v13, :cond_6

    .line 546
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 542
    .end local v18    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v18

    .line 543
    .local v18, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_3
    sget-object v28, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Exception e = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 545
    if-eqz v13, :cond_6

    .line 546
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 545
    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v28

    :goto_7
    if-eqz v13, :cond_7

    .line 546
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v28

    .line 545
    .end local v13    # "clocklistfis":Ljava/io/InputStream;
    .restart local v14    # "clocklistfis":Ljava/io/InputStream;
    :catchall_1
    move-exception v28

    move-object v13, v14

    .end local v14    # "clocklistfis":Ljava/io/InputStream;
    .restart local v13    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_7

    .line 542
    .end local v13    # "clocklistfis":Ljava/io/InputStream;
    .restart local v14    # "clocklistfis":Ljava/io/InputStream;
    :catch_2
    move-exception v18

    move-object v13, v14

    .end local v14    # "clocklistfis":Ljava/io/InputStream;
    .restart local v13    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_6

    .line 540
    .end local v13    # "clocklistfis":Ljava/io/InputStream;
    .restart local v14    # "clocklistfis":Ljava/io/InputStream;
    :catch_3
    move-exception v18

    move-object v13, v14

    .end local v14    # "clocklistfis":Ljava/io/InputStream;
    .restart local v13    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_5
.end method

.method private restoreNotifications(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 465
    sget-object v1, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    const-string v2, "restoring notifications..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->restoreNotificationManager()Lcom/samsung/android/hostmanager/manager/INotificationManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_0
    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendProgressUpdate(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 716
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 717
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1774

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 718
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 719
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "desc"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v2, "progress"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 721
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 722
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 725
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public RestoreStop()V
    .locals 2

    .prologue
    .line 474
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v0, :cond_0

    .line 475
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setRestoreAppDataHandler(Landroid/os/Handler;)V

    .line 477
    :cond_0
    return-void
.end method

.method public bPkgPresent()Z
    .locals 14

    .prologue
    .line 122
    const/4 v9, 0x0

    .line 125
    .local v9, "status":Z
    const-string v2, "wapplist.xml"

    .line 126
    .local v2, "fileName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-static {v11, v12}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceType(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "filePath":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->restoreWAppList:Ljava/util/ArrayList;

    .line 130
    :try_start_0
    iget-object v10, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->restoreWAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v10}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->readWappListXML(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    iget-object v10, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->restoreWAppList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 136
    .local v8, "restoreWAppList_count":I
    sget-object v10, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FileName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " filePath: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " count:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v8, :cond_0

    .line 139
    iget-object v10, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mAppList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_1

    .line 140
    sget-object v10, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    const-string v11, "Exit 1"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    :goto_2
    return v9

    .line 131
    .end local v5    # "j":I
    .end local v8    # "restoreWAppList_count":I
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "j":I
    .restart local v8    # "restoreWAppList_count":I
    :cond_1
    iget-object v10, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mAppList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    iget v11, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->appListIndex:I

    if-gt v10, v11, :cond_2

    .line 145
    sget-object v10, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    const-string v11, "Exit 2"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 149
    :cond_2
    sget-object v10, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getGearModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, "modelName":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->restoreWAppList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/br/WatchAppsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "bPackageName":Ljava/lang/String;
    sget-object v10, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mContext:Landroid/content/Context;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "installed_wapp_app"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 154
    .local v7, "prefsInstalledWapp":Landroid/content/SharedPreferences;
    const-string v10, "empty"

    invoke-interface {v7, v0, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "hPackageName":Ljava/lang/String;
    sget-object v10, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " bPkg: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hPkg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " value of array: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mAppList:Ljava/util/List;

    iget v13, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->appListIndex:I

    .line 157
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 155
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v10, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mAppList:Ljava/util/List;

    iget v11, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->appListIndex:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/hostmanager/aidl/BackupInfo;

    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->getPkgName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 159
    sget-object v10, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exit 3  -->"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v9, 0x1

    .line 161
    goto/16 :goto_2

    .line 163
    :cond_3
    sget-object v10, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Count++  -->"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v9, 0x0

    .line 137
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method public initAppDataRestore()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->RestoreStop()V

    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, "deviceID":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v0, v3, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    .line 255
    sget-object v3, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NewDeviceIdAPI:initAutomaticBackup deviceID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {v0}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v2

    .line 263
    .local v2, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->backupIdleClockPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/setup/SetupManager;->changeIdleClock(Ljava/lang/String;)V

    .line 265
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x6

    if-gt v1, v3, :cond_0

    .line 266
    invoke-virtual {v2, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager;->manageSetupInfo(I)Z

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mRestoreHandler:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;

    const/4 v4, 0x1

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 271
    return-void
.end method

.method public onProgressCancel(I)V
    .locals 0
    .param p1, "where"    # I

    .prologue
    .line 638
    return-void
.end method

.method public onProgressComplete(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "where"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 616
    .local p2, "deletePackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public onProgressError(II)V
    .locals 0
    .param p1, "where"    # I
    .param p2, "error"    # I

    .prologue
    .line 634
    return-void
.end method

.method public onProgressRetry(I)V
    .locals 0
    .param p1, "where"    # I

    .prologue
    .line 630
    return-void
.end method

.method public onUpdate(Ljava/lang/String;I)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 620
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    if-eqz v0, :cond_0

    .line 621
    sget-object v0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "mListener is  NOT NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hostmanager/br/BackupRestoreListener;->onUpdate(Ljava/lang/String;I)V

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "mListener is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public restoreResoreSettings()V
    .locals 24

    .prologue
    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    .line 275
    .local v8, "deviceID":Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getSetupMgr(Ljava/lang/String;)Lcom/samsung/android/hostmanager/setup/SetupManager;

    move-result-object v16

    .line 278
    .local v16, "setupmgr":Lcom/samsung/android/hostmanager/setup/SetupManager;
    :try_start_0
    const-string v21, "appsOrderXml"

    const-string v22, "support.myapps.order"

    move-object/from16 v0, v22

    invoke-static {v8, v0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getSupportFeatureWearable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 281
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->appOrderRestoreSync(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->favoritesOrderRestoreSync(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_0
    :goto_0
    const-string v21, "Sync"

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->onUpdate(Ljava/lang/String;I)V

    .line 290
    sget-object v21, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "restoreResoreSettings() deviceID: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    if-eqz v8, :cond_5

    .line 292
    const/16 v21, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager;->setDevcieSetupFromXML(I)V

    .line 293
    const-string v21, "support.font"

    move-object/from16 v0, v21

    invoke-static {v8, v0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isSupportFeatureWearable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 294
    const/16 v21, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager;->setDevcieSetupFromXML(I)V

    .line 296
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/hostmanager/setup/SetupManager;->getSettingsSetup()Lcom/samsung/android/hostmanager/aidl/SettingsSetup;

    move-result-object v19

    .line 297
    .local v19, "ss":Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    if-eqz v19, :cond_e

    .line 298
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->getBGMode()I

    move-result v7

    .line 299
    .local v7, "bgmode":I
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->getBGData()Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, "bgdata":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v7, v6}, Lcom/samsung/android/hostmanager/service/ICHostManager;->restoreHomeBGSettings(Ljava/lang/String;ILjava/lang/String;)V

    .line 302
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->getWakeup()Ljava/lang/String;

    move-result-object v20

    .line 303
    .local v20, "wakeupgestureMode":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->getPDPressing()Ljava/lang/String;

    move-result-object v14

    .line 305
    .local v14, "powerKeyDobulePressing":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/hostmanager/aidl/SettingsSetup;->getSmart()Z

    move-result v18

    .line 307
    .local v18, "smartrelay":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v12

    .line 309
    .local v12, "mIUHostManager":Lcom/samsung/android/hostmanager/service/IUHostManager;
    if-eqz v12, :cond_2

    .line 311
    :try_start_1
    const-string v22, "smartrelay"

    if-eqz v18, :cond_6

    const-string v21, "true"

    :goto_1
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v12, v8, v0, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->setSettingsSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    :cond_2
    :goto_2
    const-string v21, "Sync"

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->onUpdate(Ljava/lang/String;I)V

    .line 317
    if-eqz v12, :cond_7

    const-string v21, "INCOMING_CALL_PREF"

    move-object/from16 v0, v21

    invoke-virtual {v12, v8, v0}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 318
    .local v5, "VoiceIncomingCall":Ljava/lang/String;
    :goto_3
    const-string v4, "false"

    .line 321
    .local v4, "VoiceCamera":Ljava/lang/String;
    const/4 v13, 0x0

    .line 327
    .local v13, "nSafety_voice":I
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "hm_shared_preference"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 329
    .local v15, "sendHelpPref":Landroid/content/SharedPreferences;
    const-string v21, "send_help_pref"

    const-string v22, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, "SendSafetyOnOff":Ljava/lang/String;
    sget-object v21, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "gw:: sendHelpMessage BackUpRestore shrpref_onoff - sendhelp_value : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v21, "Sync"

    const/16 v22, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->onUpdate(Ljava/lang/String;I)V

    .line 332
    sget-object v21, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Smart Relay Mode : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v21, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Wakeup gesture mode : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    sget-object v21, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "PowerKey double mode : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    sget-object v21, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "VoiceIncomingCall : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget-object v21, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Send Help message on/off : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " voice : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v14}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendPowerKeyDoublePressing(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updateWakeupByGesture(Ljava/lang/String;Ljava/lang/String;)Z

    .line 341
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v4, v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonSettingVoiceControl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v22, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_8

    const-string v21, "0"

    :goto_4
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->jsonSendSafetyOnOff(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v21, "1"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 350
    sget-object v21, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    const-string v22, "Send Help message : user_agree_to_use_location_service, send_b_emergency_message"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x17

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_9

    .line 352
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "user_agree_to_use_location_service"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 354
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "send_b_emergency_message"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 367
    :cond_3
    :goto_5
    const-string v21, "Sync"

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->onUpdate(Ljava/lang/String;I)V

    .line 369
    if-eqz v12, :cond_a

    const-string v21, "share_location_pref"

    move-object/from16 v0, v21

    invoke-virtual {v12, v8, v0}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 370
    .local v17, "shareLocation":Ljava/lang/String;
    :goto_6
    if-eqz v17, :cond_c

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 371
    sget-object v21, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    const-string v22, "cmw_location_share_info true"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x17

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_b

    .line 373
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "cmw_location_share_info"

    const-string v23, "true"

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :goto_7
    const-string v21, "Sync"

    const/16 v22, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->onUpdate(Ljava/lang/String;I)V

    .line 409
    const-string v21, "Sync"

    const/16 v22, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->onUpdate(Ljava/lang/String;I)V

    .line 419
    const-string v21, "support.gesture.palmmotion"

    move-object/from16 v0, v21

    invoke-static {v8, v0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isSupportFeatureWearable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 423
    const-string v9, ""

    .line 424
    .local v9, "dummyData":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v8}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendJsonSettingPalmMotionReqMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .end local v9    # "dummyData":Ljava/lang/String;
    :cond_4
    const-string v21, "Sync"

    const/16 v22, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->onUpdate(Ljava/lang/String;I)V

    .line 449
    .end local v3    # "SendSafetyOnOff":Ljava/lang/String;
    .end local v4    # "VoiceCamera":Ljava/lang/String;
    .end local v5    # "VoiceIncomingCall":Ljava/lang/String;
    .end local v6    # "bgdata":Ljava/lang/String;
    .end local v7    # "bgmode":I
    .end local v12    # "mIUHostManager":Lcom/samsung/android/hostmanager/service/IUHostManager;
    .end local v13    # "nSafety_voice":I
    .end local v14    # "powerKeyDobulePressing":Ljava/lang/String;
    .end local v15    # "sendHelpPref":Landroid/content/SharedPreferences;
    .end local v17    # "shareLocation":Ljava/lang/String;
    .end local v18    # "smartrelay":Z
    .end local v19    # "ss":Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    .end local v20    # "wakeupgestureMode":Ljava/lang/String;
    :cond_5
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/setup/SetupManager;->startRestoreAppSettings(Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->restoreNotifications(Ljava/lang/String;)V

    .line 451
    const-string v21, "Sync"

    const/16 v22, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->onUpdate(Ljava/lang/String;I)V

    .line 452
    return-void

    .line 286
    :catch_0
    move-exception v11

    .line 287
    .local v11, "e1":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 311
    .end local v11    # "e1":Ljava/lang/Exception;
    .restart local v6    # "bgdata":Ljava/lang/String;
    .restart local v7    # "bgmode":I
    .restart local v12    # "mIUHostManager":Lcom/samsung/android/hostmanager/service/IUHostManager;
    .restart local v14    # "powerKeyDobulePressing":Ljava/lang/String;
    .restart local v18    # "smartrelay":Z
    .restart local v19    # "ss":Lcom/samsung/android/hostmanager/aidl/SettingsSetup;
    .restart local v20    # "wakeupgestureMode":Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string v21, "false"
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 312
    :catch_1
    move-exception v10

    .line 313
    .local v10, "e":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 317
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_7
    const-string v5, ""

    goto/16 :goto_3

    .line 345
    .restart local v3    # "SendSafetyOnOff":Ljava/lang/String;
    .restart local v4    # "VoiceCamera":Ljava/lang/String;
    .restart local v5    # "VoiceIncomingCall":Ljava/lang/String;
    .restart local v13    # "nSafety_voice":I
    .restart local v15    # "sendHelpPref":Landroid/content/SharedPreferences;
    :cond_8
    const-string v21, "1"

    goto/16 :goto_4

    .line 357
    :cond_9
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "user_agree_to_use_location_service"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "send_b_emergency_message"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5

    .line 369
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 376
    .restart local v17    # "shareLocation":Ljava/lang/String;
    :cond_b
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "cmw_location_share_info"

    const-string v23, "true"

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_7

    .line 380
    :cond_c
    sget-object v21, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    const-string v22, "cmw_location_share_info false"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x17

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_d

    .line 382
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "cmw_location_share_info"

    const-string v23, "false"

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 385
    :cond_d
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "cmw_location_share_info"

    const-string v23, "false"

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_7

    .line 444
    .end local v3    # "SendSafetyOnOff":Ljava/lang/String;
    .end local v4    # "VoiceCamera":Ljava/lang/String;
    .end local v5    # "VoiceIncomingCall":Ljava/lang/String;
    .end local v6    # "bgdata":Ljava/lang/String;
    .end local v7    # "bgmode":I
    .end local v12    # "mIUHostManager":Lcom/samsung/android/hostmanager/service/IUHostManager;
    .end local v13    # "nSafety_voice":I
    .end local v14    # "powerKeyDobulePressing":Ljava/lang/String;
    .end local v15    # "sendHelpPref":Landroid/content/SharedPreferences;
    .end local v17    # "shareLocation":Ljava/lang/String;
    .end local v18    # "smartrelay":Z
    .end local v20    # "wakeupgestureMode":Ljava/lang/String;
    :cond_e
    sget-object v21, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    const-string v22, "restoreResoreSettings()::ss = null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mHandler:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method public setIdleClock(Ljava/lang/String;)V
    .locals 0
    .param p1, "clockpackage"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->backupIdleClockPackage:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setListenter(Lcom/samsung/android/hostmanager/br/BackupRestoreListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mListener:Lcom/samsung/android/hostmanager/br/BackupRestoreListener;

    .line 77
    return-void
.end method

.method public startRestoreTask()V
    .locals 3

    .prologue
    .line 172
    sget-object v1, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    const-string v2, "startRestoreTask"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v1, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;-><init>(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mBnRHandler:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;

    .line 174
    new-instance v1, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;-><init>(Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mRestoreHandler:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$RestoreHandler;

    .line 176
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v1, :cond_0

    .line 177
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mBnRHandler:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager$BnRHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setRestoreAppDataHandler(Landroid/os/Handler;)V

    .line 181
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->initAppDataRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public totalSettingsFile()I
    .locals 12

    .prologue
    .line 84
    const/4 v7, 0x0

    .line 85
    .local v7, "lenghtOfTotalFile":I
    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    iget-object v0, v9, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    .line 86
    .local v0, "MacId":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-virtual {v9, v0}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->validateMacAddress(Ljava/lang/String;)Z

    move-result v6

    .line 87
    .local v6, "isMacIdValdiated":Z
    sget-object v9, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Validate Mac Address "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eqz v6, :cond_1

    .line 91
    :try_start_0
    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mIBackupRestoreManager:Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    invoke-virtual {v9, v0}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->getBackupList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mAppList:Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->appListIndex:I

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, "appList_temp":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/BackupInfo;>;"
    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mAppList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 102
    .local v8, "size":I
    const/4 v2, 0x0

    .local v2, "count":I
    :goto_1
    if-ge v2, v8, :cond_2

    .line 103
    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mAppList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/hostmanager/aidl/BackupInfo;

    .line 104
    .local v5, "info":Lcom/samsung/android/hostmanager/aidl/BackupInfo;
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 105
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    .end local v1    # "appList_temp":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/BackupInfo;>;"
    .end local v2    # "count":I
    .end local v5    # "info":Lcom/samsung/android/hostmanager/aidl/BackupInfo;
    .end local v8    # "size":I
    :cond_1
    :try_start_1
    sget-object v9, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Validate Mac Address Failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v3

    .line 96
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v1    # "appList_temp":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hostmanager/aidl/BackupInfo;>;"
    .restart local v2    # "count":I
    .restart local v8    # "size":I
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mAppList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 110
    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mAppList:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mAppList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 113
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v7, :cond_3

    .line 114
    sget-object v10, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "inside file length: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mAppList:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/hostmanager/aidl/BackupInfo;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->getPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " : app name: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->mAppList:Ljava/util/List;

    .line 115
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/hostmanager/aidl/BackupInfo;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->getAppName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 114
    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 118
    :cond_3
    return v7
.end method
