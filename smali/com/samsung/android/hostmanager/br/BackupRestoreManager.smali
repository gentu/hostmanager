.class public Lcom/samsung/android/hostmanager/br/BackupRestoreManager;
.super Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;
.source "BackupRestoreManager.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/br/BackupRestoreListener;


# static fields
.field public static final ACTION_SYSTEM_RESTORE_FAILED:Ljava/lang/String; = "com.samsung.android.hostmanager.SYSTEM_RESTORE_FAILED"

.field public static final ACTION_WATCH_RESTORE:Ljava/lang/String; = "android.intent.watchmanager.action.RESTORE"

.field public static final APP_PERCENTAGE_FACTOR:I = 0x5

.field public static final PERCENTAGE_HUNDRED:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appDataFiles:I

.field private appFiles:I

.field appPercentage:F

.field appPercentageFactor:F

.field private filesExecuted:I

.field private isAppExecuted:Z

.field private mAppDataBackupManager:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

.field private mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

.field private mAutoBackupDuration:I

.field private mBackupManager:Lcom/samsung/android/hostmanager/br/BackupManager;

.field private mContext:Landroid/content/Context;

.field private mDeviceModelNumber:Ljava/lang/String;

.field private mHMSetupHandler:Landroid/os/Handler;

.field private mIRepository:Lcom/samsung/android/hostmanager/model/IRepository;

.field private mResetManager:Lcom/samsung/android/hostmanager/br/ResetManager;

.field private mRestoreInstall:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

.field private mRestoreManager:Lcom/samsung/android/hostmanager/br/RestoreManager;

.field private percentage:F

.field remainingFilesCount:F

.field remainingPercentage:F

.field remainingValue:F

.field private settingFiles:I

.field private totalFiles:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;-><init>(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->filesExecuted:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->percentage:F

    .line 97
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 98
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 99
    sget-object v0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "BackupRestoreManager Worker Thread !!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    new-instance v0, Lcom/samsung/android/hostmanager/model/IRepository;

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/model/IRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mIRepository:Lcom/samsung/android/hostmanager/model/IRepository;

    .line 106
    new-instance v0, Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/hostmanager/br/RestoreManager;-><init>(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreManager:Lcom/samsung/android/hostmanager/br/RestoreManager;

    .line 107
    new-instance v0, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;-><init>(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    .line 108
    new-instance v0, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;-><init>(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreInstall:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    .line 109
    new-instance v0, Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/hostmanager/br/BackupManager;-><init>(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mBackupManager:Lcom/samsung/android/hostmanager/br/BackupManager;

    .line 110
    new-instance v0, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;-><init>(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mAppDataBackupManager:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    .line 111
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mContext:Landroid/content/Context;

    .line 112
    return-void
.end method

.method private readBackupPref(Ljava/io/File;Ljava/util/Map;)V
    .locals 18
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 229
    .local p2, "PrefMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v15, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v16, "readBackupPref()"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v6, 0x0

    .line 232
    .local v6, "fis":Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .end local v6    # "fis":Ljava/io/InputStream;
    .local v7, "fis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 234
    .local v3, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 235
    .local v2, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 236
    .local v1, "doc":Lorg/w3c/dom/Document;
    const-string v15, "map"

    invoke-interface {v1, v15}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 237
    .local v11, "nodelist":Lorg/w3c/dom/NodeList;
    const/4 v15, 0x0

    invoke-interface {v11, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 238
    .local v10, "mapElem":Lorg/w3c/dom/Element;
    const-string v15, "string"

    invoke-interface {v10, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 239
    .local v12, "stringList":Lorg/w3c/dom/NodeList;
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    .line 240
    .local v13, "stringListLength":I
    sget-object v15, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readBackupPref: length "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v13, :cond_1

    .line 242
    invoke-interface {v12, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 243
    .local v5, "elemements":Lorg/w3c/dom/Element;
    const-string v15, "name"

    invoke-interface {v5, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 244
    .local v9, "key":Ljava/lang/String;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v14

    .line 245
    .local v14, "value":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 246
    sget-object v15, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readBackupPref: Key:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", Value:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    move-object/from16 v0, p2

    invoke-interface {v0, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 250
    .end local v5    # "elemements":Lorg/w3c/dom/Element;
    .end local v9    # "key":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 251
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 259
    :cond_2
    if-eqz v7, :cond_5

    .line 260
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    move-object v6, v7

    .line 263
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "fis":Ljava/io/InputStream;
    .end local v8    # "i":I
    .end local v10    # "mapElem":Lorg/w3c/dom/Element;
    .end local v11    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v12    # "stringList":Lorg/w3c/dom/NodeList;
    .end local v13    # "stringListLength":I
    .restart local v6    # "fis":Ljava/io/InputStream;
    :cond_3
    :goto_1
    return-void

    .line 254
    :catch_0
    move-exception v4

    .line 255
    .local v4, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_2
    :try_start_2
    sget-object v15, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readBackupPref e = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    if-eqz v6, :cond_3

    .line 260
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 256
    .end local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v4

    .line 257
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    sget-object v15, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readBackupPref e = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    if-eqz v6, :cond_3

    .line 260
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 259
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    :goto_4
    if-eqz v6, :cond_4

    .line 260
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v15

    .line 259
    .end local v6    # "fis":Ljava/io/InputStream;
    .restart local v7    # "fis":Ljava/io/InputStream;
    :catchall_1
    move-exception v15

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/InputStream;
    .restart local v6    # "fis":Ljava/io/InputStream;
    goto :goto_4

    .line 256
    .end local v6    # "fis":Ljava/io/InputStream;
    .restart local v7    # "fis":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/InputStream;
    .restart local v6    # "fis":Ljava/io/InputStream;
    goto :goto_3

    .line 254
    .end local v6    # "fis":Ljava/io/InputStream;
    .restart local v7    # "fis":Ljava/io/InputStream;
    :catch_3
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/InputStream;
    .restart local v6    # "fis":Ljava/io/InputStream;
    goto :goto_2

    .end local v6    # "fis":Ljava/io/InputStream;
    .restart local v1    # "doc":Lorg/w3c/dom/Document;
    .restart local v2    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7    # "fis":Ljava/io/InputStream;
    .restart local v8    # "i":I
    .restart local v10    # "mapElem":Lorg/w3c/dom/Element;
    .restart local v11    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v12    # "stringList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "stringListLength":I
    :cond_5
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/InputStream;
    .restart local v6    # "fis":Ljava/io/InputStream;
    goto :goto_1
.end method


# virtual methods
.method public appDataBackup(Ljava/lang/String;I)V
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "backupType"    # I

    .prologue
    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mAppDataBackupManager:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-virtual {v1, p0}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->setListenter(Lcom/samsung/android/hostmanager/br/BackupRestoreListener;)V

    .line 375
    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mAppDataBackupManager:Lcom/samsung/android/hostmanager/br/AppDataBackupManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/hostmanager/br/AppDataBackupManager;->initAppBackup(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public backupWearable(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "appPackage"    # Ljava/lang/String;
    .param p3, "appVersion"    # I

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public cloudBackup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "deviceID"    # Ljava/lang/String;
    .param p4, "appPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    .line 154
    .local v0, "ichostmanager":Lcom/samsung/android/hostmanager/service/ICHostManager;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mIRepository:Lcom/samsung/android/hostmanager/model/IRepository;

    invoke-virtual {v1, p3, p4}, Lcom/samsung/android/hostmanager/model/IRepository;->getIntentFilter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "intent_filter":Ljava/lang/String;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 155
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/hostmanager/service/ICHostManager;->cloudBackup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public cloudRestore(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "deviceID"    # Ljava/lang/String;
    .param p4, "appID"    # Ljava/lang/String;
    .param p5, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v7

    .line 299
    .local v7, "ichost":Lcom/samsung/android/hostmanager/service/ICHostManager;
    move-object v6, p1

    .line 300
    .local v6, "filePAth":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mIRepository:Lcom/samsung/android/hostmanager/model/IRepository;

    invoke-virtual {v1, p3, p4}, Lcom/samsung/android/hostmanager/model/IRepository;->getIntentFilter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "intent_filter":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/BackupInfo;

    const-string v5, ""

    move-object v1, p3

    move-object v2, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hostmanager/aidl/BackupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .local v0, "restoreInfo":Lcom/samsung/android/hostmanager/aidl/BackupInfo;
    invoke-virtual {v0, v3}, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->setIntentFilter(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v7, v0, p3, v6, v3}, Lcom/samsung/android/hostmanager/service/ICHostManager;->restoreWearableAppData(Lcom/samsung/android/hostmanager/aidl/BackupInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public getBackupList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/BackupInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mIRepository:Lcom/samsung/android/hostmanager/model/IRepository;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/model/IRepository;->getBackupList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedDeviceType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 596
    sget-object v2, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v3, "getConnectedDeviceType"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v1, 0x0

    .line 599
    .local v1, "deviceType":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mDeviceId:Ljava/lang/String;

    .line 600
    .local v0, "deviceID":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedDeviceType deviceID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-static {v0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 602
    sget-object v2, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedDeviceType deviceType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mDeviceModelNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 605
    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mDeviceModelNumber:Ljava/lang/String;

    .line 608
    :cond_0
    return-object v1
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mAutoBackupDuration:I

    return v0
.end method

.method public isBackupAvailable()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 195
    sget-object v6, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v7, "isBackupAvailable()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->getConnectedDeviceType()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "ConnectedDeviceModel":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "backup"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "shared_prefs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "WearableInfoForSamsungApps.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "Path":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v2, "PrefMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v4, "file":Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 208
    sget-object v6, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isBackupAvailable: file = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v6, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isBackupAvailable: ConnectedDeviceModel = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 225
    :cond_1
    :goto_0
    return v5

    .line 217
    :cond_2
    :try_start_0
    invoke-direct {p0, v4, v2}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->readBackupPref(Ljava/io/File;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_1
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 223
    const-string v5, "MODELNAME"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .line 218
    :catch_0
    move-exception v3

    .line 219
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onBackupRequest(I)V
    .locals 1
    .param p1, "systemBackupType"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreManager:Lcom/samsung/android/hostmanager/br/RestoreManager;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreManager:Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/br/RestoreManager;->onForceStop()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreInstall:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreInstall:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->onForceStop()V

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mBackupManager:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/br/BackupManager;->startBackupTask(I)V

    .line 365
    return-void
.end method

.method public onProgressCancel(I)V
    .locals 0
    .param p1, "where"    # I

    .prologue
    .line 559
    return-void
.end method

.method public onProgressComplete(ILjava/util/ArrayList;)V
    .locals 11
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
    .local p2, "deletePackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x2

    .line 471
    const/4 v8, 0x3

    if-ne p1, v8, :cond_2

    .line 472
    sget-object v8, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v9, "onProgressComplete BNR_FROM_RESTORE_SETTING"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreInstall:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    if-nez v8, :cond_0

    .line 475
    new-instance v8, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, p0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;-><init>(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)V

    iput-object v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreInstall:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    .line 477
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreInstall:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-virtual {v8, p0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->setListener(Lcom/samsung/android/hostmanager/br/BackupRestoreListener;)V

    .line 478
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreInstall:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mHMSetupHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->setHandler(Landroid/os/Handler;)V

    .line 479
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreInstall:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->RestoreStart()V

    .line 547
    :cond_1
    :goto_0
    return-void

    .line 481
    :cond_2
    if-ne p1, v9, :cond_9

    .line 482
    sget-object v8, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v9, "onProgressComplete BNR_FROM_RESTORE_INSTALL"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreInstall:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    if-eqz v8, :cond_3

    .line 485
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreInstall:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->onForceStop()V

    .line 488
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    if-eqz v8, :cond_5

    .line 489
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreManager:Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/br/RestoreManager;->getIdleClock()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->setIdleClock(Ljava/lang/String;)V

    .line 490
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-virtual {v8, p0}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->setListenter(Lcom/samsung/android/hostmanager/br/BackupRestoreListener;)V

    .line 491
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mHMSetupHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->setHandler(Landroid/os/Handler;)V

    .line 492
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mAppDataRestoreManager:Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/br/AppDataRestoreManager;->startRestoreTask()V

    .line 496
    :goto_1
    if-eqz p2, :cond_8

    .line 497
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 498
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 499
    .local v7, "sb":Ljava/lang/StringBuffer;
    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 501
    .local v0, "deletePackage_count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_6

    .line 502
    if-eqz v2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v2, v8, :cond_4

    .line 503
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 504
    :cond_4
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 494
    .end local v0    # "deletePackage_count":I
    .end local v2    # "i":I
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    :cond_5
    sget-object v8, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v9, "onProgressComplete:mAppDataRestoreManager is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 507
    .restart local v0    # "deletePackage_count":I
    .restart local v2    # "i":I
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    sget-object v8, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "strPackage"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .end local v0    # "deletePackage_count":I
    .end local v2    # "i":I
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    :goto_3
    sget-object v8, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v9, "Updating clock and app names to the current locale"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.watchmanager.action.LANGUAGE_CHANGING"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 519
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v3

    .line 520
    .local v3, "ichostManager":Lcom/samsung/android/hostmanager/service/ICHostManager;
    iget-object v5, v3, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .line 521
    .local v5, "mHMProviderService":Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->onlySendLocale(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 509
    .end local v3    # "ichostManager":Lcom/samsung/android/hostmanager/service/ICHostManager;
    .end local v5    # "mHMProviderService":Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    :cond_7
    sget-object v8, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onProgressComplete deletePackage.size() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 513
    :cond_8
    sget-object v8, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v9, "onProgressComplete deletePackage = null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 524
    :cond_9
    const/4 v8, 0x5

    if-ne p1, v8, :cond_a

    .line 525
    invoke-virtual {p0, v9}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->onBackupRequest(I)V

    goto/16 :goto_0

    .line 526
    :cond_a
    const/4 v8, 0x4

    if-ne p1, v8, :cond_1

    .line 527
    sget-object v8, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v9, "onProgressComplete BNR_FROM_RESET"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mResetManager:Lcom/samsung/android/hostmanager/br/ResetManager;

    .line 529
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.samsung.android.hostmanager.SYSTEM_RESET_COMPLETE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 530
    .local v4, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 533
    const/4 v6, 0x0

    .line 535
    .local v6, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 540
    :goto_4
    if-eqz v6, :cond_b

    .line 541
    const/4 v8, 0x1

    invoke-interface {v6, v8}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->addEntriesInInstalledWgtOnly(Z)V

    goto/16 :goto_0

    .line 536
    :catch_0
    move-exception v1

    .line 537
    .local v1, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_4

    .line 543
    .end local v1    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    :cond_b
    sget-object v8, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v9, "PackageManager instance is null."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onProgressError(II)V
    .locals 0
    .param p1, "where"    # I
    .param p2, "error"    # I

    .prologue
    .line 555
    return-void
.end method

.method public onProgressRetry(I)V
    .locals 0
    .param p1, "where"    # I

    .prologue
    .line 551
    return-void
.end method

.method public onReadyRestore(I)V
    .locals 13
    .param p1, "mode"    # I

    .prologue
    const/16 v12, 0xf

    const/4 v11, 0x5

    const/16 v10, 0xa

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 387
    sget-object v5, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v6, "onReadyRestore delete install_done Preferences value"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-static {v5, p0}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getIntCardPathForLocalBR(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, "rootofDest":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, "backUpDevInfo":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 392
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreManager:Lcom/samsung/android/hostmanager/br/RestoreManager;

    if-eqz v5, :cond_0

    .line 393
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreManager:Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/br/RestoreManager;->onForceStop()V

    .line 394
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreInstall:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    if-eqz v5, :cond_1

    .line 395
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreInstall:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->onForceStop()V

    .line 396
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-static {v6, p0}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForPrefTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "InfoForBackUp.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v1, "infoForBackUp":Ljava/io/File;
    sget-object v5, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " infoForBackUp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-static {v7, p0}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForPrefTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "InfoForBackUp.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 400
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForSharePref(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "InfoForBackUp.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    .local v2, "infoForRestore":Ljava/io/File;
    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->copyFileToDestination(Ljava/io/File;Ljava/io/File;)V

    .line 404
    .end local v2    # "infoForRestore":Ljava/io/File;
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreManager:Lcom/samsung/android/hostmanager/br/RestoreManager;

    if-eqz v5, :cond_9

    .line 405
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreManager:Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-virtual {v5, p0}, Lcom/samsung/android/hostmanager/br/RestoreManager;->setListenter(Lcom/samsung/android/hostmanager/br/BackupRestoreListener;)V

    .line 406
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreManager:Lcom/samsung/android/hostmanager/br/RestoreManager;

    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mHMSetupHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Lcom/samsung/android/hostmanager/br/RestoreManager;->setHandler(Landroid/os/Handler;)V

    .line 407
    iput v9, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->totalFiles:I

    .line 409
    const/4 v5, 0x1

    iput v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->filesExecuted:I

    .line 410
    iput-boolean v9, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->isAppExecuted:Z

    .line 411
    iput v9, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->settingFiles:I

    .line 412
    iput v9, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appFiles:I

    .line 413
    iput v9, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appDataFiles:I

    .line 414
    iput v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->percentage:F

    .line 415
    iput v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->remainingFilesCount:F

    .line 416
    iput v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appPercentageFactor:F

    .line 417
    iput v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appPercentage:F

    .line 418
    iput v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->remainingPercentage:F

    .line 419
    iput v8, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->remainingValue:F

    .line 421
    iput v9, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->filesExecuted:I

    .line 422
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreInstall:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    if-eqz v5, :cond_3

    .line 423
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreManager:Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/br/RestoreManager;->totalSettingsFile()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->settingFiles:I

    .line 424
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreManager:Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-virtual {v5, p1}, Lcom/samsung/android/hostmanager/br/RestoreManager;->totalAppFile(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appFiles:I

    .line 425
    iput v10, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appDataFiles:I

    .line 427
    iget v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->settingFiles:I

    iget v6, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appFiles:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appDataFiles:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->totalFiles:I

    .line 429
    iget v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appFiles:I

    if-gt v5, v11, :cond_4

    .line 430
    const/high16 v5, 0x41700000    # 15.0f

    iput v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appPercentageFactor:F

    .line 440
    :goto_0
    iget v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->settingFiles:I

    iget v6, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appDataFiles:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->remainingFilesCount:F

    .line 441
    iget v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appFiles:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appPercentageFactor:F

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appPercentage:F

    .line 442
    const/high16 v5, 0x42c80000    # 100.0f

    iget v6, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appPercentage:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->remainingPercentage:F

    .line 443
    iget v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->remainingPercentage:F

    iget v6, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->remainingFilesCount:F

    div-float/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->remainingValue:F

    .line 445
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreManager:Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-virtual {v5, p1}, Lcom/samsung/android/hostmanager/br/RestoreManager;->startRestoreTask(I)V

    .line 446
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreInstall:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    if-eqz v5, :cond_8

    .line 447
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreInstall:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-virtual {v5, p1}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->setRestoreMode(I)V

    .line 455
    :goto_1
    sget-object v5, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restore ACTION_WATCH_RESTORE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.watchmanager.action.RESTORE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "deviceId"

    iget-object v6, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 459
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 466
    .end local v1    # "infoForBackUp":Ljava/io/File;
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 431
    .restart local v1    # "infoForBackUp":Ljava/io/File;
    :cond_4
    iget v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appFiles:I

    if-le v5, v11, :cond_5

    iget v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appFiles:I

    if-gt v5, v10, :cond_5

    .line 432
    const/high16 v5, 0x41200000    # 10.0f

    iput v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appPercentageFactor:F

    goto :goto_0

    .line 433
    :cond_5
    iget v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appFiles:I

    if-le v5, v10, :cond_6

    iget v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appFiles:I

    if-gt v5, v12, :cond_6

    .line 434
    const/high16 v5, 0x40a00000    # 5.0f

    iput v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appPercentageFactor:F

    goto :goto_0

    .line 435
    :cond_6
    iget v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appFiles:I

    if-le v5, v12, :cond_7

    iget v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appFiles:I

    const/16 v6, 0x19

    if-gt v5, v6, :cond_7

    .line 436
    const/high16 v5, 0x40000000    # 2.0f

    iput v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appPercentageFactor:F

    goto/16 :goto_0

    .line 438
    :cond_7
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appPercentageFactor:F

    goto/16 :goto_0

    .line 449
    :cond_8
    sget-object v5, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v6, "mRestoreInstall is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 452
    :cond_9
    sget-object v5, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mRestoreManager is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreManager:Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 462
    .end local v1    # "infoForBackUp":Ljava/io/File;
    :cond_a
    sget-object v5, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v6, "Folder Missing Check"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v5, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.android.hostmanager.SYSTEM_RESTORE_FAILED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public onSystemBackupRequest(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mBackupManager:Lcom/samsung/android/hostmanager/br/BackupManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/br/BackupManager;->startBackupTask(I)V

    .line 369
    return-void
.end method

.method public onUpdate(Ljava/lang/String;I)V
    .locals 5
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 618
    sget-object v2, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inside onProgressUpdate - BKupRestoreManager des: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " progress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mHMSetupHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 620
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mHMSetupHandler:Landroid/os/Handler;

    const/16 v3, 0x1774

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 621
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 622
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "desc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget v2, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->filesExecuted:I

    iget v3, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->settingFiles:I

    if-ge v2, v3, :cond_1

    .line 624
    iget v2, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->percentage:F

    iget v3, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->remainingValue:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->percentage:F

    .line 625
    const-string v2, "progress"

    iget v3, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->percentage:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 640
    :goto_0
    iget v2, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->filesExecuted:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->filesExecuted:I

    .line 641
    sget-object v2, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inside onProgressUpdate - percentage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->percentage:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " filesExecuted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->filesExecuted:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Total:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->totalFiles:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 643
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 647
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    return-void

    .line 628
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v1    # "message":Landroid/os/Message;
    :cond_1
    iget v2, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->filesExecuted:I

    iget v3, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->settingFiles:I

    iget v4, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appFiles:I

    add-int/2addr v3, v4

    if-ne v2, v3, :cond_2

    .line 629
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->isAppExecuted:Z

    .line 632
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->isAppExecuted:Z

    if-eqz v2, :cond_3

    .line 633
    iget v2, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->percentage:F

    iget v3, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->remainingValue:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->percentage:F

    .line 637
    :goto_1
    const-string v2, "progress"

    iget v3, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->percentage:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 635
    :cond_3
    iget v2, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->percentage:F

    iget v3, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->appPercentageFactor:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->percentage:F

    goto :goto_1
.end method

.method public readBackupTimePref()V
    .locals 13

    .prologue
    .line 159
    sget-object v9, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v10, "readBackupTimePref()"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-static {v10, p0}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForPrefTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "hm_shared_preference.xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "Path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 162
    .local v3, "backuptime":Ljava/lang/String;
    const/4 v8, 0x0

    .line 163
    .local v8, "restoretime":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v2, "PrefMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 167
    :try_start_0
    invoke-direct {p0, v6, v2}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->readBackupPref(Ljava/io/File;Ljava/util/Map;)V

    .line 169
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 170
    const-string v9, "last_backup_time"

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 171
    const-string v9, "last_restore_time"

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 180
    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mDeviceId:Ljava/lang/String;

    const-string v11, "last_backup_time"

    invoke-static {v9, v10, v11, v3}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->updatePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mDeviceId:Ljava/lang/String;

    const-string v11, "backup_was_done"

    const-string v12, "true"

    invoke-static {v9, v10, v11, v12}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->updatePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mContext:Landroid/content/Context;

    const-string v10, "backuprestoreBackup_time"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 184
    .local v7, "prefBackupTime":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 185
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->getConnectedDeviceType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_backup_time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "prefBackupTime":Landroid/content/SharedPreferences;
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 190
    iget-object v9, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mDeviceId:Ljava/lang/String;

    const-string v11, "last_restore_time"

    invoke-static {v9, v10, v11, v8}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->updatePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_2
    return-void

    .line 174
    :catch_0
    move-exception v4

    .line 175
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeBackupData(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/BackupInfo;)Z
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "restoreInfo"    # Lcom/samsung/android/hostmanager/aidl/BackupInfo;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mIRepository:Lcom/samsung/android/hostmanager/model/IRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/model/IRepository;->removeBackupData(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/BackupInfo;)Z

    .line 321
    const/4 v0, 0x1

    return v0
.end method

.method public requestBackupAgentInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/ICHostManager;->requestBackupAgentInfo(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public requestBackupAgentInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "packagename"    # Ljava/lang/String;

    .prologue
    .line 355
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/service/ICHostManager;->requestBackupAgentInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public requestDBQuery(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "queryType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/HistoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mIRepository:Lcom/samsung/android/hostmanager/model/IRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/model/IRepository;->requestDBQuery(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public restoreWearable(Lcom/samsung/android/hostmanager/aidl/BackupInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "restoreInfo"    # Lcom/samsung/android/hostmanager/aidl/BackupInfo;
    .param p2, "deviceID"    # Ljava/lang/String;
    .param p3, "appID"    # Ljava/lang/String;
    .param p4, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v1

    .line 277
    .local v1, "ichost":Lcom/samsung/android/hostmanager/service/ICHostManager;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mIRepository:Lcom/samsung/android/hostmanager/model/IRepository;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lcom/samsung/android/hostmanager/model/IRepository;->restoreAppData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "filePAth":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mIRepository:Lcom/samsung/android/hostmanager/model/IRepository;

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lcom/samsung/android/hostmanager/model/IRepository;->getIntentFilter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "intent_filter":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 282
    :cond_0
    const/4 v3, 0x0

    .line 288
    :goto_0
    return v3

    .line 285
    :cond_1
    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/samsung/android/hostmanager/service/ICHostManager;->restoreWearableAppData(Lcom/samsung/android/hostmanager/aidl/BackupInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public restoreWearableAllApps(Lcom/samsung/android/hostmanager/aidl/BackupInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "restoreInfo"    # Lcom/samsung/android/hostmanager/aidl/BackupInfo;
    .param p2, "deviceID"    # Ljava/lang/String;
    .param p3, "appID"    # Ljava/lang/String;
    .param p4, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method public setDeviceModelNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mDeviceModelNumber:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mAutoBackupDuration:I

    .line 90
    return-void
.end method

.method public setListener(Landroid/os/Handler;)V
    .locals 0
    .param p1, "hmsetuphandler"    # Landroid/os/Handler;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mHMSetupHandler:Landroid/os/Handler;

    .line 563
    return-void
.end method

.method public setWearableAppData()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public setWearableBackupAppList(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 335
    return-void
.end method

.method public startReset()V
    .locals 2

    .prologue
    .line 579
    sget-object v0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "startReset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v0, Lcom/samsung/android/hostmanager/br/ResetManager;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/hostmanager/br/ResetManager;-><init>(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mResetManager:Lcom/samsung/android/hostmanager/br/ResetManager;

    .line 581
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mResetManager:Lcom/samsung/android/hostmanager/br/ResetManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/hostmanager/br/ResetManager;->setListener(Lcom/samsung/android/hostmanager/br/BackupRestoreListener;)V

    .line 592
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mResetManager:Lcom/samsung/android/hostmanager/br/ResetManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/br/ResetManager;->ResetStart()V

    .line 593
    return-void
.end method

.method public stopRestore()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 566
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreManager:Lcom/samsung/android/hostmanager/br/RestoreManager;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreManager:Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreManager;->setHandler(Landroid/os/Handler;)V

    .line 568
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreManager:Lcom/samsung/android/hostmanager/br/RestoreManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/br/RestoreManager;->onForceStop()V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreInstall:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreInstall:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->setHandler(Landroid/os/Handler;)V

    .line 573
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mRestoreInstall:Lcom/samsung/android/hostmanager/br/RestoreInstallManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/br/RestoreInstallManager;->onForceStop()V

    .line 576
    :cond_1
    return-void
.end method

.method public validateAppInfo(Lcom/samsung/android/hostmanager/aidl/DeviceInfo;)V
    .locals 0
    .param p1, "status"    # Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    .prologue
    .line 309
    return-void
.end method

.method public validateMacAddress(Ljava/lang/String;)Z
    .locals 1
    .param p1, "macId"    # Ljava/lang/String;

    .prologue
    .line 612
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/BackupRestoreManager;->mIRepository:Lcom/samsung/android/hostmanager/model/IRepository;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/model/IRepository;->validateMacAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
