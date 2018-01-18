.class public Lcom/samsung/android/hostmanager/pm/HMDownloadManager;
.super Ljava/lang/Object;
.source "HMDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/pm/HMDownloadManager$UpdateCheckResponse;,
        Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;
    }
.end annotation


# static fields
.field public static final CSC_PATH:Ljava/lang/String; = "/system/csc/sales_code.dat"

.field public static final DOWNLOAD_SERVER_URL:Ljava/lang/String; = "https://vas.samsungapps.com/stub/stubDownload.as"

.field private static final FIRST_VERSION_NAME:Ljava/lang/String; = "1.0.0"

.field public static final MATCHING_BUT_NO_UPDATE:Ljava/lang/String; = "No_Update"

.field public static final MATCHING_UPDATEABLE_CRITICAL:Ljava/lang/String; = "Critical"

.field public static final MATCHING_UPDATEABLE_EXCEPTION:Ljava/lang/String; = "Exception"

.field public static final MATCHING_UPDATEABLE_NORMAL:Ljava/lang/String; = "Normal"

.field private static final NEED_TO_SUBSTRING:Ljava/lang/String; = "SAMSUNG-"

.field public static final NO_MATCHING_APPLICATION:Ljava/lang/String; = "No_Matching_App"

.field public static final PATH_FOR_EXTERNAL_STORAGE:Ljava/lang/String;

.field public static final SERVER_URL:Ljava/lang/String; = "http://hub.samsungapps.com/product/appCheck.as"

.field public static final TAG:Ljava/lang/String;

.field private static final TEST_FILE_FOLDER:Ljava/lang/String;

.field private static final TEST_FILE_NAME_FOR_UPDATE:Ljava/lang/String; = "go_to_andromeda.test"

.field private static mHMDownloadManager:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;


# instance fields
.field private isSamsungDevice:Z

.field private mContext:Landroid/content/Context;

.field private mDownloadThread:Landroid/os/HandlerThread;

.field private mDownloadThreadHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private supportsInternalMemory:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-class v0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Gear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->PATH_FOR_EXTERNAL_STORAGE:Ljava/lang/String;

    .line 75
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TEST_FILE_FOLDER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mContext:Landroid/content/Context;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->isSamsungDevice:Z

    .line 103
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->isSamsungDevice:Z

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->supportsInternalMemory:Z

    .line 104
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DOWNLOAD_THREAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mDownloadThread:Landroid/os/HandlerThread;

    .line 105
    iget-object v0, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mDownloadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 106
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mDownloadThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mDownloadThreadHandler:Landroid/os/Handler;

    .line 107
    iput-object p2, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mHandler:Landroid/os/Handler;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->getHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method static getCSC()Ljava/lang/String;
    .locals 4

    .prologue
    .line 860
    sget-object v2, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v3, "getCSC()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/4 v0, 0x0

    .line 863
    .local v0, "cscVersion":Ljava/lang/String;
    const/4 v1, 0x0

    .line 867
    .local v1, "value":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->getCSCVersion()Ljava/lang/String;

    move-result-object v1

    .line 868
    if-nez v1, :cond_1

    .line 869
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/systemproperty/SystemPropertyFactory;->getAndroidSystemProperty()Lcom/samsung/android/app/watchmanager/plugin/libinterface/systemproperty/AndroidSystemInterface;

    move-result-object v2

    const-string v3, "ro.csc.sales_code"

    invoke-interface {v2, v3}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/systemproperty/AndroidSystemInterface;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 884
    :cond_0
    :goto_0
    return-object v0

    .line 872
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->isCSCExistFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 875
    const-string v2, "FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 876
    sget-object v2, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v3, "getCSC()-->getCSCVersion() ::Failed to read CSC Version."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 881
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getCSCVersion()Ljava/lang/String;
    .locals 10

    .prologue
    .line 906
    sget-object v8, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v9, "getCSCVersion()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v6, 0x0

    .line 909
    .local v6, "s":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v8, "/system/csc/sales_code.dat"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 910
    .local v4, "mFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 912
    const/16 v8, 0x14

    new-array v0, v8, [B

    .line 913
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 915
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 917
    .local v5, "noOfBytes":I
    if-eqz v5, :cond_1

    .line 918
    new-instance v7, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v6    # "s":Ljava/lang/String;
    .local v7, "s":Ljava/lang/String;
    move-object v6, v7

    .line 927
    .end local v7    # "s":Ljava/lang/String;
    .restart local v6    # "s":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    .line 929
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 933
    :goto_1
    const/4 v2, 0x0

    .line 938
    .end local v0    # "buffer":[B
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v5    # "noOfBytes":I
    :cond_0
    :goto_2
    return-object v6

    .line 920
    .restart local v0    # "buffer":[B
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v5    # "noOfBytes":I
    :cond_1
    :try_start_3
    new-instance v7, Ljava/lang/String;

    const-string v8, "FAIL"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v6    # "s":Ljava/lang/String;
    .restart local v7    # "s":Ljava/lang/String;
    move-object v6, v7

    .end local v7    # "s":Ljava/lang/String;
    .restart local v6    # "s":Ljava/lang/String;
    goto :goto_0

    .line 930
    :catch_0
    move-exception v1

    .line 931
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 922
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v5    # "noOfBytes":I
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 923
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 927
    if-eqz v2, :cond_0

    .line 929
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 933
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_4
    const/4 v2, 0x0

    goto :goto_2

    .line 930
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 931
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 924
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 925
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 927
    if-eqz v2, :cond_0

    .line 929
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 933
    :goto_6
    const/4 v2, 0x0

    goto :goto_2

    .line 930
    :catch_4
    move-exception v1

    .line 931
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 927
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_7
    if-eqz v2, :cond_2

    .line 929
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 933
    :goto_8
    const/4 v2, 0x0

    :cond_2
    throw v8

    .line 930
    :catch_5
    move-exception v1

    .line 931
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 927
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_7

    .line 924
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_5

    .line 922
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public static getDownloadCheckServerURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 699
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 700
    .local v6, "szModel":Ljava/lang/String;
    const-string v7, "SAMSUNG-"

    .line 702
    .local v7, "szPrefix":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 703
    const-string v9, ""

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 706
    :cond_0
    const-string v4, ""

    .line 707
    .local v4, "szMCC":Ljava/lang/String;
    const-string v5, ""

    .line 712
    .local v5, "szMNC":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "connectivity"

    .line 713
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 714
    .local v0, "cManager":Landroid/net/ConnectivityManager;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 715
    .local v2, "mobile":Landroid/net/NetworkInfo;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 717
    .local v8, "wifi":Landroid/net/NetworkInfo;
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->getPD()Ljava/lang/String;

    move-result-object v3

    .line 718
    .local v3, "pd":Ljava/lang/String;
    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 720
    const-string v4, "000"

    .line 721
    const-string v5, "000"

    .line 737
    :goto_0
    const-string v1, "https://vas.samsungapps.com/stub/stubDownload.as"

    .line 738
    .local v1, "download_server_url":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?appId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 739
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&encImei="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->getIMEI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 740
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&deviceId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 741
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&mcc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 742
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&mnc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 743
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&csc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->getCSC()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 744
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&sdkVer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 745
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&pd="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 747
    .end local v1    # "download_server_url":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 725
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 726
    const-string v4, "505"

    .line 727
    const-string v5, "00"

    goto/16 :goto_0

    .line 728
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 729
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->getMCC()Ljava/lang/String;

    move-result-object v4

    .line 730
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->getMNC()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 732
    :cond_3
    sget-object v9, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v10, "Internet connection failed."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getDownloadMetaData(Ljava/lang/String;)Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;
    .locals 6
    .param p0, "downloadCheckServerURL"    # Ljava/lang/String;

    .prologue
    .line 968
    const/4 v2, 0x0

    .line 970
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {p0}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->getHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 973
    .local v0, "conn":Ljava/net/HttpURLConnection;
    if-eqz v0, :cond_1

    .line 974
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 975
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 977
    if-eqz v2, :cond_1

    .line 978
    invoke-static {v2}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->parserDownloadResponse(Ljava/io/InputStream;)Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 980
    .local v3, "reponse":Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;
    if-eqz v3, :cond_1

    .line 992
    if-eqz v0, :cond_0

    .line 994
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 998
    .end local v3    # "reponse":Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;
    :cond_0
    :goto_0
    return-object v3

    .line 992
    :cond_1
    if-eqz v0, :cond_2

    .line 994
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 998
    :cond_2
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 988
    :catch_0
    move-exception v1

    .line 990
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 992
    if-eqz v0, :cond_2

    .line 994
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 992
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    .line 994
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v4
.end method

.method private static getHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 6
    .param p0, "serverURL"    # Ljava/lang/String;

    .prologue
    .line 1095
    const/4 v1, 0x0

    .line 1097
    .local v1, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 1099
    const v4, 0xea60

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1100
    const/16 v4, 0x3a98

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1101
    const-string v4, "GET"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1102
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1103
    const-string v4, "Connection"

    const-string v5, "close"

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1113
    .end local v3    # "url":Ljava/net/URL;
    :goto_0
    return-object v1

    .line 1105
    :catch_0
    move-exception v2

    .line 1106
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 1107
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .line 1108
    .local v2, "e":Ljava/net/ProtocolException;
    invoke-virtual {v2}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_0

    .line 1109
    .end local v2    # "e":Ljava/net/ProtocolException;
    :catch_2
    move-exception v2

    .line 1110
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static getIMEI()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x10

    .line 751
    sget-object v7, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v8, "getIMEI()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const-string v3, ""

    .line 754
    .local v3, "imei":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    .line 755
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 756
    .local v6, "telMgr":Landroid/telephony/TelephonyManager;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 758
    .local v5, "md5":Ljava/lang/StringBuffer;
    if-eqz v6, :cond_1

    .line 759
    const/4 v0, 0x0

    .line 761
    .local v0, "digest":[B
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    const-string v8, "000000000000000"

    .line 762
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 761
    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 767
    :goto_0
    const/4 v4, 0x0

    .line 768
    .local v4, "len":I
    if-eqz v0, :cond_0

    .line 769
    array-length v4, v0

    .line 770
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 771
    aget-byte v7, v0, v2

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    invoke-static {v7, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 772
    aget-byte v7, v0, v2

    and-int/lit8 v7, v7, 0xf

    shr-int/lit8 v7, v7, 0x0

    invoke-static {v7, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 770
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 763
    .end local v2    # "i":I
    .end local v4    # "len":I
    :catch_0
    move-exception v1

    .line 764
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 776
    .end local v0    # "digest":[B
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 777
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 779
    return-object v3
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/samsung/android/hostmanager/pm/HMDownloadManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 92
    sget-object v0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mHMDownloadManager:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mHMDownloadManager:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    .line 95
    :cond_0
    sget-object v0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mHMDownloadManager:Lcom/samsung/android/hostmanager/pm/HMDownloadManager;

    return-object v0
.end method

.method static getMCC()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 823
    sget-object v3, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v4, "getMCC()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const/4 v0, 0x0

    .line 826
    .local v0, "mcc":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    .line 827
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 830
    .local v2, "telMgr":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 831
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, "networkOperator":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_0

    .line 834
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 838
    .end local v1    # "networkOperator":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method static getMNC()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 842
    sget-object v3, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v4, "getMNC()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const/4 v0, 0x0

    .line 845
    .local v0, "mnc":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    .line 846
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 848
    .local v2, "telMgr":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 849
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 850
    .local v1, "networkOperator":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 852
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 856
    .end local v1    # "networkOperator":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method static getPD()Ljava/lang/String;
    .locals 2

    .prologue
    .line 798
    sget-object v0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "getPD()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->isTestMode4Update()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method static isCSCExistFile()Z
    .locals 6

    .prologue
    .line 888
    sget-object v3, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v4, "isCSCExistFile()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 v2, 0x0

    .line 891
    .local v2, "result":Z
    new-instance v1, Ljava/io/File;

    const-string v3, "/system/csc/sales_code.dat"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 894
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 895
    if-nez v2, :cond_0

    .line 896
    sget-object v3, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v4, "CSC doesn\'t exist."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    :cond_0
    :goto_0
    return v2

    .line 898
    :catch_0
    move-exception v0

    .line 899
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCSCExistFile() :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static isTestMode4Update()Z
    .locals 8

    .prologue
    .line 804
    sget-object v4, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v5, "isTestMode4Update()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, "bIsTestMode":Z
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TEST_FILE_FOLDER:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 808
    .local v3, "rootFolder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 809
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 810
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 811
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "go_to_andromeda.test"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 812
    const/4 v0, 0x1

    .line 817
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    sget-object v4, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isTestMode4Update(): bIsTestMode = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return v0

    .line 810
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static parserDownloadResponse(Ljava/io/InputStream;)Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;
    .locals 15
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v10, 0x0

    const/4 v14, 0x4

    .line 1005
    const-string v0, ""

    .line 1006
    .local v0, "appId":Ljava/lang/String;
    const-string v6, ""

    .line 1007
    .local v6, "resultCode":Ljava/lang/String;
    const-string v1, ""

    .line 1008
    .local v1, "downloadURL":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1012
    .local v9, "versionCode":I
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 1014
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1016
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v4, p0, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1017
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 1020
    .local v5, "parserEvent":I
    :goto_0
    const/4 v11, 0x1

    if-eq v5, v11, :cond_6

    .line 1021
    sget-object v11, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkDownload()-->parserEvent = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const/4 v11, 0x2

    if-ne v5, v11, :cond_3

    .line 1023
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1024
    .local v7, "tag":Ljava/lang/String;
    const-string v11, "appId"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1025
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 1026
    .local v8, "type":I
    if-ne v8, v14, :cond_0

    .line 1027
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1028
    sget-object v11, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "downloadCheck(), appId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    .end local v8    # "type":I
    :cond_0
    const-string v11, "resultCode"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1033
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 1034
    .restart local v8    # "type":I
    if-ne v8, v14, :cond_1

    .line 1035
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 1036
    sget-object v11, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "downloadCheck(), resultCode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    .end local v8    # "type":I
    :cond_1
    const-string v11, "downloadURI"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1042
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 1043
    .restart local v8    # "type":I
    if-ne v8, v14, :cond_2

    .line 1044
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1045
    sget-object v11, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "downloadCheck(), DownloadURI = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    .end local v8    # "type":I
    :cond_2
    const-string v11, "versionCode"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1050
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1051
    .restart local v8    # "type":I
    if-ne v8, v14, :cond_3

    .line 1053
    :try_start_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1054
    sget-object v11, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "downloadCheck(), versionCode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1066
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    :cond_3
    :goto_1
    :try_start_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto/16 :goto_0

    .line 1056
    .restart local v7    # "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    :catch_0
    move-exception v2

    .line 1058
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v11, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "downloadCheck() VersionCode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1059
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1068
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "parserEvent":I
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_1
    move-exception v2

    .line 1069
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1075
    if-eqz p0, :cond_4

    .line 1076
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1083
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    :goto_2
    sget-object v11, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DownloadCheckResponse appId ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " resultCode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " downloadURL="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 1087
    new-instance v10, Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;

    invoke-direct {v10, v0, v6, v1, v9}, Lcom/samsung/android/hostmanager/pm/DownloadCheckResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1090
    :cond_5
    return-object v10

    .line 1075
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "parserEvent":I
    :cond_6
    if-eqz p0, :cond_4

    .line 1076
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 1077
    :catch_2
    move-exception v2

    .line 1078
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1077
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "parserEvent":I
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v2

    .line 1078
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1070
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 1072
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1075
    if-eqz p0, :cond_4

    .line 1076
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    .line 1077
    :catch_5
    move-exception v2

    .line 1078
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1074
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 1075
    if-eqz p0, :cond_7

    .line 1076
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1079
    :cond_7
    :goto_3
    throw v10

    .line 1077
    :catch_6
    move-exception v2

    .line 1078
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method changeFilePermission(Ljava/lang/String;I)I
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 607
    const-string v2, "android.os.FileUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 608
    .local v0, "fileUtils":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "setPermissions"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v9

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 611
    .local v1, "setPermissions":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method getDownloadPath()Ljava/lang/String;
    .locals 8

    .prologue
    .line 567
    sget-object v5, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v6, " getDownloadPath() "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v4, 0x0

    .line 570
    .local v4, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_4

    .line 572
    iget-boolean v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->supportsInternalMemory:Z

    if-eqz v5, :cond_1

    .line 573
    iget-object v5, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mContext:Landroid/content/Context;

    const-string v6, "Providers"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 575
    .local v3, "mydir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 577
    const/16 v5, 0x1fd

    :try_start_0
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->changeFilePermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    .end local v3    # "mydir":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v4

    .line 578
    .restart local v3    # "mydir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 582
    .end local v0    # "e1":Ljava/lang/Exception;
    .end local v3    # "mydir":Ljava/io/File;
    :cond_1
    sget-object v5, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v6, "Internal memory not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->PATH_FOR_EXTERNAL_STORAGE:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 584
    .restart local v3    # "mydir":Ljava/io/File;
    if-eqz v3, :cond_2

    .line 585
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 586
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    .line 588
    .local v1, "fileExist":Z
    if-nez v1, :cond_0

    .line 589
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 590
    .local v2, "isMakeFolder":Z
    if-eqz v3, :cond_3

    .line 591
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 593
    :cond_3
    sget-object v5, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " External folder created: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 599
    .end local v1    # "fileExist":Z
    .end local v2    # "isMakeFolder":Z
    .end local v3    # "mydir":Ljava/io/File;
    :cond_4
    sget-object v5, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v6, "context is null, can\'t get path for storing providers."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getPackageVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 616
    const/4 v2, 0x0

    .line 617
    .local v2, "versionName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 619
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 624
    :goto_0
    if-eqz v1, :cond_0

    .line 625
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 629
    :goto_1
    return-object v2

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 627
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v2, "1.0.0"

    goto :goto_1
.end method

.method getUpdateCheckServerURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 634
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 635
    .local v2, "device":Ljava/lang/String;
    const-string v8, "SAMSUNG-"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "SAMSUNG-"

    .line 636
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 637
    const-string v8, "SAMSUNG-"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    .line 638
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    .line 637
    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 641
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->getPackageVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 644
    .local v7, "versionName":Ljava/lang/String;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 647
    .local v0, "apiLevel":I
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->getPD()Ljava/lang/String;

    move-result-object v5

    .line 648
    .local v5, "pd":Ljava/lang/String;
    const/4 v4, 0x0

    .line 649
    .local v4, "mnc":Ljava/lang/String;
    const/4 v3, 0x0

    .line 651
    .local v3, "mcc":Ljava/lang/String;
    const-string v8, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 653
    const-string v3, "000"

    .line 654
    const-string v4, "000"

    .line 666
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->getCSC()Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "csc":Ljava/lang/String;
    const-string v6, "http://hub.samsungapps.com/product/appCheck.as?"

    .line 669
    .local v6, "server_url":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "appInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 670
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&deviceId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 673
    if-eqz v3, :cond_3

    .line 674
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&mcc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 679
    :goto_1
    if-eqz v4, :cond_4

    .line 680
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&mnc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 685
    :goto_2
    if-eqz v1, :cond_5

    .line 686
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&csc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 691
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&openApi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&pd="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 693
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 694
    return-object v6

    .line 658
    .end local v1    # "csc":Ljava/lang/String;
    .end local v6    # "server_url":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->isWifiOnlyModel()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 659
    const-string v3, "505"

    .line 663
    :goto_4
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->getMNC()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 661
    :cond_2
    invoke-static {}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->getMCC()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 676
    .restart local v1    # "csc":Ljava/lang/String;
    .restart local v6    # "server_url":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&mcc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 682
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&mnc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 688
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&csc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3
.end method

.method isNetworkAvailable()Z
    .locals 4

    .prologue
    .line 957
    sget-object v2, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v3, "check for network availability."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v2, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 959
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 961
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 962
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

.method isPackageInstalled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 943
    const/4 v1, 0x0

    .line 945
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 950
    :goto_0
    if-eqz v1, :cond_0

    .line 951
    const/4 v2, 0x1

    .line 953
    :cond_0
    return v2

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method isWifiOnlyModel()Z
    .locals 5

    .prologue
    .line 783
    sget-object v3, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->TAG:Ljava/lang/String;

    const-string v4, "isWifiOnlyModel()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v2, 0x1

    .line 786
    .local v2, "res":Z
    iget-object v3, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    .line 787
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 788
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    .line 789
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 790
    .local v1, "mobileNetwork":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 791
    const/4 v2, 0x0

    .line 794
    :cond_0
    return v2
.end method

.method public startDownload(Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;)V
    .locals 3
    .param p1, "downloadAppInfo"    # Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->isNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mDownloadThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/hostmanager/pm/HMDownloadManager$DownloadRunnable;-><init>(Lcom/samsung/android/hostmanager/pm/HMDownloadManager;Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 119
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public stopDownload()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mDownloadThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mDownloadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/samsung/android/hostmanager/pm/HMDownloadManager;->mDownloadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 129
    :cond_0
    return-void
.end method
