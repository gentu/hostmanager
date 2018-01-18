.class public Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;
.super Ljava/lang/Object;
.source "ProviderRestoreHelper.java"


# static fields
.field private static final DATA_BACKUP_SHARED_PREF:Ljava/lang/String; = "data_backup_shared_pref"

.field private static final PROVIDER_BACKUP_FOLDER:Ljava/lang/String; = "provider_backup"

.field private static final TAG:Ljava/lang/String;

.field private static final URI_CONTENT_PROVIDER_NAME:Ljava/lang/String; = ".backupandshareprovider"

.field private static final URI_SCHEME:Ljava/lang/String; = "content://"

.field public static final sAllowedFolderForBackup:[Ljava/lang/String;


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const-class v0, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "files"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "shared_prefs"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "databases"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->sAllowedFolderForBackup:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->context:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 11
    .param p0, "deletePath"    # Ljava/lang/String;

    .prologue
    .line 140
    sget-object v6, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v5, 0x0

    .line 143
    .local v5, "result":Z
    if-eqz p0, :cond_0

    .line 144
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 146
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 147
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 148
    .local v4, "path":[Ljava/io/File;
    if-eqz v4, :cond_0

    .line 149
    array-length v6, v4

    if-nez v6, :cond_2

    .line 150
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    .line 151
    sget-object v6, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to delete directory at: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "path":[Ljava/io/File;
    :cond_0
    :goto_0
    sget-object v6, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")-->result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return v5

    .line 153
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "path":[Ljava/io/File;
    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    .line 156
    :cond_2
    array-length v1, v4

    .line 157
    .local v1, "failCount":I
    array-length v7, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_4

    aget-object v3, v4, v6

    .line 158
    .local v3, "filePath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "absolutePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->delete(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 160
    sget-object v8, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to delete file / directory at: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 162
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 165
    .end local v0    # "absolutePath":Ljava/lang/String;
    .end local v3    # "filePath":Ljava/io/File;
    :cond_4
    if-nez v1, :cond_0

    .line 166
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_5

    .line 167
    sget-object v6, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to delete directory at: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_5
    const/4 v5, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "failCount":I
    .end local v4    # "path":[Ljava/io/File;
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_7

    .line 176
    sget-object v6, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to delete file at: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    :cond_7
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 182
    :cond_8
    sget-object v6, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid deletion at: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getBackupFolderPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "provider_backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getContentProviderURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".backupandshareprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFilesList(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .param p1, "packageFolder"    # Ljava/lang/String;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    sget-object v2, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFilesList("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->getFolderToBackup(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 87
    .local v0, "folderToBackup":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "list":[Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFilesList, result ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-object v1
.end method

.method private getFolderToBackup(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p1, "packageFolder"    # Ljava/lang/String;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p3}, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->getBackupFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 106
    sget-object v3, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->TAG:Ljava/lang/String;

    const-string v4, "Copy()"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 108
    :cond_0
    sget-object v3, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->TAG:Ljava/lang/String;

    const-string v4, "Can not copy file"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 115
    .local v0, "buf":[B
    :goto_1
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-lez v2, :cond_4

    .line 116
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 118
    .end local v2    # "len":I
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    if-eqz p1, :cond_3

    .line 123
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 129
    :cond_3
    :goto_2
    if-eqz p2, :cond_1

    .line 130
    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 132
    :catch_1
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "len":I
    :cond_4
    if-eqz p1, :cond_5

    .line 123
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 129
    :cond_5
    :goto_3
    if-eqz p2, :cond_1

    .line 130
    :try_start_5
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 132
    :catch_2
    move-exception v1

    .line 133
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 126
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 125
    .end local v2    # "len":I
    :catch_4
    move-exception v1

    .line 126
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 121
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 122
    if-eqz p1, :cond_6

    .line 123
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 129
    :cond_6
    :goto_4
    if-eqz p2, :cond_7

    .line 130
    :try_start_7
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 134
    :cond_7
    :goto_5
    throw v3

    .line 125
    :catch_5
    move-exception v1

    .line 126
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 132
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 133
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method public isProviderRestoreRequired()Z
    .locals 5

    .prologue
    .line 37
    sget-object v2, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->TAG:Ljava/lang/String;

    const-string v3, "isProviderRestoreRequired()"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, "result":Z
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->context:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->getBackupFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 41
    sget-object v2, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isProviderRestoreRequired()->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return v1
.end method

.method public startProvidersRestore()V
    .locals 27

    .prologue
    .line 46
    sget-object v18, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->TAG:Ljava/lang/String;

    const-string v19, "startProvidersRestore()"

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "data_backup_shared_pref"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 48
    .local v16, "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v12

    .line 49
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 50
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 51
    .local v14, "packageFolder":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 52
    .local v15, "packageName":Ljava/lang/Object;
    instance-of v0, v15, Ljava/lang/String;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 53
    sget-object v22, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->sAllowedFolderForBackup:[Ljava/lang/String;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/16 v18, 0x0

    move/from16 v20, v18

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    aget-object v7, v22, v20

    .line 55
    .local v7, "folderName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v7, v1}, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->getFilesList(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "fileList":[Ljava/lang/String;
    if-eqz v6, :cond_1

    array-length v0, v6

    move/from16 v18, v0

    if-lez v18, :cond_1

    .line 57
    array-length v0, v6

    move/from16 v24, v0

    const/16 v18, 0x0

    move/from16 v19, v18

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    aget-object v5, v6, v19

    .line 58
    .local v5, "file":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v25, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 59
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v15

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->getContentProviderURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v25, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 60
    .local v17, "uri":Landroid/net/Uri;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v14, v7, v1}, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->getFolderToBackup(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v25, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "fullFilePath":Ljava/lang/String;
    sget-object v18, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "trying to restore fullFilePath ["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "] "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v18, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "trying to restore file ["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "] "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v9, 0x0

    .line 64
    .local v9, "inStream":Ljava/io/BufferedInputStream;
    const/4 v13, 0x0

    .line 66
    .local v13, "outStream":Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v25, "write"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v13

    .line 67
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v11, "inputFile":Ljava/io/File;
    new-instance v10, Ljava/io/BufferedInputStream;

    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v9    # "inStream":Ljava/io/BufferedInputStream;
    .local v10, "inStream":Ljava/io/BufferedInputStream;
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13}, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    .line 57
    .end local v10    # "inStream":Ljava/io/BufferedInputStream;
    .end local v11    # "inputFile":Ljava/io/File;
    .restart local v9    # "inStream":Ljava/io/BufferedInputStream;
    :goto_2
    add-int/lit8 v18, v19, 0x1

    move/from16 v19, v18

    goto/16 :goto_1

    .line 70
    :catch_0
    move-exception v3

    .line 71
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_3
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 53
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "file":Ljava/lang/String;
    .end local v8    # "fullFilePath":Ljava/lang/String;
    .end local v9    # "inStream":Ljava/io/BufferedInputStream;
    .end local v13    # "outStream":Ljava/io/OutputStream;
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_1
    add-int/lit8 v18, v20, 0x1

    move/from16 v20, v18

    goto/16 :goto_0

    .line 80
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v6    # "fileList":[Ljava/lang/String;
    .end local v7    # "folderName":Ljava/lang/String;
    .end local v14    # "packageFolder":Ljava/lang/String;
    .end local v15    # "packageName":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->getBackupFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/hostmanager/br/ProviderRestoreHelper;->delete(Ljava/lang/String;)Z

    .line 82
    return-void

    .line 70
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v5    # "file":Ljava/lang/String;
    .restart local v6    # "fileList":[Ljava/lang/String;
    .restart local v7    # "folderName":Ljava/lang/String;
    .restart local v8    # "fullFilePath":Ljava/lang/String;
    .restart local v10    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "inputFile":Ljava/io/File;
    .restart local v13    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "packageFolder":Ljava/lang/String;
    .restart local v15    # "packageName":Ljava/lang/Object;
    .restart local v17    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v3

    move-object v9, v10

    .end local v10    # "inStream":Ljava/io/BufferedInputStream;
    .restart local v9    # "inStream":Ljava/io/BufferedInputStream;
    goto :goto_3
.end method
