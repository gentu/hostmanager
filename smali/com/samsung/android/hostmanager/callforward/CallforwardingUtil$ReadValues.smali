.class public Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;
.super Ljava/lang/Object;
.source "CallforwardingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadValues"
.end annotation


# static fields
.field public static final MCC:I = 0x0

.field public static final MNC:I = 0x1


# instance fields
.field private final mFileDir:Ljava/lang/String;

.field private final mFileName:Ljava/lang/String;

.field private final mFilePath:Ljava/lang/String;

.field private mMCC:Ljava/lang/String;

.field private mMNC:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/callforward"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;->mFileDir:Ljava/lang/String;

    .line 30
    const-string v0, "values.txt"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;->mFileName:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;->mFileDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "values.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;->mFilePath:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;->mMCC:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;->mMNC:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;->isExternalStorageReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;->readValuesFromFile()V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "It could not read file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getMCC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;->mMCC:Ljava/lang/String;

    return-object v0
.end method

.method public getMNC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;->mMNC:Ljava/lang/String;

    return-object v0
.end method

.method public isExistedFile()Z
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public isExternalStorageReadable()Z
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readValuesFromFile()V
    .locals 9

    .prologue
    .line 45
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "readValuesFromFile()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v3, 0x0

    .line 49
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 51
    .local v0, "bufferReader":Ljava/io/BufferedReader;
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;->isExistedFile()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 52
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file is existed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "str":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 59
    iput-object v5, p0, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;->mMCC:Ljava/lang/String;

    .line 61
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 62
    iput-object v5, p0, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;->mMNC:Ljava/lang/String;

    .line 65
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MCC : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;->mMCC:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", MNC : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil$ReadValues;->mMNC:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 70
    if-eqz v4, :cond_2

    .line 71
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 74
    :cond_2
    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 85
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "str":Ljava/lang/String;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_4
    :goto_0
    return-void

    .line 78
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 81
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 66
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "str":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 67
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 70
    if-eqz v3, :cond_5

    .line 71
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 74
    :cond_5
    if-eqz v0, :cond_4

    .line 75
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 78
    :catch_2
    move-exception v2

    .line 79
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 70
    :goto_2
    if-eqz v3, :cond_6

    .line 71
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 74
    :cond_6
    if-eqz v0, :cond_7

    .line 75
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 80
    :cond_7
    :goto_3
    throw v6

    .line 78
    :catch_3
    move-exception v2

    .line 79
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 83
    .end local v2    # "e":Ljava/io/IOException;
    :cond_8
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallforwardingUtil;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file it not existed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 66
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method
