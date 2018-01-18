.class public Lcom/samsung/android/hostmanager/pm/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# static fields
.field private static final BUFFER:I = 0x400

.field static final EXT_GZIP:Ljava/lang/String; = ".gzip"

.field static final EXT_JAR:Ljava/lang/String; = ".jar"

.field static final EXT_RAR:Ljava/lang/String; = ".rar"

.field static final EXT_ZIP:Ljava/lang/String; = ".zip"

.field private static final TAG:Ljava/lang/String;

.field static final extSeparator:Ljava/lang/String; = "."

.field static final nameAssociater:Ljava/lang/String; = "_"

.field static final pathSeparator:Ljava/lang/String;


# instance fields
.field private _files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _unzipFile:Ljava/lang/String;

.field private _zipFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/hostmanager/pm/FileManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/pm/FileManager;->TAG:Ljava/lang/String;

    .line 30
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/hostmanager/pm/FileManager;->pathSeparator:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .param p2, "extractPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v3, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_files:Ljava/util/List;

    .line 38
    iput-object v3, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_zipFile:Ljava/lang/String;

    .line 39
    iput-object v3, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_unzipFile:Ljava/lang/String;

    .line 43
    if-eqz p1, :cond_1

    .line 44
    iput-object p1, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_zipFile:Ljava/lang/String;

    .line 46
    if-nez p2, :cond_2

    .line 48
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_zipFile:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "name":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 52
    .local v1, "index":I
    if-lez v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 53
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/pm/FileManager;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_unzipFile:Ljava/lang/String;

    .line 59
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "index":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    iput-object p2, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_unzipFile:Ljava/lang/String;

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p2, "zipFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v3, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_files:Ljava/util/List;

    .line 38
    iput-object v3, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_zipFile:Ljava/lang/String;

    .line 39
    iput-object v3, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_unzipFile:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_files:Ljava/util/List;

    .line 65
    if-eqz p2, :cond_1

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_zipFile:Ljava/lang/String;

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_files:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 69
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_files:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "name":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 73
    .local v1, "index":I
    if-lez v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 74
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/hostmanager/pm/FileManager;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_zipFile:Ljava/lang/String;

    goto :goto_0
.end method

.method public static changeFilePermission(Ljava/lang/String;I)I
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
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

    .line 250
    const-string v2, "android.os.FileUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 251
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

    .line 254
    .local v1, "setPermissions":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

.method public static isFileSizeExceedingLimit(Ljava/lang/String;J)Z
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "limitInBytes"    # J

    .prologue
    const/4 v1, 0x0

    .line 235
    sget-object v4, Lcom/samsung/android/hostmanager/pm/FileManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFileSizeExceedingLimit("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-eqz p0, :cond_0

    .line 238
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 241
    .local v2, "size":J
    sget-object v4, Lcom/samsung/android/hostmanager/pm/FileManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    cmp-long v4, v2, p1

    if-ltz v4, :cond_0

    const/4 v1, 0x1

    .line 246
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "size":J
    :cond_0
    return v1
.end method

.method private removeFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 202
    sget-object v1, Lcom/samsung/android/hostmanager/pm/FileManager;->TAG:Ljava/lang/String;

    const-string v2, "removeFile()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    if-eqz p1, :cond_0

    .line 205
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    sget-object v1, Lcom/samsung/android/hostmanager/pm/FileManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File deleted, located at path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 210
    .restart local v0    # "f":Ljava/io/File;
    :cond_1
    sget-object v1, Lcom/samsung/android/hostmanager/pm/FileManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete file, located at path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method clearMemory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    sget-object v0, Lcom/samsung/android/hostmanager/pm/FileManager;->TAG:Ljava/lang/String;

    const-string v1, "clearMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_files:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 221
    iput-object v2, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_files:Ljava/util/List;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_zipFile:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 225
    iput-object v2, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_zipFile:Ljava/lang/String;

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_unzipFile:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 229
    iput-object v2, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_unzipFile:Ljava/lang/String;

    .line 231
    :cond_2
    return-void
.end method

.method compress()Z
    .locals 23

    .prologue
    .line 80
    sget-object v20, Lcom/samsung/android/hostmanager/pm/FileManager;->TAG:Ljava/lang/String;

    const-string v21, "compress()"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/pm/FileManager;->_zipFile:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/pm/FileManager;->_zipFile:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/pm/FileManager;->_files:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    const/16 v19, 0x1

    .line 83
    .local v19, "result":Z
    :goto_0
    if-eqz v19, :cond_16

    .line 84
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/pm/FileManager;->_zipFile:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 86
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v19

    .line 88
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/pm/FileManager;->_files:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v14

    .line 90
    .local v14, "len":I
    if-eqz v19, :cond_15

    .line 91
    const/16 v19, 0x0

    .line 92
    const/4 v15, 0x0

    .line 93
    .local v15, "origin":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 94
    .local v4, "dest":Ljava/io/FileOutputStream;
    const/16 v17, 0x0

    .line 95
    .local v17, "out":Ljava/util/zip/ZipOutputStream;
    const/4 v10, 0x0

    .line 97
    .local v10, "fi":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/pm/FileManager;->_zipFile:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_21
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .local v5, "dest":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v18, Ljava/util/zip/ZipOutputStream;

    new-instance v20, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_17
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    .local v18, "out":Ljava/util/zip/ZipOutputStream;
    const/16 v20, 0x400

    :try_start_2
    move/from16 v0, v20

    new-array v3, v0, [B
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_18
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 102
    .local v3, "data":[B
    const/4 v13, 0x0

    .local v13, "i":I
    move-object v11, v10

    .local v11, "fi":Ljava/lang/Object;
    move-object/from16 v16, v15

    .local v16, "origin":Ljava/lang/Object;
    move-object v9, v8

    .end local v8    # "f":Ljava/io/File;
    .end local v10    # "fi":Ljava/io/FileInputStream;
    .end local v15    # "origin":Ljava/io/BufferedInputStream;
    .local v9, "f":Ljava/io/File;
    :goto_1
    if-ge v13, v14, :cond_a

    .line 103
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/pm/FileManager;->_files:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 104
    .local v12, "filePath":Ljava/lang/String;
    if-eqz v12, :cond_9

    .line 105
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_23
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_19
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 106
    .end local v9    # "f":Ljava/io/File;
    .restart local v8    # "f":Ljava/io/File;
    :try_start_4
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 107
    const/16 v19, 0x0

    .line 108
    sget-object v20, Lcom/samsung/android/hostmanager/pm/FileManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Compression, Adding file: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_24
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1a
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 110
    .restart local v10    # "fi":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v15, Ljava/io/BufferedInputStream;

    .end local v11    # "fi":Ljava/lang/Object;
    const/16 v20, 0x400

    move/from16 v0, v20

    invoke-direct {v15, v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_25
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_20
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1b
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 112
    .restart local v15    # "origin":Ljava/io/BufferedInputStream;
    :try_start_6
    new-instance v7, Ljava/util/zip/ZipEntry;

    .end local v16    # "origin":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 113
    .local v7, "entry":Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 115
    :goto_2
    const/16 v20, 0x0

    const/16 v21, 0x400

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v3, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    .local v2, "count":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v2, v0, :cond_7

    .line 116
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_18
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 131
    .end local v2    # "count":I
    .end local v3    # "data":[B
    .end local v7    # "entry":Ljava/util/zip/ZipEntry;
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v13    # "i":I
    :catch_0
    move-exception v6

    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .line 132
    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 138
    if-eqz v15, :cond_1

    .line 140
    :try_start_8
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 144
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_4
    const/4 v15, 0x0

    .line 147
    :cond_1
    if-eqz v10, :cond_2

    .line 149
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 153
    :goto_5
    const/4 v10, 0x0

    .line 156
    :cond_2
    if-eqz v17, :cond_3

    .line 158
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 162
    :goto_6
    const/16 v17, 0x0

    .line 165
    :cond_3
    if-eqz v4, :cond_4

    .line 167
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 171
    :goto_7
    const/4 v4, 0x0

    .line 181
    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v8    # "f":Ljava/io/File;
    .end local v10    # "fi":Ljava/io/FileInputStream;
    .end local v14    # "len":I
    .end local v15    # "origin":Ljava/io/BufferedInputStream;
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    :cond_4
    :goto_8
    sget-object v20, Lcom/samsung/android/hostmanager/pm/FileManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Compression finished, result: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-nez v19, :cond_5

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/pm/FileManager;->_zipFile:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/pm/FileManager;->removeFile(Ljava/lang/String;)V

    .line 184
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/pm/FileManager;->_zipFile:Ljava/lang/String;

    .line 186
    :cond_5
    return v19

    .line 82
    .end local v19    # "result":Z
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 118
    .restart local v2    # "count":I
    .restart local v3    # "data":[B
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v7    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v8    # "f":Ljava/io/File;
    .restart local v10    # "fi":Ljava/io/FileInputStream;
    .restart local v12    # "filePath":Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v14    # "len":I
    .restart local v15    # "origin":Ljava/io/BufferedInputStream;
    .restart local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v19    # "result":Z
    :cond_7
    const/16 v19, 0x1

    .line 119
    :try_start_c
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V

    .line 120
    const/4 v15, 0x0

    .line 121
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_18
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 122
    const/4 v10, 0x0

    .line 102
    .end local v2    # "count":I
    .end local v7    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "fi":Ljava/io/FileInputStream;
    .end local v15    # "origin":Ljava/io/BufferedInputStream;
    :goto_9
    add-int/lit8 v13, v13, 0x1

    move-object v11, v10

    .restart local v11    # "fi":Ljava/lang/Object;
    move-object/from16 v16, v15

    .restart local v16    # "origin":Ljava/lang/Object;
    move-object v9, v8

    .end local v8    # "f":Ljava/io/File;
    .restart local v9    # "f":Ljava/io/File;
    goto/16 :goto_1

    .line 124
    .end local v9    # "f":Ljava/io/File;
    .restart local v8    # "f":Ljava/io/File;
    :cond_8
    :try_start_d
    sget-object v20, Lcom/samsung/android/hostmanager/pm/FileManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "File/Folder: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " doesn\'t exist, so it was skipped"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_24
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_1f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1a
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-object v10, v11

    .end local v11    # "fi":Ljava/lang/Object;
    .local v10, "fi":Ljava/lang/Object;
    move-object/from16 v15, v16

    .end local v16    # "origin":Ljava/lang/Object;
    .local v15, "origin":Ljava/lang/Object;
    goto :goto_9

    .line 127
    .end local v8    # "f":Ljava/io/File;
    .end local v10    # "fi":Ljava/lang/Object;
    .end local v15    # "origin":Ljava/lang/Object;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v11    # "fi":Ljava/lang/Object;
    .restart local v16    # "origin":Ljava/lang/Object;
    :cond_9
    :try_start_e
    sget-object v20, Lcom/samsung/android/hostmanager/pm/FileManager;->TAG:Ljava/lang/String;

    const-string v21, "File/Folder: null, so it was skipped"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .end local v11    # "fi":Ljava/lang/Object;
    .restart local v10    # "fi":Ljava/lang/Object;
    move-object/from16 v15, v16

    .end local v16    # "origin":Ljava/lang/Object;
    .restart local v15    # "origin":Ljava/lang/Object;
    move-object v8, v9

    .end local v9    # "f":Ljava/io/File;
    .restart local v8    # "f":Ljava/io/File;
    goto :goto_9

    .line 130
    .end local v8    # "f":Ljava/io/File;
    .end local v10    # "fi":Ljava/lang/Object;
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v15    # "origin":Ljava/lang/Object;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v11    # "fi":Ljava/lang/Object;
    .restart local v16    # "origin":Ljava/lang/Object;
    :cond_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_23
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_1e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_19
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 138
    if-eqz v16, :cond_1a

    .line 140
    :try_start_f
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1

    .line 144
    :goto_a
    const/4 v15, 0x0

    .line 147
    .end local v16    # "origin":Ljava/lang/Object;
    :goto_b
    if-eqz v11, :cond_19

    .line 149
    :try_start_10
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    .line 153
    :goto_c
    const/4 v10, 0x0

    .line 156
    .end local v11    # "fi":Ljava/lang/Object;
    :goto_d
    if-eqz v18, :cond_18

    .line 158
    :try_start_11
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    .line 162
    :goto_e
    const/16 v17, 0x0

    .line 165
    .end local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    :goto_f
    if-eqz v5, :cond_17

    .line 167
    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4

    .line 171
    :goto_10
    const/4 v4, 0x0

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "f":Ljava/io/File;
    .restart local v8    # "f":Ljava/io/File;
    goto/16 :goto_8

    .line 141
    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v8    # "f":Ljava/io/File;
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v11    # "fi":Ljava/lang/Object;
    .restart local v16    # "origin":Ljava/lang/Object;
    .restart local v18    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v6

    .line 142
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 150
    .end local v6    # "e":Ljava/io/IOException;
    .end local v16    # "origin":Ljava/lang/Object;
    :catch_2
    move-exception v6

    .line 151
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 159
    .end local v6    # "e":Ljava/io/IOException;
    .end local v11    # "fi":Ljava/lang/Object;
    :catch_3
    move-exception v6

    .line 160
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 168
    .end local v6    # "e":Ljava/io/IOException;
    .end local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_4
    move-exception v6

    .line 169
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 141
    .end local v3    # "data":[B
    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .end local v9    # "f":Ljava/io/File;
    .end local v13    # "i":I
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "f":Ljava/io/File;
    .local v10, "fi":Ljava/io/FileInputStream;
    .local v15, "origin":Ljava/io/BufferedInputStream;
    :catch_5
    move-exception v6

    .line 142
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 150
    .end local v6    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 151
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 159
    .end local v6    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 160
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 168
    .end local v6    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v6

    .line 169
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 133
    .end local v6    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v6

    .line 134
    .local v6, "e":Ljava/io/FileNotFoundException;
    :goto_11
    :try_start_13
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 138
    if-eqz v15, :cond_b

    .line 140
    :try_start_14
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    .line 144
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :goto_12
    const/4 v15, 0x0

    .line 147
    :cond_b
    if-eqz v10, :cond_c

    .line 149
    :try_start_15
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    .line 153
    :goto_13
    const/4 v10, 0x0

    .line 156
    :cond_c
    if-eqz v17, :cond_d

    .line 158
    :try_start_16
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c

    .line 162
    :goto_14
    const/16 v17, 0x0

    .line 165
    :cond_d
    if-eqz v4, :cond_4

    .line 167
    :try_start_17
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d

    .line 171
    :goto_15
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 141
    .restart local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_a
    move-exception v6

    .line 142
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 150
    .end local v6    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v6

    .line 151
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 159
    .end local v6    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v6

    .line 160
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    .line 168
    .end local v6    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v6

    .line 169
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 135
    .end local v6    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v6

    .line 136
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_16
    :try_start_18
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 138
    if-eqz v15, :cond_e

    .line 140
    :try_start_19
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_f

    .line 144
    :goto_17
    const/4 v15, 0x0

    .line 147
    :cond_e
    if-eqz v10, :cond_f

    .line 149
    :try_start_1a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_10

    .line 153
    :goto_18
    const/4 v10, 0x0

    .line 156
    :cond_f
    if-eqz v17, :cond_10

    .line 158
    :try_start_1b
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_11

    .line 162
    :goto_19
    const/16 v17, 0x0

    .line 165
    :cond_10
    if-eqz v4, :cond_4

    .line 167
    :try_start_1c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_12

    .line 171
    :goto_1a
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 141
    :catch_f
    move-exception v6

    .line 142
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    .line 150
    :catch_10
    move-exception v6

    .line 151
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    .line 159
    :catch_11
    move-exception v6

    .line 160
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 168
    :catch_12
    move-exception v6

    .line 169
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    .line 138
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v20

    :goto_1b
    if-eqz v15, :cond_11

    .line 140
    :try_start_1d
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_13

    .line 144
    :goto_1c
    const/4 v15, 0x0

    .line 147
    :cond_11
    if-eqz v10, :cond_12

    .line 149
    :try_start_1e
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_14

    .line 153
    :goto_1d
    const/4 v10, 0x0

    .line 156
    :cond_12
    if-eqz v17, :cond_13

    .line 158
    :try_start_1f
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_15

    .line 162
    :goto_1e
    const/16 v17, 0x0

    .line 165
    :cond_13
    if-eqz v4, :cond_14

    .line 167
    :try_start_20
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_16

    .line 171
    :goto_1f
    const/4 v4, 0x0

    :cond_14
    throw v20

    .line 141
    :catch_13
    move-exception v6

    .line 142
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    .line 150
    .end local v6    # "e":Ljava/io/IOException;
    :catch_14
    move-exception v6

    .line 151
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    .line 159
    .end local v6    # "e":Ljava/io/IOException;
    :catch_15
    move-exception v6

    .line 160
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    .line 168
    .end local v6    # "e":Ljava/io/IOException;
    :catch_16
    move-exception v6

    .line 169
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 175
    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "fi":Ljava/io/FileInputStream;
    .end local v15    # "origin":Ljava/io/BufferedInputStream;
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    :cond_15
    sget-object v20, Lcom/samsung/android/hostmanager/pm/FileManager;->TAG:Ljava/lang/String;

    const-string v21, "Unable to delete pre-existing compressed file."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 178
    .end local v8    # "f":Ljava/io/File;
    .end local v14    # "len":I
    :cond_16
    sget-object v20, Lcom/samsung/android/hostmanager/pm/FileManager;->TAG:Ljava/lang/String;

    const-string v21, "At least one of Compression parameters is not valid."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 138
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v8    # "f":Ljava/io/File;
    .restart local v10    # "fi":Ljava/io/FileInputStream;
    .restart local v14    # "len":I
    .restart local v15    # "origin":Ljava/io/BufferedInputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v20

    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    goto :goto_1b

    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v18    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_2
    move-exception v20

    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    goto :goto_1b

    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v8    # "f":Ljava/io/File;
    .end local v10    # "fi":Ljava/io/FileInputStream;
    .end local v15    # "origin":Ljava/io/BufferedInputStream;
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "data":[B
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v11    # "fi":Ljava/lang/Object;
    .restart local v13    # "i":I
    .restart local v16    # "origin":Ljava/lang/Object;
    .restart local v18    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_3
    move-exception v20

    move-object v10, v11

    .restart local v10    # "fi":Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .restart local v15    # "origin":Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9    # "f":Ljava/io/File;
    .restart local v8    # "f":Ljava/io/File;
    goto :goto_1b

    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v10    # "fi":Ljava/io/FileInputStream;
    .end local v15    # "origin":Ljava/io/BufferedInputStream;
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v12    # "filePath":Ljava/lang/String;
    .restart local v18    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_4
    move-exception v20

    move-object v10, v11

    .restart local v10    # "fi":Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .restart local v15    # "origin":Ljava/io/BufferedInputStream;
    goto :goto_1b

    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v11    # "fi":Ljava/lang/Object;
    .end local v15    # "origin":Ljava/io/BufferedInputStream;
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v18    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_5
    move-exception v20

    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .restart local v15    # "origin":Ljava/io/BufferedInputStream;
    goto :goto_1b

    .line 135
    .end local v3    # "data":[B
    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v16    # "origin":Ljava/lang/Object;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    :catch_17
    move-exception v6

    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    goto/16 :goto_16

    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v18    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_18
    move-exception v6

    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    goto/16 :goto_16

    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v8    # "f":Ljava/io/File;
    .end local v10    # "fi":Ljava/io/FileInputStream;
    .end local v15    # "origin":Ljava/io/BufferedInputStream;
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "data":[B
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v11    # "fi":Ljava/lang/Object;
    .restart local v13    # "i":I
    .restart local v16    # "origin":Ljava/lang/Object;
    .restart local v18    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_19
    move-exception v6

    move-object v10, v11

    .restart local v10    # "fi":Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .restart local v15    # "origin":Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9    # "f":Ljava/io/File;
    .restart local v8    # "f":Ljava/io/File;
    goto/16 :goto_16

    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v10    # "fi":Ljava/io/FileInputStream;
    .end local v15    # "origin":Ljava/io/BufferedInputStream;
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v12    # "filePath":Ljava/lang/String;
    .restart local v18    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_1a
    move-exception v6

    move-object v10, v11

    .restart local v10    # "fi":Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .restart local v15    # "origin":Ljava/io/BufferedInputStream;
    goto/16 :goto_16

    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v11    # "fi":Ljava/lang/Object;
    .end local v15    # "origin":Ljava/io/BufferedInputStream;
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v18    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_1b
    move-exception v6

    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .restart local v15    # "origin":Ljava/io/BufferedInputStream;
    goto/16 :goto_16

    .line 133
    .end local v3    # "data":[B
    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v16    # "origin":Ljava/lang/Object;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    :catch_1c
    move-exception v6

    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    goto/16 :goto_11

    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v18    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_1d
    move-exception v6

    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    goto/16 :goto_11

    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v8    # "f":Ljava/io/File;
    .end local v10    # "fi":Ljava/io/FileInputStream;
    .end local v15    # "origin":Ljava/io/BufferedInputStream;
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "data":[B
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v11    # "fi":Ljava/lang/Object;
    .restart local v13    # "i":I
    .restart local v16    # "origin":Ljava/lang/Object;
    .restart local v18    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_1e
    move-exception v6

    move-object v10, v11

    .restart local v10    # "fi":Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .restart local v15    # "origin":Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9    # "f":Ljava/io/File;
    .restart local v8    # "f":Ljava/io/File;
    goto/16 :goto_11

    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v10    # "fi":Ljava/io/FileInputStream;
    .end local v15    # "origin":Ljava/io/BufferedInputStream;
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v12    # "filePath":Ljava/lang/String;
    .restart local v18    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_1f
    move-exception v6

    move-object v10, v11

    .restart local v10    # "fi":Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .restart local v15    # "origin":Ljava/io/BufferedInputStream;
    goto/16 :goto_11

    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v11    # "fi":Ljava/lang/Object;
    .end local v15    # "origin":Ljava/io/BufferedInputStream;
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v18    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_20
    move-exception v6

    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .restart local v15    # "origin":Ljava/io/BufferedInputStream;
    goto/16 :goto_11

    .line 131
    .end local v3    # "data":[B
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v16    # "origin":Ljava/lang/Object;
    :catch_21
    move-exception v6

    goto/16 :goto_3

    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    :catch_22
    move-exception v6

    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v8    # "f":Ljava/io/File;
    .end local v10    # "fi":Ljava/io/FileInputStream;
    .end local v15    # "origin":Ljava/io/BufferedInputStream;
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "data":[B
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v11    # "fi":Ljava/lang/Object;
    .restart local v13    # "i":I
    .restart local v16    # "origin":Ljava/lang/Object;
    .restart local v18    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_23
    move-exception v6

    move-object v10, v11

    .restart local v10    # "fi":Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .restart local v15    # "origin":Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9    # "f":Ljava/io/File;
    .restart local v8    # "f":Ljava/io/File;
    goto/16 :goto_3

    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v10    # "fi":Ljava/io/FileInputStream;
    .end local v15    # "origin":Ljava/io/BufferedInputStream;
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v12    # "filePath":Ljava/lang/String;
    .restart local v18    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_24
    move-exception v6

    move-object v10, v11

    .restart local v10    # "fi":Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .restart local v15    # "origin":Ljava/io/BufferedInputStream;
    goto/16 :goto_3

    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v11    # "fi":Ljava/lang/Object;
    .end local v15    # "origin":Ljava/io/BufferedInputStream;
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v18    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_25
    move-exception v6

    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .restart local v15    # "origin":Ljava/io/BufferedInputStream;
    goto/16 :goto_3

    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v8    # "f":Ljava/io/File;
    .end local v10    # "fi":Ljava/io/FileInputStream;
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v15    # "origin":Ljava/io/BufferedInputStream;
    .end local v16    # "origin":Ljava/lang/Object;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v9    # "f":Ljava/io/File;
    :cond_17
    move-object v4, v5

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v4    # "dest":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "f":Ljava/io/File;
    .restart local v8    # "f":Ljava/io/File;
    goto/16 :goto_8

    .end local v4    # "dest":Ljava/io/FileOutputStream;
    .end local v8    # "f":Ljava/io/File;
    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v18    # "out":Ljava/util/zip/ZipOutputStream;
    :cond_18
    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v17    # "out":Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_f

    .end local v17    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v11    # "fi":Ljava/lang/Object;
    .restart local v18    # "out":Ljava/util/zip/ZipOutputStream;
    :cond_19
    move-object v10, v11

    .end local v11    # "fi":Ljava/lang/Object;
    .local v10, "fi":Ljava/lang/Object;
    goto/16 :goto_d

    .end local v10    # "fi":Ljava/lang/Object;
    .restart local v11    # "fi":Ljava/lang/Object;
    .restart local v16    # "origin":Ljava/lang/Object;
    :cond_1a
    move-object/from16 v15, v16

    .end local v16    # "origin":Ljava/lang/Object;
    .local v15, "origin":Ljava/lang/Object;
    goto/16 :goto_b
.end method

.method getCompressedFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/samsung/android/hostmanager/pm/FileManager;->TAG:Ljava/lang/String;

    const-string v1, "getCompressedFilePath()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_zipFile:Ljava/lang/String;

    return-object v0
.end method

.method getDecompressedFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    sget-object v0, Lcom/samsung/android/hostmanager/pm/FileManager;->TAG:Ljava/lang/String;

    const-string v1, "getDecompressedFilePath()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/samsung/android/hostmanager/pm/FileManager;->_unzipFile:Ljava/lang/String;

    return-object v0
.end method
