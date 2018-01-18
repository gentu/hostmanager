.class Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;
.super Ljava/lang/Object;
.source "HMDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/pm/HMDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadRunnable"
.end annotation


# instance fields
.field mDownloadAppInfo:Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

.field final synthetic this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;)V
    .locals 0
    .param p2, "downloadAppInfo"    # Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p2, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->mDownloadAppInfo:Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

    .line 138
    return-void
.end method

.method private checkUpdate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "updateCheckServerURL"    # Ljava/lang/String;

    .prologue
    .line 382
    const/4 v3, 0x0

    .line 384
    .local v3, "inputStream":Ljava/io/InputStream;
    invoke-static {p2}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$100(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 388
    .local v0, "conn":Ljava/net/HttpURLConnection;
    if-eqz v0, :cond_9

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_9

    .line 389
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 391
    if-eqz v3, :cond_9

    .line 392
    invoke-direct {p0, v3}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->parserUpdateResponse(Ljava/io/InputStream;)Lcom/samsung/android/hostmanager/pm/HMDownloadManager$UpdateCheckResponse;

    move-result-object v8

    .line 394
    .local v8, "reponse":Lcom/samsung/android/hostmanager/pm/HMDownloadManager$UpdateCheckResponse;
    sget-object v9, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " UpdateCheckResponse :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    if-eqz v8, :cond_9

    .line 398
    iget-object v9, v8, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$UpdateCheckResponse;->appId:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 400
    iget-object v9, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-virtual {v9, p1}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->getPackageVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 402
    .local v6, "mVersionName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 403
    .local v5, "mResult":Ljava/lang/String;
    iget-object v9, v8, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$UpdateCheckResponse;->resultCode:Ljava/lang/String;

    const-string v10, "2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 409
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "haveFirstCharGroup":Ljava/lang/String;
    iget-object v9, v8, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$UpdateCheckResponse;->version:Ljava/lang/String;

    .line 411
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 412
    .local v4, "latestFirstCharGroup":Ljava/lang/String;
    const-string v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 413
    const/4 v9, 0x0

    const-string v10, "."

    .line 417
    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 414
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 418
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 420
    :cond_0
    iget-object v9, v8, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$UpdateCheckResponse;->version:Ljava/lang/String;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 421
    iget-object v9, v8, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$UpdateCheckResponse;->version:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, v8, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$UpdateCheckResponse;->version:Ljava/lang/String;

    const-string v12, "."

    .line 425
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 422
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 426
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 429
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 430
    iget-object v9, v8, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$UpdateCheckResponse;->version:Ljava/lang/String;

    const-string v10, "99"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 431
    const-string v5, "Exception"

    .line 447
    .end local v2    # "haveFirstCharGroup":Ljava/lang/String;
    .end local v4    # "latestFirstCharGroup":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_8

    const-string v9, "Normal"

    .line 449
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "Critical"

    .line 451
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "Exception"

    .line 452
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 454
    :cond_2
    sget-object v9, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v10, "UPDATE AVAILABLE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    const/4 v9, 0x1

    .line 476
    if-eqz v0, :cond_3

    .line 478
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    .end local v5    # "mResult":Ljava/lang/String;
    .end local v6    # "mVersionName":Ljava/lang/String;
    .end local v8    # "reponse":Lcom/samsung/android/hostmanager/pm/HMDownloadManager$UpdateCheckResponse;
    :cond_3
    :goto_1
    return v9

    .line 433
    .restart local v2    # "haveFirstCharGroup":Ljava/lang/String;
    .restart local v4    # "latestFirstCharGroup":Ljava/lang/String;
    .restart local v5    # "mResult":Ljava/lang/String;
    .restart local v6    # "mVersionName":Ljava/lang/String;
    .restart local v8    # "reponse":Lcom/samsung/android/hostmanager/pm/HMDownloadManager$UpdateCheckResponse;
    :cond_4
    :try_start_1
    const-string v5, "Normal"

    goto :goto_0

    .line 436
    :cond_5
    const-string v5, "Critical"

    goto :goto_0

    .line 439
    .end local v2    # "haveFirstCharGroup":Ljava/lang/String;
    .end local v4    # "latestFirstCharGroup":Ljava/lang/String;
    :cond_6
    iget-object v9, v8, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$UpdateCheckResponse;->resultCode:Ljava/lang/String;

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 440
    const-string v5, "No_Update"

    goto :goto_0

    .line 442
    :cond_7
    const-string v5, "No_Matching_App"

    goto :goto_0

    .line 458
    :cond_8
    sget-object v9, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v10, "STATUS_NO_UPDATE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v9, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v9}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->mDownloadAppInfo:Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 461
    .local v7, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v9}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    const/4 v9, 0x0

    .line 476
    if-eqz v0, :cond_3

    .line 478
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 476
    .end local v5    # "mResult":Ljava/lang/String;
    .end local v6    # "mVersionName":Ljava/lang/String;
    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "reponse":Lcom/samsung/android/hostmanager/pm/HMDownloadManager$UpdateCheckResponse;
    :cond_9
    if-eqz v0, :cond_a

    .line 478
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 482
    :cond_a
    :goto_2
    sget-object v9, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v10, "STATUS_UPDATE_CHECK_FAILED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v9, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v9}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->mDownloadAppInfo:Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 484
    .restart local v7    # "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v9}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 486
    const/4 v9, 0x0

    goto :goto_1

    .line 471
    .end local v7    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 473
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 476
    if-eqz v0, :cond_a

    .line 478
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 476
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    if-eqz v0, :cond_b

    .line 478
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    throw v9
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isUpdateAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 369
    iget-object v1, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->getUpdateCheckServerURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "updateCheckServerURL":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updateCheckServerURL :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    if-eqz v0, :cond_0

    .line 372
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->checkUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const/4 v1, 0x1

    .line 376
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parserUpdateResponse(Ljava/io/InputStream;)Lcom/samsung/android/hostmanager/pm/HMDownloadManager$UpdateCheckResponse;
    .locals 13
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v11, 0x4

    const/4 v9, 0x0

    .line 492
    const-string v0, ""

    .line 493
    .local v0, "appId":Ljava/lang/String;
    const-string v5, ""

    .line 494
    .local v5, "resultCode":Ljava/lang/String;
    const-string v8, ""

    .line 498
    .local v8, "version":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 500
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 502
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v3, p1, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 503
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 506
    .local v4, "parserEvent":I
    :goto_0
    const/4 v10, 0x1

    if-eq v4, v10, :cond_3

    .line 508
    const/4 v10, 0x2

    if-ne v4, v10, :cond_2

    .line 509
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 511
    .local v6, "tag":Ljava/lang/String;
    const-string v10, "appId"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 512
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 513
    .local v7, "type":I
    if-ne v7, v11, :cond_0

    .line 514
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 518
    .end local v7    # "type":I
    :cond_0
    const-string v10, "resultCode"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 519
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 520
    .restart local v7    # "type":I
    if-ne v7, v11, :cond_1

    .line 521
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 525
    .end local v7    # "type":I
    :cond_1
    const-string v10, "version"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 526
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 527
    .restart local v7    # "type":I
    if-ne v7, v11, :cond_2

    .line 528
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    .line 532
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    goto :goto_0

    .line 543
    :cond_3
    if-eqz p1, :cond_4

    .line 544
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 549
    :cond_4
    :goto_1
    sget-object v10, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ parserUpdateResponse ] appId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resultCode:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " version:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    if-eqz v5, :cond_5

    .line 552
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    if-eqz v8, :cond_5

    .line 553
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 554
    new-instance v9, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$UpdateCheckResponse;

    invoke-direct {v9, v0, v5, v8}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$UpdateCheckResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "parserEvent":I
    :cond_5
    :goto_2
    return-object v9

    .line 545
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "parserEvent":I
    :catch_0
    move-exception v1

    .line 546
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 534
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "parserEvent":I
    :catch_1
    move-exception v1

    .line 535
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 543
    if-eqz p1, :cond_5

    .line 544
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 545
    :catch_2
    move-exception v1

    .line 546
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 537
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 538
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 543
    if-eqz p1, :cond_5

    .line 544
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 545
    :catch_4
    move-exception v1

    .line 546
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 542
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 543
    if-eqz p1, :cond_6

    .line 544
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 547
    :cond_6
    :goto_3
    throw v9

    .line 545
    :catch_5
    move-exception v1

    .line 546
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private startDownloadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/hostmanager/model/InstallPack;
    .locals 28
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "downloadURL"    # Ljava/lang/String;

    .prologue
    .line 264
    const/16 v19, 0x0

    .line 266
    .local v19, "percentage":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->getDownloadPath()Ljava/lang/String;

    move-result-object v9

    .line 267
    .local v9, "downloadPath":Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v18, "pathDirectory":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_1

    .line 269
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    move-result v21

    if-nez v21, :cond_1

    .line 270
    sget-object v21, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v24, "Unable to create download directory"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/16 v21, 0x0

    .line 356
    :cond_0
    :goto_0
    return-object v21

    .line 275
    :cond_1
    new-instance v10, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 276
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v10, "downloadfile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 278
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v21

    if-nez v21, :cond_2

    .line 279
    sget-object v21, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v24, "Unable to delete previously downloaded file"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/16 v21, 0x0

    goto :goto_0

    .line 285
    :cond_2
    const/4 v12, 0x0

    .line 286
    .local v12, "input":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 289
    .local v16, "output":Ljava/io/OutputStream;
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$100(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 290
    .local v6, "connection":Ljava/net/HttpURLConnection;
    sget-object v21, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "startDownloadFile() Connection :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    if-nez v6, :cond_4

    .line 293
    const/16 v21, 0x0

    .line 335
    if-eqz v16, :cond_3

    .line 337
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 339
    :cond_3
    if-eqz v12, :cond_0

    .line 341
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v11

    .line 344
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 296
    .end local v11    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v14

    .line 299
    .local v14, "lenghtOfFile":I
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    const/16 v24, 0x2000

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-direct {v13, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    .end local v12    # "input":Ljava/io/InputStream;
    .local v13, "input":Ljava/io/InputStream;
    :try_start_3
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 305
    .end local v16    # "output":Ljava/io/OutputStream;
    .local v17, "output":Ljava/io/OutputStream;
    const/16 v21, 0x400

    :try_start_4
    move/from16 v0, v21

    new-array v8, v0, [B

    .line 307
    .local v8, "data":[B
    const-wide/16 v22, 0x0

    .line 309
    .local v22, "total":J
    const/16 v20, -0x1

    .line 310
    .local v20, "previousPercentage":I
    :goto_1
    invoke-virtual {v13, v8}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "count":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v7, v0, :cond_8

    .line 312
    int-to-long v0, v7

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    .line 313
    const-wide/16 v24, 0x64

    mul-long v24, v24, v22

    int-to-long v0, v14

    move-wide/from16 v26, v0

    div-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v19, v0

    .line 315
    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 316
    sget-object v21, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Downloading ... "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "% "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v21

    const/16 v24, 0xa

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->mDownloadAppInfo:Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v19

    move/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 320
    .local v15, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    move/from16 v20, v19

    .line 324
    .end local v15    # "message":Landroid/os/Message;
    :cond_5
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v8, v1, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_1

    .line 330
    .end local v7    # "count":I
    .end local v8    # "data":[B
    .end local v20    # "previousPercentage":I
    .end local v22    # "total":J
    :catch_1
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "output":Ljava/io/OutputStream;
    .restart local v16    # "output":Ljava/io/OutputStream;
    move-object v12, v13

    .line 331
    .end local v6    # "connection":Ljava/net/HttpURLConnection;
    .end local v13    # "input":Ljava/io/InputStream;
    .end local v14    # "lenghtOfFile":I
    .local v11, "e":Ljava/lang/Exception;
    .restart local v12    # "input":Ljava/io/InputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 335
    if-eqz v16, :cond_6

    .line 337
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 339
    :cond_6
    if-eqz v12, :cond_7

    .line 341
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 350
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_3
    const/16 v21, 0x64

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 352
    sget-object v21, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v24, "Download completed !!!"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v21, Lcom/samsung/android/hostmanager/model/InstallPack;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 354
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/model/InstallPack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 328
    .end local v12    # "input":Ljava/io/InputStream;
    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v6    # "connection":Ljava/net/HttpURLConnection;
    .restart local v7    # "count":I
    .restart local v8    # "data":[B
    .restart local v13    # "input":Ljava/io/InputStream;
    .restart local v14    # "lenghtOfFile":I
    .restart local v17    # "output":Ljava/io/OutputStream;
    .restart local v20    # "previousPercentage":I
    .restart local v22    # "total":J
    :cond_8
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 335
    if-eqz v17, :cond_9

    .line 337
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 339
    :cond_9
    if-eqz v13, :cond_a

    .line 341
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_a
    move-object/from16 v16, v17

    .end local v17    # "output":Ljava/io/OutputStream;
    .restart local v16    # "output":Ljava/io/OutputStream;
    move-object v12, v13

    .line 345
    .end local v13    # "input":Ljava/io/InputStream;
    .restart local v12    # "input":Ljava/io/InputStream;
    goto :goto_3

    .line 343
    .end local v12    # "input":Ljava/io/InputStream;
    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v13    # "input":Ljava/io/InputStream;
    .restart local v17    # "output":Ljava/io/OutputStream;
    :catch_2
    move-exception v11

    .line 344
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v16, v17

    .end local v17    # "output":Ljava/io/OutputStream;
    .restart local v16    # "output":Ljava/io/OutputStream;
    move-object v12, v13

    .line 347
    .end local v13    # "input":Ljava/io/InputStream;
    .restart local v12    # "input":Ljava/io/InputStream;
    goto :goto_3

    .line 343
    .end local v6    # "connection":Ljava/net/HttpURLConnection;
    .end local v7    # "count":I
    .end local v8    # "data":[B
    .end local v14    # "lenghtOfFile":I
    .end local v20    # "previousPercentage":I
    .end local v22    # "total":J
    .local v11, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    .line 344
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 334
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    .line 335
    :goto_4
    if-eqz v16, :cond_b

    .line 337
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 339
    :cond_b
    if-eqz v12, :cond_c

    .line 341
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 345
    :cond_c
    :goto_5
    throw v21

    .line 343
    :catch_4
    move-exception v11

    .line 344
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 356
    .end local v11    # "e":Ljava/io/IOException;
    :cond_d
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 334
    .end local v12    # "input":Ljava/io/InputStream;
    .restart local v6    # "connection":Ljava/net/HttpURLConnection;
    .restart local v13    # "input":Ljava/io/InputStream;
    .restart local v14    # "lenghtOfFile":I
    :catchall_1
    move-exception v21

    move-object v12, v13

    .end local v13    # "input":Ljava/io/InputStream;
    .restart local v12    # "input":Ljava/io/InputStream;
    goto :goto_4

    .end local v12    # "input":Ljava/io/InputStream;
    .end local v16    # "output":Ljava/io/OutputStream;
    .restart local v13    # "input":Ljava/io/InputStream;
    .restart local v17    # "output":Ljava/io/OutputStream;
    :catchall_2
    move-exception v21

    move-object/from16 v16, v17

    .end local v17    # "output":Ljava/io/OutputStream;
    .restart local v16    # "output":Ljava/io/OutputStream;
    move-object v12, v13

    .end local v13    # "input":Ljava/io/InputStream;
    .restart local v12    # "input":Ljava/io/InputStream;
    goto :goto_4

    .line 330
    .end local v6    # "connection":Ljava/net/HttpURLConnection;
    .end local v14    # "lenghtOfFile":I
    :catch_5
    move-exception v11

    goto :goto_2

    .end local v12    # "input":Ljava/io/InputStream;
    .restart local v6    # "connection":Ljava/net/HttpURLConnection;
    .restart local v13    # "input":Ljava/io/InputStream;
    .restart local v14    # "lenghtOfFile":I
    :catch_6
    move-exception v11

    move-object v12, v13

    .end local v13    # "input":Ljava/io/InputStream;
    .restart local v12    # "input":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private startDownloadInternal(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isUpdate"    # Z

    .prologue
    .line 174
    sget-object v5, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " startDownloadInternal() PackageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isUpdate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    if-eqz p2, :cond_0

    .line 177
    sget-object v5, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v6, "STATUS_UPDATE_DOWNLOAD_START"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->mDownloadAppInfo:Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

    .line 179
    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 180
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->getDownloadCheckServerURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "downloadCheckServerURL":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " downloadCheckServerURL :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    if-eqz v0, :cond_4

    .line 194
    invoke-static {v0}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->getDownloadMetaData(Ljava/lang/String;)Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;

    move-result-object v1

    .line 196
    .local v1, "downloadMetaData":Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;
    if-eqz v1, :cond_4

    .line 198
    iget-object v5, v1, Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;->appId:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;->resultCode:Ljava/lang/String;

    const-string v6, "1"

    .line 199
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 201
    iget-object v5, v1, Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;->downloadURL:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->startDownloadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/hostmanager/model/InstallPack;

    move-result-object v2

    .line 204
    .local v2, "installPack":Lcom/samsung/android/hostmanager/model/InstallPack;
    if-eqz v2, :cond_4

    .line 205
    iget-object v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->mDownloadAppInfo:Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

    iget-object v6, v2, Lcom/samsung/android/hostmanager/model/InstallPack;->apkName:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;->downloadedApkName:Ljava/lang/String;

    .line 206
    iget-object v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->mDownloadAppInfo:Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

    iget-object v6, v2, Lcom/samsung/android/hostmanager/model/InstallPack;->path:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;->downloadedPath:Ljava/lang/String;

    .line 207
    iget-object v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 208
    .local v3, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->mDownloadAppInfo:Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 210
    sget-object v5, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Downloaded path :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/samsung/android/hostmanager/model/InstallPack;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-eqz p2, :cond_1

    .line 213
    sget-object v5, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v6, "STATUS_UPDATE_DOWNLOAD_SUCCESS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v5, 0x6

    iput v5, v3, Landroid/os/Message;->what:I

    .line 219
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    .end local v1    # "downloadMetaData":Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;
    .end local v2    # "installPack":Lcom/samsung/android/hostmanager/model/InstallPack;
    .end local v3    # "message":Landroid/os/Message;
    :goto_2
    return-void

    .line 182
    .end local v0    # "downloadCheckServerURL":Ljava/lang/String;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_0
    sget-object v5, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v6, "STATUS_ESSENTIAL_DOWNLOAD_START"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->mDownloadAppInfo:Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 185
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 216
    .restart local v0    # "downloadCheckServerURL":Ljava/lang/String;
    .restart local v1    # "downloadMetaData":Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;
    .restart local v2    # "installPack":Lcom/samsung/android/hostmanager/model/InstallPack;
    .restart local v3    # "message":Landroid/os/Message;
    :cond_1
    sget-object v5, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v6, "STATUS_ESSENTIAL_DOWNLOAD_SUCCESS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/16 v5, 0x9

    iput v5, v3, Landroid/os/Message;->what:I

    goto :goto_1

    .line 225
    .end local v2    # "installPack":Lcom/samsung/android/hostmanager/model/InstallPack;
    .end local v3    # "message":Landroid/os/Message;
    :cond_2
    iget-object v5, v1, Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;->appId:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;->resultCode:Ljava/lang/String;

    const-string v6, "0"

    .line 226
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 227
    if-eqz p2, :cond_3

    .line 228
    sget-object v5, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v6, "STATUS_UPDATE_DOWNLOAD_FAILED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xc

    iget-object v7, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->mDownloadAppInfo:Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 232
    iget-object v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 234
    :cond_3
    sget-object v5, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v6, "STATUS_ESSENTIAL_DOWNLOAD_FAILED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xd

    iget-object v7, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->mDownloadAppInfo:Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 238
    iget-object v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 246
    .end local v1    # "downloadMetaData":Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;
    :cond_4
    sget-object v5, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v6, " startDownloadInternal() Download failed !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    if-eqz p2, :cond_5

    .line 249
    sget-object v5, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v6, "STATUS_UPDATE_DOWNLOAD_FAILED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->mDownloadAppInfo:Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 252
    iget-object v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 254
    :cond_5
    sget-object v5, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v6, "STATUS_ESSENTIAL_DOWNLOAD_FAILED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->mDownloadAppInfo:Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 257
    iget-object v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 143
    iget-object v2, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->mDownloadAppInfo:Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

    iget-object v1, v2, Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;->packageName:Ljava/lang/String;

    .line 145
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->mDownloadAppInfo:Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

    iget-boolean v2, v2, Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;->updateCheck:Z

    if-eqz v2, :cond_2

    .line 148
    if-eqz v1, :cond_0

    .line 149
    iget-object v2, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->mDownloadAppInfo:Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

    invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 152
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    sget-object v2, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " STATUS_UPDATE_CHECK_START :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0, v1}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->isUpdateAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-direct {p0, v1, v5}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->startDownloadInternal(Ljava/lang/String;Z)V

    .line 170
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    sget-object v2, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Package not installed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;->startDownloadInternal(Ljava/lang/String;Z)V

    goto :goto_0
.end method
