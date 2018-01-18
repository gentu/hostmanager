.class public Lcom/samsung/android/hostmanager/log/MLogger;
.super Ljava/lang/Object;
.source "MLogger.java"


# static fields
.field private static MAX_FILE_BUFF:I

.field public static MAX_FILE_SIZE:J

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

    .line 20
    const v0, 0xc800

    sput v0, Lcom/samsung/android/hostmanager/log/MLogger;->MAX_FILE_BUFF:I

    .line 21
    const-wide/32 v2, 0x1e00000

    sput-wide v2, Lcom/samsung/android/hostmanager/log/MLogger;->MAX_FILE_SIZE:J

    .line 23
    sput-object v1, Lcom/samsung/android/hostmanager/log/MLogger;->logfile:Ljava/io/File;

    .line 25
    sput v4, Lcom/samsung/android/hostmanager/log/MLogger;->mbSize:I

    .line 26
    sput v4, Lcom/samsung/android/hostmanager/log/MLogger;->mbCounter:I

    .line 27
    sput v4, Lcom/samsung/android/hostmanager/log/MLogger;->mbNewCounter:I

    move-object v0, v1

    .line 28
    check-cast v0, [[B

    sput-object v0, Lcom/samsung/android/hostmanager/log/MLogger;->mMsgLog:[[B

    .line 29
    check-cast v1, [[B

    sput-object v1, Lcom/samsung/android/hostmanager/log/MLogger;->mMsgNewLog:[[B

    .line 30
    sput-boolean v4, Lcom/samsung/android/hostmanager/log/MLogger;->mTimer:Z

    .line 31
    sput-boolean v4, Lcom/samsung/android/hostmanager/log/MLogger;->mSwitchBuffer:Z

    .line 32
    const-string v0, "/Android/HMLog/"

    sput-object v0, Lcom/samsung/android/hostmanager/log/MLogger;->mlogDir:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/samsung/android/hostmanager/log/MLogger;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDirandFile()V
    .locals 8

    .prologue
    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/hostmanager/log/MLogger;->mlogDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "fileLogDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "fileDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 67
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dumpState-HM(Gear2S).log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "filePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/samsung/android/hostmanager/log/MLogger;->logfile:Ljava/io/File;

    .line 70
    sget-object v4, Lcom/samsung/android/hostmanager/log/MLogger;->logfile:Ljava/io/File;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/hostmanager/log/MLogger;->logfile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/android/hostmanager/log/MLogger;->MAX_FILE_SIZE:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 72
    invoke-static {}, Lcom/samsung/android/hostmanager/log/MLogger;->deletePreviousFiles()V

    .line 74
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/samsung/android/hostmanager/log/MLogger;->logfile:Ljava/io/File;

    .line 77
    :try_start_0
    sget-object v4, Lcom/samsung/android/hostmanager/log/MLogger;->logfile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_1
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static deletePreviousFiles()V
    .locals 7

    .prologue
    .line 289
    invoke-static {}, Lcom/samsung/android/hostmanager/log/MLogger;->getListOfFiles()[Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "fileListstr":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 293
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 294
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

    sget-object v6, Lcom/samsung/android/hostmanager/log/MLogger;->mlogDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 300
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 308
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "logFiles":Ljava/lang/String;
    :cond_0
    return-void

    .line 293
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "logFiles":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static fillBuff(Ljava/lang/String;)V
    .locals 9
    .param p0, "LogMsg"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 190
    .local v0, "curTime":J
    new-instance v2, Ljava/sql/Date;

    invoke-direct {v2, v0, v1}, Ljava/sql/Date;-><init>(J)V

    .line 191
    .local v2, "date":Ljava/sql/Date;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss.SSSZ"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 193
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    if-eqz v5, :cond_0

    .line 194
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

    .line 198
    :cond_0
    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 200
    .local v4, "msgBuff":[B
    sget-boolean v6, Lcom/samsung/android/hostmanager/log/MLogger;->mSwitchBuffer:Z

    if-nez v6, :cond_3

    .line 203
    sget-object v6, Lcom/samsung/android/hostmanager/log/MLogger;->mMsgLog:[[B

    sget v7, Lcom/samsung/android/hostmanager/log/MLogger;->mbCounter:I

    aput-object v4, v6, v7

    .line 221
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 222
    sget v6, Lcom/samsung/android/hostmanager/log/MLogger;->mbSize:I

    array-length v7, v4

    add-int/2addr v6, v7

    sput v6, Lcom/samsung/android/hostmanager/log/MLogger;->mbSize:I

    .line 230
    .end local v4    # "msgBuff":[B
    :cond_2
    :goto_1
    return-void

    .line 209
    .restart local v4    # "msgBuff":[B
    :cond_3
    sget-object v6, Lcom/samsung/android/hostmanager/log/MLogger;->mMsgLog:[[B

    if-eqz v6, :cond_1

    .line 210
    array-length v6, v4

    sget-object v7, Lcom/samsung/android/hostmanager/log/MLogger;->mMsgLog:[[B

    array-length v7, v7

    if-ge v6, v7, :cond_5

    .line 211
    sget v6, Lcom/samsung/android/hostmanager/log/MLogger;->mbNewCounter:I

    sget v7, Lcom/samsung/android/hostmanager/log/MLogger;->MAX_FILE_BUFF:I

    if-le v6, v7, :cond_4

    .line 212
    const/4 v6, 0x0

    sput v6, Lcom/samsung/android/hostmanager/log/MLogger;->mbNewCounter:I

    .line 214
    :cond_4
    sget-object v6, Lcom/samsung/android/hostmanager/log/MLogger;->mMsgNewLog:[[B

    sget v7, Lcom/samsung/android/hostmanager/log/MLogger;->mbNewCounter:I

    aput-object v4, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    .end local v4    # "msgBuff":[B
    :catch_0
    move-exception v3

    .line 226
    .local v3, "e1":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 216
    .end local v3    # "e1":Ljava/lang/Exception;
    .restart local v4    # "msgBuff":[B
    :cond_5
    :try_start_1
    const-string v6, "MLogger"

    const-string v7, "pass the log"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v6, "MLogger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "msgBuff = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static getCounter(Z)I
    .locals 2
    .param p0, "buffer"    # Z

    .prologue
    const/4 v0, 0x0

    .line 105
    if-eqz p0, :cond_1

    .line 107
    sget-object v1, Lcom/samsung/android/hostmanager/log/MLogger;->mMsgLog:[[B

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 108
    sput-boolean v0, Lcom/samsung/android/hostmanager/log/MLogger;->mTimer:Z

    .line 119
    :goto_0
    return v0

    .line 110
    :cond_0
    sget v0, Lcom/samsung/android/hostmanager/log/MLogger;->mbCounter:I

    goto :goto_0

    .line 114
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/log/MLogger;->mMsgNewLog:[[B

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 115
    sput-boolean v0, Lcom/samsung/android/hostmanager/log/MLogger;->mTimer:Z

    goto :goto_0

    .line 117
    :cond_2
    sget v0, Lcom/samsung/android/hostmanager/log/MLogger;->mbNewCounter:I

    goto :goto_0
.end method

.method private static getListOfFiles()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/log/MLogger;->mlogDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 272
    .local v1, "list_names":[Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 274
    new-instance v3, Lcom/samsung/android/hostmanager/log/MLogger$2;

    invoke-direct {v3}, Lcom/samsung/android/hostmanager/log/MLogger$2;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 285
    return-object v1
.end method

.method public static final info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 234
    sget v2, Lcom/samsung/android/hostmanager/log/MLogger;->mbSize:I

    sget v3, Lcom/samsung/android/hostmanager/log/MLogger;->MAX_FILE_BUFF:I

    if-le v2, v3, :cond_1

    .line 237
    sget-boolean v2, Lcom/samsung/android/hostmanager/log/MLogger;->mTimer:Z

    if-nez v2, :cond_1

    .line 239
    sput v1, Lcom/samsung/android/hostmanager/log/MLogger;->mbSize:I

    .line 240
    sget-boolean v2, Lcom/samsung/android/hostmanager/log/MLogger;->mSwitchBuffer:Z

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/samsung/android/hostmanager/log/MLogger;->mSwitchBuffer:Z

    .line 242
    new-instance v1, Lcom/samsung/android/hostmanager/log/MLogger$1;

    invoke-direct {v1}, Lcom/samsung/android/hostmanager/log/MLogger$1;-><init>()V

    .line 249
    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/log/MLogger$1;->start()V

    .line 254
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/log/MLogger;->fillBuff(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    sget-boolean v1, Lcom/samsung/android/hostmanager/log/MLogger;->mSwitchBuffer:Z

    if-nez v1, :cond_2

    .line 262
    sget v1, Lcom/samsung/android/hostmanager/log/MLogger;->mbCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/android/hostmanager/log/MLogger;->mbCounter:I

    .line 265
    :goto_1
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    sget v1, Lcom/samsung/android/hostmanager/log/MLogger;->mbNewCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/android/hostmanager/log/MLogger;->mbNewCounter:I

    goto :goto_1
.end method

.method private static init()V
    .locals 2

    .prologue
    .line 40
    sget-boolean v0, Lcom/samsung/android/hostmanager/log/Log;->FILE_WRITE:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 42
    invoke-static {}, Lcom/samsung/android/hostmanager/log/Log;->sysLogging()V

    .line 45
    invoke-static {}, Lcom/samsung/android/hostmanager/log/MLogger;->initializeBuff()V

    .line 48
    invoke-static {}, Lcom/samsung/android/hostmanager/log/MLogger;->createDirandFile()V

    .line 50
    :cond_0
    return-void
.end method

.method private static initializeBuff()V
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/samsung/android/hostmanager/log/MLogger;->MAX_FILE_BUFF:I

    new-array v0, v0, [[B

    sput-object v0, Lcom/samsung/android/hostmanager/log/MLogger;->mMsgLog:[[B

    .line 55
    sget v0, Lcom/samsung/android/hostmanager/log/MLogger;->MAX_FILE_BUFF:I

    new-array v0, v0, [[B

    sput-object v0, Lcom/samsung/android/hostmanager/log/MLogger;->mMsgNewLog:[[B

    .line 56
    return-void
.end method

.method private static initializeCounter(Z)V
    .locals 3
    .param p0, "bBuffer"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    if-eqz p0, :cond_0

    .line 90
    sput v1, Lcom/samsung/android/hostmanager/log/MLogger;->mbCounter:I

    .line 91
    sget-object v0, Lcom/samsung/android/hostmanager/log/MLogger;->mMsgLog:[[B

    aput-object v2, v0, v1

    .line 100
    :goto_0
    sput-boolean v1, Lcom/samsung/android/hostmanager/log/MLogger;->mTimer:Z

    .line 101
    return-void

    .line 95
    :cond_0
    sput v1, Lcom/samsung/android/hostmanager/log/MLogger;->mbNewCounter:I

    .line 96
    sget-object v0, Lcom/samsung/android/hostmanager/log/MLogger;->mMsgNewLog:[[B

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public static startFileWrite(Z)V
    .locals 13
    .param p0, "bBuffer"    # Z

    .prologue
    const/4 v12, 0x1

    .line 123
    const/4 v6, 0x0

    .line 124
    .local v6, "mChannel":Ljava/nio/channels/FileChannel;
    const/4 v7, 0x0

    .line 125
    .local v7, "memBuf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 127
    .local v2, "fStream":Ljava/io/FileOutputStream;
    sget-boolean v8, Lcom/samsung/android/hostmanager/log/MLogger;->mTimer:Z

    if-ne v8, v12, :cond_0

    .line 129
    invoke-static {p0}, Lcom/samsung/android/hostmanager/log/MLogger;->getCounter(Z)I

    move-result v4

    .line 130
    .local v4, "iCounter":I
    if-nez v4, :cond_1

    .line 186
    .end local v4    # "iCounter":I
    :cond_0
    :goto_0
    return-void

    .line 134
    .restart local v4    # "iCounter":I
    :cond_1
    sget-object v8, Lcom/samsung/android/hostmanager/log/MLogger;->logfile:Ljava/io/File;

    if-eqz v8, :cond_2

    sget-object v8, Lcom/samsung/android/hostmanager/log/MLogger;->logfile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    sget-wide v10, Lcom/samsung/android/hostmanager/log/MLogger;->MAX_FILE_SIZE:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 135
    invoke-static {}, Lcom/samsung/android/hostmanager/log/MLogger;->deletePreviousFiles()V

    .line 136
    invoke-static {}, Lcom/samsung/android/hostmanager/log/MLogger;->createDirandFile()V

    .line 140
    :cond_2
    :try_start_0
    sget-object v8, Lcom/samsung/android/hostmanager/log/MLogger;->logfile:Ljava/io/File;

    if-eqz v8, :cond_3

    .line 141
    new-instance v3, Ljava/io/FileOutputStream;

    sget-object v8, Lcom/samsung/android/hostmanager/log/MLogger;->logfile:Ljava/io/File;

    const/4 v9, 0x1

    invoke-direct {v3, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .end local v2    # "fStream":Ljava/io/FileOutputStream;
    .local v3, "fStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 142
    .end local v3    # "fStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fStream":Ljava/io/FileOutputStream;
    :cond_3
    if-eqz v2, :cond_4

    .line 143
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 144
    :cond_4
    if-eqz v6, :cond_9

    .line 145
    const/4 v5, 0x0

    .local v5, "iTer":I
    :goto_1
    if-ge v5, v4, :cond_8

    .line 147
    if-ne p0, v12, :cond_7

    sget-object v8, Lcom/samsung/android/hostmanager/log/MLogger;->mMsgLog:[[B

    aget-object v8, v8, v5

    if-eqz v8, :cond_7

    .line 148
    sget-object v8, Lcom/samsung/android/hostmanager/log/MLogger;->mMsgLog:[[B

    aget-object v8, v8, v5

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 153
    :cond_5
    :goto_2
    if-eqz v7, :cond_6

    .line 154
    invoke-virtual {v6, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 145
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 150
    :cond_7
    sget-object v8, Lcom/samsung/android/hostmanager/log/MLogger;->mMsgNewLog:[[B

    aget-object v8, v8, v5

    if-eqz v8, :cond_5

    .line 151
    sget-object v8, Lcom/samsung/android/hostmanager/log/MLogger;->mMsgNewLog:[[B

    aget-object v8, v8, v5

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    goto :goto_2

    .line 157
    :cond_8
    invoke-static {p0}, Lcom/samsung/android/hostmanager/log/MLogger;->initializeCounter(Z)V

    .line 158
    if-eqz v6, :cond_9

    .line 159
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 161
    .end local v5    # "iTer":I
    :cond_9
    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_a

    .line 168
    :try_start_1
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    :cond_a
    :goto_3
    if-eqz v2, :cond_b

    .line 175
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 183
    :cond_b
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 169
    :catch_1
    move-exception v1

    .line 171
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 176
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 178
    .restart local v1    # "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method
