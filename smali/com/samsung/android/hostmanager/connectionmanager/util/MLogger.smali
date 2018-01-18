.class Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;
.super Ljava/lang/Object;
.source "MLogger.java"


# static fields
.field private static MAX_FILE_BUFF:I

.field private static MAX_FILE_SIZE:J

.field private static logfile:Ljava/io/File;

.field private static mMsgLog:[[B

.field private static mMsgNewLog:[[B

.field static mSwitchBuffer:Z

.field static mTimer:Z

.field private static mbCounter:I

.field private static mbNewCounter:I

.field static mbSize:I

.field private static mlogDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 19
    const v0, 0x7d000

    sput v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->MAX_FILE_BUFF:I

    .line 20
    const-wide/32 v2, 0xa00000

    sput-wide v2, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->MAX_FILE_SIZE:J

    .line 22
    sput-object v1, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->logfile:Ljava/io/File;

    .line 24
    sput v4, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mbSize:I

    .line 25
    sput v4, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mbCounter:I

    .line 26
    sput v4, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mbNewCounter:I

    move-object v0, v1

    .line 27
    check-cast v0, [[B

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mMsgLog:[[B

    .line 28
    check-cast v1, [[B

    sput-object v1, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mMsgNewLog:[[B

    .line 29
    sput-boolean v4, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mTimer:Z

    .line 30
    sput-boolean v4, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mSwitchBuffer:Z

    .line 31
    const-string v0, "/Android/CMLog/"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mlogDir:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->init()V

    .line 35
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDirandFile()V
    .locals 8

    .prologue
    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mlogDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "fileLogDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "fileDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dumpState-CM.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "filePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->logfile:Ljava/io/File;

    .line 67
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->logfile:Ljava/io/File;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->logfile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->MAX_FILE_SIZE:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 69
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->deletePreviousFiles()V

    .line 72
    :try_start_0
    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->logfile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static deletePreviousFiles()V
    .locals 7

    .prologue
    .line 297
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->getListOfFiles()[Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "fileListstr":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 301
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 302
    .local v2, "logFiles":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mlogDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 308
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 301
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 314
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "logFiles":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static fillBuff(Ljava/lang/String;)V
    .locals 8
    .param p0, "LogMsg"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 188
    .local v0, "curTime":J
    new-instance v2, Ljava/sql/Date;

    invoke-direct {v2, v0, v1}, Ljava/sql/Date;-><init>(J)V

    .line 189
    .local v2, "date":Ljava/sql/Date;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss.SSSZ"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 191
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    if-eqz v5, :cond_0

    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 196
    :cond_0
    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 198
    .local v4, "msgBuff":[B
    sget-boolean v6, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mSwitchBuffer:Z

    if-nez v6, :cond_2

    .line 201
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mMsgLog:[[B

    sget v7, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mbCounter:I

    aput-object v4, v6, v7

    .line 210
    :goto_0
    if-eqz v4, :cond_1

    .line 211
    sget v6, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mbSize:I

    array-length v7, v4

    add-int/2addr v6, v7

    sput v6, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mbSize:I

    .line 219
    .end local v4    # "msgBuff":[B
    :cond_1
    :goto_1
    return-void

    .line 207
    .restart local v4    # "msgBuff":[B
    :cond_2
    sget-object v6, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mMsgNewLog:[[B

    sget v7, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mbNewCounter:I

    aput-object v4, v6, v7
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    .end local v4    # "msgBuff":[B
    :catch_0
    move-exception v3

    .line 215
    .local v3, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getCounter(Z)I
    .locals 2
    .param p0, "buffer"    # Z

    .prologue
    const/4 v0, 0x0

    .line 99
    if-eqz p0, :cond_1

    .line 101
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mMsgLog:[[B

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 102
    sput-boolean v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mTimer:Z

    .line 113
    :goto_0
    return v0

    .line 104
    :cond_0
    sget v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mbCounter:I

    goto :goto_0

    .line 108
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mMsgNewLog:[[B

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 109
    sput-boolean v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mTimer:Z

    goto :goto_0

    .line 111
    :cond_2
    sget v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mbNewCounter:I

    goto :goto_0
.end method

.method private static getListOfFiles()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mlogDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 258
    new-instance v3, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger$2;

    invoke-direct {v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger$2;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "list_names":[Ljava/lang/String;
    return-object v1
.end method

.method public static final info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 223
    sget v1, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mbSize:I

    sget v2, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->MAX_FILE_BUFF:I

    if-le v1, v2, :cond_1

    .line 226
    sget-boolean v1, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mTimer:Z

    if-nez v1, :cond_1

    .line 228
    sput v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mbSize:I

    .line 229
    sget-boolean v1, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mSwitchBuffer:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mSwitchBuffer:Z

    .line 231
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger$1;-><init>()V

    .line 238
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger$1;->start()V

    .line 242
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->fillBuff(Ljava/lang/String;)V

    .line 246
    sget-boolean v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mSwitchBuffer:Z

    if-nez v0, :cond_2

    .line 247
    sget v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mbCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mbCounter:I

    .line 250
    :goto_0
    return-void

    .line 249
    :cond_2
    sget v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mbNewCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mbNewCounter:I

    goto :goto_0
.end method

.method private static init()V
    .locals 2

    .prologue
    .line 39
    sget-boolean v0, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->FILE_WRITE:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 41
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->sysLogging()V

    .line 44
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->initializeBuff()V

    .line 47
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->createDirandFile()V

    .line 49
    :cond_0
    return-void
.end method

.method private static initializeBuff()V
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->MAX_FILE_BUFF:I

    new-array v0, v0, [[B

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mMsgLog:[[B

    .line 54
    sget v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->MAX_FILE_BUFF:I

    new-array v0, v0, [[B

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mMsgNewLog:[[B

    .line 55
    return-void
.end method

.method private static initializeCounter(Z)V
    .locals 3
    .param p0, "bBuffer"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    if-eqz p0, :cond_0

    .line 84
    sput v1, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mbCounter:I

    .line 85
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mMsgLog:[[B

    aput-object v2, v0, v1

    .line 94
    :goto_0
    sput-boolean v1, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mTimer:Z

    .line 95
    return-void

    .line 89
    :cond_0
    sput v1, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mbNewCounter:I

    .line 90
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mMsgNewLog:[[B

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public static startFileWrite(Z)V
    .locals 13
    .param p0, "bBuffer"    # Z

    .prologue
    const/4 v12, 0x1

    .line 117
    const/4 v6, 0x0

    .line 118
    .local v6, "mChannel":Ljava/nio/channels/FileChannel;
    const/4 v7, 0x0

    .line 119
    .local v7, "memBuf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 121
    .local v2, "fStream":Ljava/io/FileOutputStream;
    sget-boolean v8, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mTimer:Z

    if-ne v8, v12, :cond_0

    .line 124
    invoke-static {p0}, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->getCounter(Z)I

    move-result v4

    .line 125
    .local v4, "iCounter":I
    if-nez v4, :cond_1

    .line 184
    .end local v4    # "iCounter":I
    :cond_0
    :goto_0
    return-void

    .line 129
    .restart local v4    # "iCounter":I
    :cond_1
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->logfile:Ljava/io/File;

    if-eqz v8, :cond_2

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->logfile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    sget-wide v10, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->MAX_FILE_SIZE:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 131
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->deletePreviousFiles()V

    .line 132
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->createDirandFile()V

    .line 136
    :cond_2
    :try_start_0
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->logfile:Ljava/io/File;

    if-eqz v8, :cond_3

    .line 137
    new-instance v3, Ljava/io/FileOutputStream;

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->logfile:Ljava/io/File;

    const/4 v9, 0x1

    invoke-direct {v3, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .end local v2    # "fStream":Ljava/io/FileOutputStream;
    .local v3, "fStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 138
    .end local v3    # "fStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fStream":Ljava/io/FileOutputStream;
    :cond_3
    if-eqz v2, :cond_4

    .line 139
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 141
    :cond_4
    if-eqz v6, :cond_0

    .line 142
    const/4 v5, 0x0

    .local v5, "iTer":I
    :goto_1
    if-ge v5, v4, :cond_a

    .line 144
    if-ne p0, v12, :cond_7

    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mMsgLog:[[B

    aget-object v8, v8, v5

    if-eqz v8, :cond_7

    .line 145
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mMsgLog:[[B

    aget-object v8, v8, v5

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 150
    :cond_5
    :goto_2
    if-eqz v7, :cond_6

    .line 153
    :try_start_1
    invoke-virtual {v6, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 147
    :cond_7
    :try_start_2
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mMsgNewLog:[[B

    aget-object v8, v8, v5

    if-eqz v8, :cond_5

    .line 148
    sget-object v8, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->mMsgNewLog:[[B

    aget-object v8, v8, v5

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    goto :goto_2

    .line 154
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "iTer":I
    :catch_1
    move-exception v0

    .line 173
    .restart local v0    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_8

    .line 174
    :try_start_3
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 176
    :cond_8
    if-eqz v2, :cond_9

    .line 177
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 181
    :cond_9
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "iTer":I
    :cond_a
    :try_start_4
    invoke-static {p0}, Lcom/samsung/android/hostmanager/connectionmanager/util/MLogger;->initializeCounter(Z)V

    .line 163
    if-eqz v6, :cond_b

    .line 164
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 166
    :cond_b
    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 178
    .end local v5    # "iTer":I
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 179
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method
