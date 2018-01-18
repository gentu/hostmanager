.class public Lcom/samsung/android/hostmanager/callforward/CallForwardParser;
.super Ljava/lang/Object;
.source "CallForwardParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/callforward/CallForwardParser$DownloadFilesTask;,
        Lcom/samsung/android/hostmanager/callforward/CallForwardParser$ReadValues;
    }
.end annotation


# static fields
.field private static final BUFFER:I = 0x400

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/samsung/android/hostmanager/callforward/CallForwardParser;


# instance fields
.field private mReadValues:Lcom/samsung/android/hostmanager/callforward/CallForwardParser$ReadValues;

.field setupSim1:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

.field setupSim2:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->mReadValues:Lcom/samsung/android/hostmanager/callforward/CallForwardParser$ReadValues;

    .line 52
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private copyFileFromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "srcFileName"    # Ljava/lang/String;
    .param p3, "destinationFileName"    # Ljava/lang/String;

    .prologue
    .line 396
    if-eqz p1, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 397
    :cond_0
    sget-object v14, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v15, "gw:: copyFileFromAsset :: context is null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_1
    :goto_0
    return-void

    .line 402
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/data/data/com.samsung.android.hostmanager/files/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 403
    .local v7, "filename":Ljava/lang/String;
    sget-object v14, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "gw:: copyFileFromAsset filename = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 405
    .local v12, "manager":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    .line 408
    .local v11, "mApkResources":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 413
    :goto_1
    if-eqz v11, :cond_1

    .line 414
    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 418
    .local v2, "assetManager":Landroid/content/res/AssetManager;
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 420
    .local v1, "ais":Landroid/content/res/AssetManager$AssetInputStream;
    const/4 v8, 0x0

    .line 422
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 425
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    const/16 v13, 0x400

    .line 426
    .local v13, "sizeBuffer":I
    :try_start_3
    new-array v3, v13, [B

    .line 428
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

    .line 429
    if-nez v10, :cond_5

    .line 436
    :cond_3
    if-eqz v9, :cond_4

    .line 437
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 439
    :cond_4
    if-eqz v1, :cond_1

    .line 440
    invoke-virtual {v1}, Landroid/content/res/AssetManager$AssetInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 448
    .end local v1    # "ais":Landroid/content/res/AssetManager$AssetInputStream;
    .end local v3    # "buffer":[B
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "len":I
    .end local v13    # "sizeBuffer":I
    :catch_0
    move-exception v6

    .line 449
    .local v6, "e1":Ljava/lang/Exception;
    sget-object v14, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "gw:: copyFileFromAsset Error = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 451
    sget-object v14, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "gw:: due to error let\'s delete file = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v4

    .line 453
    .local v4, "deleted":Z
    sget-object v14, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "gw:: file was deleted = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 409
    .end local v2    # "assetManager":Landroid/content/res/AssetManager;
    .end local v4    # "deleted":Z
    .end local v6    # "e1":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 410
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 411
    sget-object v14, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v15, "gw:: PackageManager.NameNotFoundException e"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 432
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

    .line 436
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

    .line 437
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 439
    :cond_6
    if-eqz v1, :cond_7

    .line 440
    invoke-virtual {v1}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    :cond_7
    throw v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 436
    :catchall_1
    move-exception v14

    goto :goto_3
.end method

.method public static getInstance()Lcom/samsung/android/hostmanager/callforward/CallForwardParser;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->instance:Lcom/samsung/android/hostmanager/callforward/CallForwardParser;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->instance:Lcom/samsung/android/hostmanager/callforward/CallForwardParser;

    .line 58
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->instance:Lcom/samsung/android/hostmanager/callforward/CallForwardParser;

    return-object v0
.end method

.method private getMCCSim1()Ljava/lang/String;
    .locals 5

    .prologue
    .line 229
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "phone"

    .line 230
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 229
    invoke-static {v3, v2}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getMCC(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "host_MCC":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getValueFromFile(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "testMCC":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 236
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testMCC = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    move-object v0, v1

    .line 243
    .end local v1    # "testMCC":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gw:: getMCCSim1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-object v0

    .line 239
    .restart local v1    # "testMCC":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v3, "testMCC is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMCCSim2()Ljava/lang/String;
    .locals 4

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "host_MCC":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_0

    .line 269
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 270
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/APIChecker;->getTelephonyService2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 269
    invoke-static {v2, v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getMCC(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 274
    :goto_0
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gw:: getMCCSim2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-object v0

    .line 272
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT2:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->value()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getMCC(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMNCSim1()Ljava/lang/String;
    .locals 5

    .prologue
    .line 248
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "phone"

    .line 249
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 248
    invoke-static {v3, v2}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getMNC(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "host_MNC":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getValueFromFile(I)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "testMNC":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 255
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testMNC = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    move-object v0, v1

    .line 262
    .end local v1    # "testMNC":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gw:: getMNCSim1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-object v0

    .line 258
    .restart local v1    # "testMNC":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v3, "testMNC is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMNCSim2()Ljava/lang/String;
    .locals 4

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "host_MNC":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_0

    .line 281
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 282
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/APIChecker;->getTelephonyService2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 281
    invoke-static {v2, v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getMNC(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 286
    :goto_0
    sget-object v1, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gw:: getMNCSim2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-object v0

    .line 284
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->SLOT2:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;->value()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/hostmanager/callforward/LMultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getMNC(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getValueFromFile(I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 211
    .local v0, "values":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->mReadValues:Lcom/samsung/android/hostmanager/callforward/CallForwardParser$ReadValues;

    .line 212
    new-instance v1, Lcom/samsung/android/hostmanager/callforward/CallForwardParser$ReadValues;

    invoke-direct {v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser$ReadValues;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->mReadValues:Lcom/samsung/android/hostmanager/callforward/CallForwardParser$ReadValues;

    .line 214
    packed-switch p1, :pswitch_data_0

    .line 225
    :goto_0
    return-object v0

    .line 216
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->mReadValues:Lcom/samsung/android/hostmanager/callforward/CallForwardParser$ReadValues;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser$ReadValues;->getMCC()Ljava/lang/String;

    move-result-object v0

    .line 217
    goto :goto_0

    .line 219
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->mReadValues:Lcom/samsung/android/hostmanager/callforward/CallForwardParser$ReadValues;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser$ReadValues;->getMNC()Ljava/lang/String;

    move-result-object v0

    .line 220
    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method copyCallFwdFileFromNetwork(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 480
    sget-object v14, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v15, "gw:: copyCallFwdFileFromNetwork()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 483
    .local v11, "temp":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x6

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 484
    .local v10, "rootofSrc":Ljava/lang/String;
    sget-object v14, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "gw:: rootofSrc : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :try_start_0
    new-instance v12, Ljava/net/URL;

    const-string v14, "http://img.samsungapps.com/wearable/callfwdlist.xml"

    invoke-direct {v12, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 489
    .local v12, "url":Ljava/net/URL;
    sget-object v14, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v15, "gw:: before openconnection urlConnection.connect()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    .line 491
    .local v13, "urlConnection":Ljava/net/HttpURLConnection;
    sget-object v14, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v15, "gw:: urlConnection.connect()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 495
    const/4 v6, 0x0

    .line 496
    .local v6, "fileOutput":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 499
    .local v8, "inputStream":Ljava/io/InputStream;
    :try_start_1
    const-string v14, "GET"

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 500
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 501
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 503
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V

    .line 505
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/callforwardlist"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, "dirPath":Ljava/lang/String;
    sget-object v14, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "gw:: --- file path : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    .local v3, "dirPathFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    if-nez v14, :cond_0

    .line 510
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 517
    :cond_0
    :goto_0
    :try_start_3
    new-instance v5, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "callfwdlist.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    .local v5, "file":Ljava/io/File;
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 519
    .local v9, "isDeletedFile":Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 520
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 522
    :cond_1
    sget-object v14, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "gw:: is file deleted : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 524
    .end local v6    # "fileOutput":Ljava/io/FileOutputStream;
    .local v7, "fileOutput":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 526
    const/16 v14, 0x400

    new-array v0, v14, [B

    .line 527
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 529
    .local v1, "bufferLength":I
    :goto_1
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_4

    .line 530
    const/4 v14, 0x0

    invoke-virtual {v7, v0, v14, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 531
    sget-object v14, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v15, "gw:: fileOutput wrighting....!!!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 533
    .end local v0    # "buffer":[B
    .end local v1    # "bufferLength":I
    :catch_0
    move-exception v4

    move-object v6, v7

    .line 534
    .end local v2    # "dirPath":Ljava/lang/String;
    .end local v3    # "dirPathFile":Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fileOutput":Ljava/io/FileOutputStream;
    .end local v9    # "isDeletedFile":Ljava/lang/Boolean;
    .local v4, "e":Ljava/net/MalformedURLException;
    .restart local v6    # "fileOutput":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_5
    sget-object v14, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v15, "gw:: URL connect fail..."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 543
    if-eqz v8, :cond_2

    .line 544
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 546
    :cond_2
    if-eqz v6, :cond_3

    .line 547
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 549
    :cond_3
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 563
    .end local v4    # "e":Ljava/net/MalformedURLException;
    .end local v6    # "fileOutput":Ljava/io/FileOutputStream;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "url":Ljava/net/URL;
    .end local v13    # "urlConnection":Ljava/net/HttpURLConnection;
    :goto_3
    return-void

    .line 511
    .restart local v2    # "dirPath":Ljava/lang/String;
    .restart local v3    # "dirPathFile":Ljava/io/File;
    .restart local v6    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "url":Ljava/net/URL;
    .restart local v13    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v4

    .line 512
    .local v4, "e":Ljava/lang/Exception;
    :try_start_7
    sget-object v14, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v15, "gw:: file fail..."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 533
    .end local v2    # "dirPath":Ljava/lang/String;
    .end local v3    # "dirPathFile":Ljava/io/File;
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_2

    .line 543
    .end local v6    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bufferLength":I
    .restart local v2    # "dirPath":Ljava/lang/String;
    .restart local v3    # "dirPathFile":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v9    # "isDeletedFile":Ljava/lang/Boolean;
    :cond_4
    if-eqz v8, :cond_5

    .line 544
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 546
    :cond_5
    if-eqz v7, :cond_6

    .line 547
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 549
    :cond_6
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-object v6, v7

    .line 550
    .end local v7    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v6    # "fileOutput":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 536
    .end local v0    # "buffer":[B
    .end local v1    # "bufferLength":I
    .end local v2    # "dirPath":Ljava/lang/String;
    .end local v3    # "dirPathFile":Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v9    # "isDeletedFile":Ljava/lang/Boolean;
    :catch_3
    move-exception v4

    .line 537
    .local v4, "e":Ljava/io/IOException;
    :goto_4
    :try_start_9
    sget-object v14, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v15, "gw:: file I/O fail..."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 543
    if-eqz v8, :cond_7

    .line 544
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 546
    :cond_7
    if-eqz v6, :cond_8

    .line 547
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 549
    :cond_8
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_3

    .line 551
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 552
    .local v4, "e":Ljava/net/MalformedURLException;
    :goto_5
    :try_start_b
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_3

    .line 558
    .end local v4    # "e":Ljava/net/MalformedURLException;
    .end local v6    # "fileOutput":Ljava/io/FileOutputStream;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "url":Ljava/net/URL;
    .end local v13    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_5
    move-exception v4

    .line 559
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 539
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "url":Ljava/net/URL;
    .restart local v13    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_6
    move-exception v4

    .line 540
    .local v4, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_c
    sget-object v14, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v15, "gw:: file fail..."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 543
    if-eqz v8, :cond_9

    .line 544
    :try_start_d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 546
    :cond_9
    if-eqz v6, :cond_a

    .line 547
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 549
    :cond_a
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_3

    .line 554
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v4

    .line 555
    .local v4, "e":Ljava/io/IOException;
    :goto_7
    :try_start_e
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_3

    .line 560
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "fileOutput":Ljava/io/FileOutputStream;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "url":Ljava/net/URL;
    .end local v13    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_8
    move-exception v4

    .line 561
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 543
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "url":Ljava/net/URL;
    .restart local v13    # "urlConnection":Ljava/net/HttpURLConnection;
    :catchall_0
    move-exception v14

    :goto_8
    if-eqz v8, :cond_b

    .line 544
    :try_start_f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 546
    :cond_b
    if-eqz v6, :cond_c

    .line 547
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 549
    :cond_c
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v14
    :try_end_f
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 554
    .end local v6    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bufferLength":I
    .restart local v2    # "dirPath":Ljava/lang/String;
    .restart local v3    # "dirPathFile":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v9    # "isDeletedFile":Ljava/lang/Boolean;
    :catch_9
    move-exception v4

    move-object v6, v7

    .end local v7    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v6    # "fileOutput":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 551
    .end local v6    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v7    # "fileOutput":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v4

    move-object v6, v7

    .end local v7    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v6    # "fileOutput":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 543
    .end local v0    # "buffer":[B
    .end local v1    # "bufferLength":I
    .end local v6    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v7    # "fileOutput":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v14

    move-object v6, v7

    .end local v7    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v6    # "fileOutput":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 539
    .end local v6    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v7    # "fileOutput":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v4

    move-object v6, v7

    .end local v7    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v6    # "fileOutput":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 536
    .end local v6    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v7    # "fileOutput":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v4

    move-object v6, v7

    .end local v7    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v6    # "fileOutput":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method getBooleanValFromString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "settingsItem"    # Ljava/lang/String;

    .prologue
    .line 392
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

.method public getCallForwardSetupSim1()Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .locals 3

    .prologue
    .line 62
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v1, "gw:: getCallForwardSetupSim1 starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->setupSim1:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getInputStreamCF()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getMCCSim1()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getMNCSim1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->parseCallForwardSetupInfo(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->setupSim1:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    .line 66
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v1, "gw:: getCallForwardSetupSim1 ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->setupSim1:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    return-object v0
.end method

.method public getCallForwardSetupSim1Var()Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->setupSim1:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    return-object v0
.end method

.method public getCallForwardSetupSim2()Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .locals 3

    .prologue
    .line 71
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v1, "gw:: getCallForwardSetupSim2 starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->setupSim2:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getInputStreamCF()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getMCCSim2()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getMNCSim2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->parseCallForwardSetupInfo(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->setupSim2:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    .line 75
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v1, "gw:: getCallForwardSetupSim2 ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->setupSim2:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    return-object v0
.end method

.method public getCallForwardSetupSim2Var()Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->setupSim2:Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    return-object v0
.end method

.method public getInputStreamCF()Ljava/io/InputStream;
    .locals 8

    .prologue
    .line 81
    sget-object v5, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v6, "gw:: before cfwd list copied from Asset, try to parse"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "callfwdlist.xml"

    const-string v7, "callfwdlist.xml"

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->copyFileFromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v5, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v6, "gw:: cfwd list copied from Asset, try to parse"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v4, 0x0

    .line 89
    .local v4, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 90
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/File;

    const-string v5, "/data/data/com.samsung.android.hostmanager/files/callfwdlist.xml"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "cfwdFile":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 97
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_0
    new-instance v4, Ljava/io/BufferedInputStream;

    .end local v4    # "is":Ljava/io/InputStream;
    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 98
    .restart local v4    # "is":Ljava/io/InputStream;
    return-object v4

    .line 93
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method isNetworkAvailable()Z
    .locals 4

    .prologue
    .line 566
    sget-object v2, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v3, "check for network availability."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 569
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 570
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public parseCallForwardSetupInfo(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .locals 41
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "host_MCC"    # Ljava/lang/String;
    .param p3, "host_MNC"    # Ljava/lang/String;

    .prologue
    .line 291
    sget-object v38, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v39, "gw:: inside parseCallForwardSetupInfo"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/16 v20, 0x0

    .line 294
    .local v20, "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v23

    .line 295
    .local v23, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v23 .. v23}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v19

    .line 296
    .local v19, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/16 v38, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v32

    .line 298
    .local v32, "root":Lorg/w3c/dom/Document;
    const-string v38, "item"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v29

    .line 299
    .local v29, "nodelist":Lorg/w3c/dom/NodeList;
    const/16 v26, 0x0

    .line 302
    .local v26, "host_MNC_int":I
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v38

    if-eqz v38, :cond_0

    .line 303
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getValueFromFile(I)Ljava/lang/String;

    move-result-object v35

    .line 304
    .local v35, "testMCC":Ljava/lang/String;
    if-eqz v35, :cond_3

    .line 305
    sget-object v38, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "testMCC = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    move-object/from16 p2, v35

    .line 310
    :goto_0
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getValueFromFile(I)Ljava/lang/String;

    move-result-object v36

    .line 311
    .local v36, "testMNC":Ljava/lang/String;
    if-eqz v36, :cond_4

    .line 312
    sget-object v38, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "testMNC = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    move-object/from16 p3, v36

    .line 319
    .end local v35    # "testMCC":Ljava/lang/String;
    .end local v36    # "testMNC":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_1

    .line 320
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 323
    :cond_1
    sget-object v38, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "gw:: host_MCC = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", host_MNC = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object v38, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "gw:: type change to int host_MNC_int = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    sget-object v38, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "gw:: nodelist size = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v30

    .line 329
    .local v30, "nodelist_count":I
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_2
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_7

    .line 330
    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/Element;

    .line 332
    .local v22, "cfwdinfo":Lorg/w3c/dom/Element;
    const-string v38, "mcc"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    const/16 v39, 0x0

    invoke-interface/range {v38 .. v39}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 333
    .local v7, "xMlMcc":Ljava/lang/String;
    const-string v38, "mnc"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    const/16 v39, 0x0

    invoke-interface/range {v38 .. v39}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 334
    .local v8, "xMlMnc":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 336
    .local v37, "xMlMnc_int":I
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_5

    move/from16 v0, v26

    move/from16 v1, v37

    if-ne v0, v1, :cond_5

    .line 337
    sget-object v38, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v39, "gw:: mcc, mnc is Same"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    sget-object v38, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "gw:: xMlMcc = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", type change to int xMlMnc_int = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v38, "cf_support"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    const/16 v39, 0x0

    invoke-interface/range {v38 .. v39}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v21

    .line 340
    .local v21, "cfSupport":Ljava/lang/String;
    const-string v38, "cf_type"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    const/16 v39, 0x0

    invoke-interface/range {v38 .. v39}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "cfType":Ljava/lang/String;
    const-string v38, "carrier"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    const/16 v39, 0x0

    invoke-interface/range {v38 .. v39}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, "carrier":Ljava/lang/String;
    const-string v38, "simpolicy"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    const/16 v39, 0x0

    invoke-interface/range {v38 .. v39}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 343
    .local v9, "simPolicy":Ljava/lang/String;
    const-string v38, "freesrv"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    const/16 v39, 0x0

    invoke-interface/range {v38 .. v39}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v25

    .line 344
    .local v25, "freeSrv":Ljava/lang/String;
    const-string v38, "fwdnum"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    const/16 v39, 0x0

    invoke-interface/range {v38 .. v39}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    .line 345
    .local v11, "fwdNum":Ljava/lang/String;
    const-string v38, "disable_num"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    const/16 v39, 0x0

    invoke-interface/range {v38 .. v39}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v12

    .line 346
    .local v12, "disableNum":Ljava/lang/String;
    const-string v38, "carrier_req"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    const/16 v39, 0x0

    invoke-interface/range {v38 .. v39}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 347
    .local v13, "carrierReq":Ljava/lang/String;
    const-string v38, "sms_fwd"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    const/16 v39, 0x0

    invoke-interface/range {v38 .. v39}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v33

    .line 348
    .local v33, "smsFwd":Ljava/lang/String;
    const-string v38, "support_primary"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    const/16 v39, 0x0

    invoke-interface/range {v38 .. v39}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v34

    .line 349
    .local v34, "supportPrimary":Ljava/lang/String;
    const-string v38, "primary_num"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    const/16 v39, 0x0

    invoke-interface/range {v38 .. v39}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v16

    .line 350
    .local v16, "primaryNum":Ljava/lang/String;
    const-string v38, "multi_sim"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    const/16 v39, 0x0

    invoke-interface/range {v38 .. v39}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v28

    .line 351
    .local v28, "multiSim":Ljava/lang/String;
    const/16 v18, 0x0

    .line 353
    .local v18, "multiSimCategory":Ljava/lang/String;
    :try_start_1
    const-string v38, "multi_sim_category"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    const/16 v39, 0x0

    invoke-interface/range {v38 .. v39}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    .line 357
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getBooleanValFromString(Ljava/lang/String;)Z

    move-result v4

    .line 358
    .local v4, "cfSupportVal":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getBooleanValFromString(Ljava/lang/String;)Z

    move-result v10

    .line 359
    .local v10, "freeSrvVal":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getBooleanValFromString(Ljava/lang/String;)Z

    move-result v14

    .line 360
    .local v14, "smsFwdVal":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getBooleanValFromString(Ljava/lang/String;)Z

    move-result v15

    .line 361
    .local v15, "supportPrimaryVal":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getBooleanValFromString(Ljava/lang/String;)Z

    move-result v17

    .line 362
    .local v17, "multiSimVal":Z
    sget-object v38, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "gw:: smsFwdVal : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v3, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    invoke-direct/range {v3 .. v18}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    .end local v20    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .local v3, "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    :try_start_3
    sget-object v38, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "gw:: parseCallForwardSetupInfo() : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 381
    .end local v4    # "cfSupportVal":Z
    .end local v5    # "cfType":Ljava/lang/String;
    .end local v6    # "carrier":Ljava/lang/String;
    .end local v7    # "xMlMcc":Ljava/lang/String;
    .end local v8    # "xMlMnc":Ljava/lang/String;
    .end local v9    # "simPolicy":Ljava/lang/String;
    .end local v10    # "freeSrvVal":Z
    .end local v11    # "fwdNum":Ljava/lang/String;
    .end local v12    # "disableNum":Ljava/lang/String;
    .end local v13    # "carrierReq":Ljava/lang/String;
    .end local v14    # "smsFwdVal":Z
    .end local v15    # "supportPrimaryVal":Z
    .end local v16    # "primaryNum":Ljava/lang/String;
    .end local v17    # "multiSimVal":Z
    .end local v18    # "multiSimCategory":Ljava/lang/String;
    .end local v21    # "cfSupport":Ljava/lang/String;
    .end local v22    # "cfwdinfo":Lorg/w3c/dom/Element;
    .end local v25    # "freeSrv":Ljava/lang/String;
    .end local v28    # "multiSim":Ljava/lang/String;
    .end local v33    # "smsFwd":Ljava/lang/String;
    .end local v34    # "supportPrimary":Ljava/lang/String;
    .end local v37    # "xMlMnc_int":I
    :goto_4
    if-eqz p1, :cond_2

    .line 382
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 388
    .end local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v23    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v26    # "host_MNC_int":I
    .end local v27    # "i":I
    .end local v29    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v30    # "nodelist_count":I
    .end local v32    # "root":Lorg/w3c/dom/Document;
    :cond_2
    :goto_5
    return-object v3

    .line 308
    .end local v3    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .restart local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v20    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .restart local v23    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v26    # "host_MNC_int":I
    .restart local v29    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v32    # "root":Lorg/w3c/dom/Document;
    .restart local v35    # "testMCC":Ljava/lang/String;
    :cond_3
    :try_start_5
    sget-object v38, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v39, "testMCC is null"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 373
    .end local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v23    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v26    # "host_MNC_int":I
    .end local v29    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v32    # "root":Lorg/w3c/dom/Document;
    .end local v35    # "testMCC":Ljava/lang/String;
    :catch_0
    move-exception v24

    move-object/from16 v3, v20

    .line 374
    .end local v20    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .restart local v3    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .local v24, "e":Ljava/io/IOException;
    :goto_6
    :try_start_6
    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 381
    if-eqz p1, :cond_2

    .line 382
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    .line 384
    :catch_1
    move-exception v24

    .line 385
    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 315
    .end local v3    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .end local v24    # "e":Ljava/io/IOException;
    .restart local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v20    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .restart local v23    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v26    # "host_MNC_int":I
    .restart local v29    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v32    # "root":Lorg/w3c/dom/Document;
    .restart local v35    # "testMCC":Ljava/lang/String;
    .restart local v36    # "testMNC":Ljava/lang/String;
    :cond_4
    :try_start_8
    sget-object v38, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->TAG:Ljava/lang/String;

    const-string v39, "testMNC is null"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 375
    .end local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v23    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v26    # "host_MNC_int":I
    .end local v29    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v32    # "root":Lorg/w3c/dom/Document;
    .end local v35    # "testMCC":Ljava/lang/String;
    .end local v36    # "testMNC":Ljava/lang/String;
    :catch_2
    move-exception v31

    move-object/from16 v3, v20

    .line 376
    .end local v20    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .restart local v3    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .local v31, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_7
    :try_start_9
    invoke-virtual/range {v31 .. v31}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 381
    if-eqz p1, :cond_2

    .line 382
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_5

    .line 384
    :catch_3
    move-exception v24

    .line 385
    .restart local v24    # "e":Ljava/io/IOException;
    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 329
    .end local v3    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .end local v24    # "e":Ljava/io/IOException;
    .end local v31    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v7    # "xMlMcc":Ljava/lang/String;
    .restart local v8    # "xMlMnc":Ljava/lang/String;
    .restart local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v20    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .restart local v22    # "cfwdinfo":Lorg/w3c/dom/Element;
    .restart local v23    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v26    # "host_MNC_int":I
    .restart local v27    # "i":I
    .restart local v29    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v30    # "nodelist_count":I
    .restart local v32    # "root":Lorg/w3c/dom/Document;
    .restart local v37    # "xMlMnc_int":I
    :cond_5
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    .line 384
    .end local v7    # "xMlMcc":Ljava/lang/String;
    .end local v8    # "xMlMnc":Ljava/lang/String;
    .end local v20    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .end local v22    # "cfwdinfo":Lorg/w3c/dom/Element;
    .end local v37    # "xMlMnc_int":I
    .restart local v3    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    :catch_4
    move-exception v24

    .line 385
    .restart local v24    # "e":Ljava/io/IOException;
    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 377
    .end local v3    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .end local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v23    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v24    # "e":Ljava/io/IOException;
    .end local v26    # "host_MNC_int":I
    .end local v27    # "i":I
    .end local v29    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v30    # "nodelist_count":I
    .end local v32    # "root":Lorg/w3c/dom/Document;
    .restart local v20    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    :catch_5
    move-exception v24

    move-object/from16 v3, v20

    .line 378
    .end local v20    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .restart local v3    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .local v24, "e":Ljava/lang/Exception;
    :goto_8
    :try_start_b
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 381
    if-eqz p1, :cond_2

    .line 382
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_5

    .line 384
    :catch_6
    move-exception v24

    .line 385
    .local v24, "e":Ljava/io/IOException;
    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 380
    .end local v3    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .end local v24    # "e":Ljava/io/IOException;
    .restart local v20    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    :catchall_0
    move-exception v38

    move-object/from16 v3, v20

    .line 381
    .end local v20    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .restart local v3    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    :goto_9
    if-eqz p1, :cond_6

    .line 382
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 386
    :cond_6
    :goto_a
    throw v38

    .line 384
    :catch_7
    move-exception v24

    .line 385
    .restart local v24    # "e":Ljava/io/IOException;
    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 380
    .end local v24    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v38

    goto :goto_9

    .line 377
    .restart local v4    # "cfSupportVal":Z
    .restart local v5    # "cfType":Ljava/lang/String;
    .restart local v6    # "carrier":Ljava/lang/String;
    .restart local v7    # "xMlMcc":Ljava/lang/String;
    .restart local v8    # "xMlMnc":Ljava/lang/String;
    .restart local v9    # "simPolicy":Ljava/lang/String;
    .restart local v10    # "freeSrvVal":Z
    .restart local v11    # "fwdNum":Ljava/lang/String;
    .restart local v12    # "disableNum":Ljava/lang/String;
    .restart local v13    # "carrierReq":Ljava/lang/String;
    .restart local v14    # "smsFwdVal":Z
    .restart local v15    # "supportPrimaryVal":Z
    .restart local v16    # "primaryNum":Ljava/lang/String;
    .restart local v17    # "multiSimVal":Z
    .restart local v18    # "multiSimCategory":Ljava/lang/String;
    .restart local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v21    # "cfSupport":Ljava/lang/String;
    .restart local v22    # "cfwdinfo":Lorg/w3c/dom/Element;
    .restart local v23    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v25    # "freeSrv":Ljava/lang/String;
    .restart local v26    # "host_MNC_int":I
    .restart local v27    # "i":I
    .restart local v28    # "multiSim":Ljava/lang/String;
    .restart local v29    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v30    # "nodelist_count":I
    .restart local v32    # "root":Lorg/w3c/dom/Document;
    .restart local v33    # "smsFwd":Ljava/lang/String;
    .restart local v34    # "supportPrimary":Ljava/lang/String;
    .restart local v37    # "xMlMnc_int":I
    :catch_8
    move-exception v24

    goto :goto_8

    .line 375
    :catch_9
    move-exception v31

    goto :goto_7

    .line 373
    :catch_a
    move-exception v24

    goto :goto_6

    .line 354
    .end local v3    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .end local v4    # "cfSupportVal":Z
    .end local v10    # "freeSrvVal":Z
    .end local v14    # "smsFwdVal":Z
    .end local v15    # "supportPrimaryVal":Z
    .end local v17    # "multiSimVal":Z
    .restart local v20    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    :catch_b
    move-exception v38

    goto/16 :goto_3

    .end local v5    # "cfType":Ljava/lang/String;
    .end local v6    # "carrier":Ljava/lang/String;
    .end local v7    # "xMlMcc":Ljava/lang/String;
    .end local v8    # "xMlMnc":Ljava/lang/String;
    .end local v9    # "simPolicy":Ljava/lang/String;
    .end local v11    # "fwdNum":Ljava/lang/String;
    .end local v12    # "disableNum":Ljava/lang/String;
    .end local v13    # "carrierReq":Ljava/lang/String;
    .end local v16    # "primaryNum":Ljava/lang/String;
    .end local v18    # "multiSimCategory":Ljava/lang/String;
    .end local v21    # "cfSupport":Ljava/lang/String;
    .end local v22    # "cfwdinfo":Lorg/w3c/dom/Element;
    .end local v25    # "freeSrv":Ljava/lang/String;
    .end local v28    # "multiSim":Ljava/lang/String;
    .end local v33    # "smsFwd":Ljava/lang/String;
    .end local v34    # "supportPrimary":Ljava/lang/String;
    .end local v37    # "xMlMnc_int":I
    :cond_7
    move-object/from16 v3, v20

    .end local v20    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .restart local v3    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    goto :goto_4
.end method
