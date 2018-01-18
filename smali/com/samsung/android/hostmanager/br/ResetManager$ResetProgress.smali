.class Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;
.super Landroid/os/AsyncTask;
.source "ResetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/br/ResetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetProgress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field isCancel:Z

.field private removeAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/hostmanager/br/ResetManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hostmanager/br/ResetManager;)V
    .locals 1

    .prologue
    .line 164
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->isCancel:Z

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->removeAppList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hostmanager/br/ResetManager;Lcom/samsung/android/hostmanager/br/ResetManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/hostmanager/br/ResetManager;
    .param p2, "x1"    # Lcom/samsung/android/hostmanager/br/ResetManager$1;

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;-><init>(Lcom/samsung/android/hostmanager/br/ResetManager;)V

    return-void
.end method

.method private addClockListToRemove()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 374
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v24

    const-string v25, "addClockListToRemove start"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getGearModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 386
    .local v16, "modelName":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$300(Lcom/samsung/android/hostmanager/br/ResetManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "clocklist.xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "clockFile":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 390
    const/4 v5, 0x0

    .line 393
    .local v5, "clocklistfis":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .end local v5    # "clocklistfis":Ljava/io/InputStream;
    .local v6, "clocklistfis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    .line 399
    .local v9, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v8

    .line 400
    .local v8, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v8, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 401
    .local v7, "doc":Lorg/w3c/dom/Document;
    const-string v24, "item"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 402
    .local v17, "nodelist":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    .line 403
    .local v18, "nodelist_count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "installed_clock_app"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    .line 404
    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 407
    .local v22, "prefsInstalledClock":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v24

    const-string v25, "pref_log addClockListToRemove() check pref installed_clock_app"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "clock list count "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v14, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$300(Lcom/samsung/android/hostmanager/br/ResetManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForPrefTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "installed_clock_app.xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    .local v14, "installedClockFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 414
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 415
    .local v15, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    .line 417
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->parseXML(Ljava/io/File;Ljava/util/Map;)V

    .line 418
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    const-string v25, ".xml"

    const-string v26, ""

    .line 419
    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    .line 418
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->saveSharedPreference(Ljava/lang/String;Ljava/util/Map;)V

    .line 423
    .end local v15    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v13, v0, :cond_2

    .line 424
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 425
    .local v4, "clockinfo":Lorg/w3c/dom/Element;
    const-string v24, "PackageName"

    .line 426
    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 427
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v20

    .line 428
    .local v20, "packageName":Ljava/lang/String;
    const-string v24, "PreLoad"

    .line 429
    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 430
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v21

    .line 431
    .local v21, "preLoad":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "clock package "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v24, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 435
    const-string v19, ""

    .line 440
    .local v19, "packageAdd":Ljava/lang/String;
    const-string v24, "empty"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->removeAppList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v24

    const-string v25, "package added to remove list"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .end local v19    # "packageAdd":Ljava/lang/String;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 485
    .end local v4    # "clockinfo":Lorg/w3c/dom/Element;
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v21    # "preLoad":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "installed_clock_app"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    .line 486
    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 490
    .local v23, "prefsInstalledClockApp":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 491
    .local v11, "editorprefsInstalledClock":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 492
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 500
    if-eqz v6, :cond_3

    .line 501
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 502
    const/4 v5, 0x0

    .line 506
    .end local v6    # "clocklistfis":Ljava/io/InputStream;
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v9    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11    # "editorprefsInstalledClock":Landroid/content/SharedPreferences$Editor;
    .end local v13    # "i":I
    .end local v14    # "installedClockFile":Ljava/io/File;
    .end local v17    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v18    # "nodelist_count":I
    .end local v22    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    .end local v23    # "prefsInstalledClockApp":Landroid/content/SharedPreferences;
    :cond_3
    :goto_1
    return-void

    .line 497
    .restart local v5    # "clocklistfis":Ljava/io/InputStream;
    :catch_0
    move-exception v10

    .line 498
    .local v10, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "addClockListToRemove Exception e = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 500
    if-eqz v5, :cond_3

    .line 501
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 502
    const/4 v5, 0x0

    goto :goto_1

    .line 500
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v24

    :goto_3
    if-eqz v5, :cond_4

    .line 501
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 502
    const/4 v5, 0x0

    :cond_4
    throw v24

    .line 500
    .end local v5    # "clocklistfis":Ljava/io/InputStream;
    .restart local v6    # "clocklistfis":Ljava/io/InputStream;
    :catchall_1
    move-exception v24

    move-object v5, v6

    .end local v6    # "clocklistfis":Ljava/io/InputStream;
    .restart local v5    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_3

    .line 497
    .end local v5    # "clocklistfis":Ljava/io/InputStream;
    .restart local v6    # "clocklistfis":Ljava/io/InputStream;
    :catch_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "clocklistfis":Ljava/io/InputStream;
    .restart local v5    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private addWappListToRemove()V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 509
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v28

    const-string v29, "addWappListToRemove start"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/16 v22, 0x0

    .line 515
    .local v22, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$300(Lcom/samsung/android/hostmanager/br/ResetManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 520
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getGearModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 521
    .local v17, "modelName":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$300(Lcom/samsung/android/hostmanager/br/ResetManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForDeviceTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "wapplist.xml"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 522
    .local v26, "wappFile":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 525
    const/4 v4, 0x0

    .line 528
    .local v4, "clocklistfis":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v28, Ljava/io/FileInputStream;

    move-object/from16 v0, v28

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v28

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 532
    .end local v4    # "clocklistfis":Ljava/io/InputStream;
    .local v5, "clocklistfis":Ljava/io/InputStream;
    :try_start_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 534
    .local v8, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 535
    .local v7, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v7, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 536
    .local v6, "doc":Lorg/w3c/dom/Document;
    const-string v28, "item"

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 537
    .local v18, "nodelist":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    .line 538
    .local v19, "nodelist_count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v30, v0

    .line 539
    invoke-static/range {v30 .. v30}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "installed_wapp_app"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 542
    .local v24, "prefsInstalledApp":Landroid/content/SharedPreferences;
    new-instance v14, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$300(Lcom/samsung/android/hostmanager/br/ResetManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForPrefTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "_"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "installed_wapp_app.xml"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    .local v14, "installedWappFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 548
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 549
    .local v16, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->clear()V

    .line 551
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->parseXML(Ljava/io/File;Ljava/util/Map;)V

    .line 552
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v28

    const-string v29, ".xml"

    const-string v30, ""

    .line 553
    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    .line 552
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->saveSharedPreference(Ljava/lang/String;Ljava/util/Map;)V

    .line 563
    .end local v16    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v28

    const-string v29, "pref_log addWappListToRemove() check pref installed_wapp_app"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "wapp list count "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v13, v0, :cond_6

    .line 567
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v27

    check-cast v27, Lorg/w3c/dom/Element;

    .line 568
    .local v27, "wappinfo":Lorg/w3c/dom/Element;
    const-string v28, "PackageName"

    .line 569
    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    .line 570
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v21

    .line 571
    .local v21, "packageName":Ljava/lang/String;
    const-string v28, "PreLoad"

    .line 572
    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    .line 573
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v23

    .line 574
    .local v23, "preLoad":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "wapp package "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string v28, "true"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_1

    .line 578
    const-string v20, ""

    .line 583
    .local v20, "packageAdd":Ljava/lang/String;
    const-string v28, "empty"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->removeAppList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v28

    const-string v29, "package added to remove list"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 566
    .end local v20    # "packageAdd":Ljava/lang/String;
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 517
    .end local v5    # "clocklistfis":Ljava/io/InputStream;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11    # "file":Ljava/io/File;
    .end local v13    # "i":I
    .end local v14    # "installedWappFile":Ljava/io/File;
    .end local v17    # "modelName":Ljava/lang/String;
    .end local v18    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v19    # "nodelist_count":I
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v23    # "preLoad":Ljava/lang/String;
    .end local v24    # "prefsInstalledApp":Landroid/content/SharedPreferences;
    .end local v26    # "wappFile":Ljava/lang/String;
    .end local v27    # "wappinfo":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v9

    .line 518
    .local v9, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v9}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto/16 :goto_0

    .line 606
    .end local v9    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    .restart local v5    # "clocklistfis":Ljava/io/InputStream;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v7    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v13    # "i":I
    .restart local v14    # "installedWappFile":Ljava/io/File;
    .restart local v17    # "modelName":Ljava/lang/String;
    .restart local v18    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v19    # "nodelist_count":I
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v23    # "preLoad":Ljava/lang/String;
    .restart local v24    # "prefsInstalledApp":Landroid/content/SharedPreferences;
    .restart local v26    # "wappFile":Ljava/lang/String;
    .restart local v27    # "wappinfo":Lorg/w3c/dom/Element;
    :cond_1
    move-object/from16 v3, v21

    .line 607
    .local v3, "bPackageName":Ljava/lang/String;
    :try_start_3
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "addWappListToRemove check for preloaded updated case!!! bPackageName = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string v28, "empty"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 610
    .local v12, "hPackageName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 611
    .local v15, "isWappwgtappinstalled":Z
    if-nez v22, :cond_3

    .line 612
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v28

    const-string v29, "addWappListToRemove Restore WApp getPreloadState() != true pm object is null"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :goto_3
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "addWappListToRemove hPackageName = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", isWappwgtappinstalled = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string v28, "empty"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v0, v12}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isInstalledApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 620
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "addWappListToRemove wapp:reInstallCount bPackageName = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " is preloaded but updated"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->removeAppList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 640
    .end local v3    # "bPackageName":Ljava/lang/String;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12    # "hPackageName":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "installedWappFile":Ljava/io/File;
    .end local v15    # "isWappwgtappinstalled":Z
    .end local v18    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v19    # "nodelist_count":I
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v23    # "preLoad":Ljava/lang/String;
    .end local v24    # "prefsInstalledApp":Landroid/content/SharedPreferences;
    .end local v27    # "wappinfo":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v9

    move-object v4, v5

    .line 641
    .end local v5    # "clocklistfis":Ljava/io/InputStream;
    .restart local v4    # "clocklistfis":Ljava/io/InputStream;
    .local v9, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "addWappListToRemove Exception e = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 643
    if-eqz v4, :cond_2

    .line 644
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 645
    const/4 v4, 0x0

    .line 649
    .end local v4    # "clocklistfis":Ljava/io/InputStream;
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_5
    return-void

    .line 614
    .restart local v3    # "bPackageName":Ljava/lang/String;
    .restart local v5    # "clocklistfis":Ljava/io/InputStream;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v7    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v12    # "hPackageName":Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v14    # "installedWappFile":Ljava/io/File;
    .restart local v15    # "isWappwgtappinstalled":Z
    .restart local v18    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v19    # "nodelist_count":I
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v23    # "preLoad":Ljava/lang/String;
    .restart local v24    # "prefsInstalledApp":Landroid/content/SharedPreferences;
    .restart local v27    # "wappinfo":Lorg/w3c/dom/Element;
    :cond_3
    :try_start_5
    move-object/from16 v0, v22

    invoke-interface {v0, v12, v3}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->isEligibleForRestore(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    goto/16 :goto_3

    .line 623
    :cond_4
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "addWappListToRemove wapp:reInstallCount bPackageName = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " is preloaded but not updated"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 643
    .end local v3    # "bPackageName":Ljava/lang/String;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12    # "hPackageName":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "installedWappFile":Ljava/io/File;
    .end local v15    # "isWappwgtappinstalled":Z
    .end local v18    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v19    # "nodelist_count":I
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v23    # "preLoad":Ljava/lang/String;
    .end local v24    # "prefsInstalledApp":Landroid/content/SharedPreferences;
    .end local v27    # "wappinfo":Lorg/w3c/dom/Element;
    :catchall_0
    move-exception v28

    move-object v4, v5

    .end local v5    # "clocklistfis":Ljava/io/InputStream;
    .restart local v4    # "clocklistfis":Ljava/io/InputStream;
    :goto_6
    if-eqz v4, :cond_5

    .line 644
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 645
    const/4 v4, 0x0

    :cond_5
    throw v28

    .line 627
    .end local v4    # "clocklistfis":Ljava/io/InputStream;
    .restart local v5    # "clocklistfis":Ljava/io/InputStream;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v7    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v13    # "i":I
    .restart local v14    # "installedWappFile":Ljava/io/File;
    .restart local v18    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v19    # "nodelist_count":I
    .restart local v24    # "prefsInstalledApp":Landroid/content/SharedPreferences;
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "installed_wapp_app"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    .line 628
    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 632
    .local v25, "prefsInstalledWappApp":Landroid/content/SharedPreferences;
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 633
    .local v10, "editorprefsInstalledWapp":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 634
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 643
    if-eqz v5, :cond_2

    .line 644
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 645
    const/4 v4, 0x0

    .end local v5    # "clocklistfis":Ljava/io/InputStream;
    .restart local v4    # "clocklistfis":Ljava/io/InputStream;
    goto :goto_5

    .line 643
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10    # "editorprefsInstalledWapp":Landroid/content/SharedPreferences$Editor;
    .end local v13    # "i":I
    .end local v14    # "installedWappFile":Ljava/io/File;
    .end local v18    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v19    # "nodelist_count":I
    .end local v24    # "prefsInstalledApp":Landroid/content/SharedPreferences;
    .end local v25    # "prefsInstalledWappApp":Landroid/content/SharedPreferences;
    :catchall_1
    move-exception v28

    goto :goto_6

    .line 640
    :catch_2
    move-exception v9

    goto/16 :goto_4
.end method

.method private parseXML(Ljava/io/File;Ljava/util/Map;)V
    .locals 19
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
    .line 695
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 696
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "parseXML: readXML file = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_2

    .line 740
    :cond_1
    :goto_0
    return-void

    .line 702
    :cond_2
    const/4 v8, 0x0

    .line 704
    .local v8, "fis":Ljava/io/InputStream;
    :try_start_0
    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    .end local v8    # "fis":Ljava/io/InputStream;
    .local v9, "fis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 708
    .local v6, "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 709
    .local v5, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v5, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 711
    .local v4, "doc":Lorg/w3c/dom/Document;
    const-string v16, "map"

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 713
    .local v12, "nodelist":Lorg/w3c/dom/NodeList;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 714
    .local v11, "mapElem":Lorg/w3c/dom/Element;
    const-string v16, "string"

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 715
    .local v14, "stringList":Lorg/w3c/dom/NodeList;
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    .line 716
    .local v15, "stringListLength":I
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "parseXML: length "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v15, :cond_4

    .line 718
    invoke-interface {v14, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 720
    .local v3, "clockinfo":Lorg/w3c/dom/Element;
    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 721
    .local v2, "appname":Ljava/lang/String;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 722
    .local v13, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 723
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "parseXML: appname:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", packageName:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_3
    move-object/from16 v0, p2

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 728
    .end local v2    # "appname":Ljava/lang/String;
    .end local v3    # "clockinfo":Lorg/w3c/dom/Element;
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_5

    .line 729
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 736
    :cond_5
    if-eqz v9, :cond_7

    .line 737
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    move-object v8, v9

    .end local v9    # "fis":Ljava/io/InputStream;
    .restart local v8    # "fis":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 731
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10    # "i":I
    .end local v11    # "mapElem":Lorg/w3c/dom/Element;
    .end local v12    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v14    # "stringList":Lorg/w3c/dom/NodeList;
    .end local v15    # "stringListLength":I
    :catch_0
    move-exception v7

    .line 732
    .local v7, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ParserConfigurationException e = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 736
    if-eqz v8, :cond_1

    .line 737
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 733
    .end local v7    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v7

    .line 734
    .local v7, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception e = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 736
    if-eqz v8, :cond_1

    .line 737
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 736
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    :goto_4
    if-eqz v8, :cond_6

    .line 737
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_6
    throw v16

    .line 736
    .end local v8    # "fis":Ljava/io/InputStream;
    .restart local v9    # "fis":Ljava/io/InputStream;
    :catchall_1
    move-exception v16

    move-object v8, v9

    .end local v9    # "fis":Ljava/io/InputStream;
    .restart local v8    # "fis":Ljava/io/InputStream;
    goto :goto_4

    .line 733
    .end local v8    # "fis":Ljava/io/InputStream;
    .restart local v9    # "fis":Ljava/io/InputStream;
    :catch_2
    move-exception v7

    move-object v8, v9

    .end local v9    # "fis":Ljava/io/InputStream;
    .restart local v8    # "fis":Ljava/io/InputStream;
    goto :goto_3

    .line 731
    .end local v8    # "fis":Ljava/io/InputStream;
    .restart local v9    # "fis":Ljava/io/InputStream;
    :catch_3
    move-exception v7

    move-object v8, v9

    .end local v9    # "fis":Ljava/io/InputStream;
    .restart local v8    # "fis":Ljava/io/InputStream;
    goto :goto_2

    .end local v8    # "fis":Ljava/io/InputStream;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "docfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9    # "fis":Ljava/io/InputStream;
    .restart local v10    # "i":I
    .restart local v11    # "mapElem":Lorg/w3c/dom/Element;
    .restart local v12    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v14    # "stringList":Lorg/w3c/dom/NodeList;
    .restart local v15    # "stringListLength":I
    :cond_7
    move-object v8, v9

    .end local v9    # "fis":Ljava/io/InputStream;
    .restart local v8    # "fis":Ljava/io/InputStream;
    goto/16 :goto_0
.end method

.method private saveSharedPreference(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "prefName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 681
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 682
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveSharedPreference: prefName file = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 685
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 687
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 688
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 690
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 691
    return-void
.end method

.method private uninstallByPackageName(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 653
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/pm/PackageInstallerFactory;->get(Landroid/content/Context;)Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;

    move-result-object v1

    .line 654
    .local v1, "installer":Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;
    new-instance v2, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress$2;-><init>(Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;->SetOnStatusReturned(Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;)V

    .line 669
    invoke-interface {v1, p1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;->uninstallPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 677
    .end local v1    # "installer":Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;
    :goto_0
    return-void

    .line 670
    :catch_0
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 672
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 673
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 674
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 675
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "arg"    # [Ljava/lang/String;

    .prologue
    .line 194
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v16

    const-string v17, "step 1. send reset message"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->removeAppList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 217
    .local v2, "appSize":I
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "step 2. remove apps "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/pm/PackageInstallerFactory;->get(Landroid/content/Context;)Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;

    move-result-object v8

    .line 219
    .local v8, "mPackageController":Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;
    new-instance v16, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress$1;-><init>(Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;)V

    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;->SetOnStatusReturned(Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;)V

    .line 235
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_0

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->removeAppList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->uninstallByPackageName(Ljava/lang/String;)V

    .line 235
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v16

    const-string v17, "step 3. delete backup folder"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$300(Lcom/samsung/android/hostmanager/br/ResetManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/hostmanager/br/BackupRestoreUtils;->getInternalPathForPrefTypeBackup(Landroid/content/Context;Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;)Ljava/lang/String;

    move-result-object v11

    .line 243
    .local v11, "pmPath":Ljava/lang/String;
    const/4 v10, 0x0

    .line 245
    .local v10, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$300(Lcom/samsung/android/hostmanager/br/ResetManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v10

    .line 248
    if-eqz v10, :cond_1

    .line 249
    invoke-interface {v10, v11}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->deletePMBackup(Ljava/lang/String;)V

    .line 255
    :goto_1
    const-wide/16 v16, 0x64

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$400(Lcom/samsung/android/hostmanager/br/ResetManager;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$500(Lcom/samsung/android/hostmanager/br/ResetManager;Ljava/lang/String;Z)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v16

    const-string v17, "backuprestoreBackup_time"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 259
    .local v12, "prefRemoveBackupEntry":Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 260
    .local v3, "backupEditor":Landroid/content/SharedPreferences$Editor;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$300(Lcom/samsung/android/hostmanager/br/ResetManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->getConnectedDeviceType()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_backup_time"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 261
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v16

    const-string v17, "backuprestoreRestore_time"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 263
    .local v13, "prefRemoveRestoreEntry":Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 264
    .local v15, "restoreEditor":Landroid/content/SharedPreferences$Editor;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$300(Lcom/samsung/android/hostmanager/br/ResetManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->getConnectedDeviceType()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_restore_time"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 265
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$300(Lcom/samsung/android/hostmanager/br/ResetManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "backup_was_done"

    const-string v19, "false"

    invoke-static/range {v16 .. v19}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->updatePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$300(Lcom/samsung/android/hostmanager/br/ResetManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->mDeviceId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->reset(Landroid/content/Context;)V

    .line 278
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v16

    const-string v17, "delete more images"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/files/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v17, v0

    .line 280
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$300(Lcom/samsung/android/hostmanager/br/ResetManager;)Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/hostmanager/manager/IBackupRestoreManager;->getConnectedDeviceType()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/Wallpaper/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, "filePath":Ljava/lang/String;
    const-string v16, ".jpg"

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lcom/samsung/android/hostmanager/utils/FileUtils;->deleteFileExtensionInFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v16

    const-string v17, "step 4. complete"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->removeAppList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    .end local v2    # "appSize":I
    .end local v3    # "backupEditor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "mPackageController":Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;
    .end local v10    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    .end local v11    # "pmPath":Ljava/lang/String;
    .end local v12    # "prefRemoveBackupEntry":Landroid/content/SharedPreferences;
    .end local v13    # "prefRemoveRestoreEntry":Landroid/content/SharedPreferences;
    .end local v15    # "restoreEditor":Landroid/content/SharedPreferences$Editor;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getGearModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 293
    .local v9, "modelName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$200(Lcom/samsung/android/hostmanager/br/ResetManager;)Landroid/content/Context;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "installed_wgt_only_app"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 294
    .local v14, "prefswgtonly":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 295
    .local v5, "editorprefsInstalledwgt":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 296
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 301
    const/16 v16, 0x0

    return-object v16

    .line 252
    .end local v5    # "editorprefsInstalledwgt":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "modelName":Ljava/lang/String;
    .end local v14    # "prefswgtonly":Landroid/content/SharedPreferences;
    .restart local v2    # "appSize":I
    .restart local v7    # "i":I
    .restart local v8    # "mPackageController":Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;
    .restart local v10    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    .restart local v11    # "pmPath":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v16

    const-string v17, "PM is null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 286
    .end local v2    # "appSize":I
    .end local v7    # "i":I
    .end local v8    # "mPackageController":Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;
    .end local v10    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    .end local v11    # "pmPath":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 287
    .local v4, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 288
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v4

    .line 289
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->isCancel:Z

    .line 310
    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 311
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 164
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "file_url"    # Ljava/lang/String;

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->isCancel:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 321
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->this$0:Lcom/samsung/android/hostmanager/br/ResetManager;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/br/ResetManager;->onProgressComplete(ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 178
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->addClockListToRemove()V

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->addWappListToRemove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 188
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/hostmanager/br/ResetManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResetProgress onPreExecute Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 164
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/br/ResetManager$ResetProgress;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/String;

    .prologue
    .line 325
    return-void
.end method
