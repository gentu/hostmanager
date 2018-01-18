.class public Lcom/samsung/android/hostmanager/model/IRepository;
.super Ljava/lang/Object;
.source "IRepository.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HostManager/IRepository"


# instance fields
.field private final BACKUP_APP_LIST:I

.field private final BACKUP_EXIST_QUERY:I

.field private final BACKUP_RESTORE_HISTORY:I

.field private final RESTORE_EXIST_QUERY:I

.field private db:Lcom/samsung/android/hostmanager/br/DataBaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/model/IRepository;->BACKUP_EXIST_QUERY:I

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hostmanager/model/IRepository;->RESTORE_EXIST_QUERY:I

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/hostmanager/model/IRepository;->BACKUP_RESTORE_HISTORY:I

    .line 29
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/hostmanager/model/IRepository;->BACKUP_APP_LIST:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/model/IRepository;->BACKUP_EXIST_QUERY:I

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hostmanager/model/IRepository;->RESTORE_EXIST_QUERY:I

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/hostmanager/model/IRepository;->BACKUP_RESTORE_HISTORY:I

    .line 29
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/hostmanager/model/IRepository;->BACKUP_APP_LIST:I

    .line 34
    new-instance v0, Lcom/samsung/android/hostmanager/br/DataBaseHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/hostmanager/br/DataBaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/model/IRepository;->db:Lcom/samsung/android/hostmanager/br/DataBaseHelper;

    .line 35
    return-void
.end method

.method private getDataFileDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readClocksSetupInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v1, Ljava/io/File;

    const-string v2, "clocklist.xml"

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/hostmanager/model/IRepository;->getDataFileDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "file":Ljava/io/File;
    const-string v2, "HostManager/IRepository"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readClocksSetupInfo file = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readFavoriteReorderSetupInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 187
    new-instance v3, Ljava/io/File;

    const-string v4, "favorites_order.xml"

    invoke-direct {p0, p1, p2, v4}, Lcom/samsung/android/hostmanager/model/IRepository;->getDataFileDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v3, "file":Ljava/io/File;
    const-string v4, "HostManager/IRepository"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readFavoriteReorderSetupInfo file = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    const/4 v1, 0x0

    .line 193
    .local v1, "favoritereorderfis":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "favoritereorderfis":Ljava/io/InputStream;
    .local v2, "favoritereorderfis":Ljava/io/InputStream;
    move-object v1, v2

    .line 200
    .end local v2    # "favoritereorderfis":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 194
    .restart local v1    # "favoritereorderfis":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "favoritereorderfis":Ljava/io/InputStream;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readFontsSetupInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Ljava/io/File;

    const-string v2, "fontlist.xml"

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/hostmanager/model/IRepository;->getDataFileDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "file":Ljava/io/File;
    const-string v2, "HostManager/IRepository"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readFontsSetupInfo file = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 145
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readMyAppSetupInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/io/File;

    const-string v2, "wapplist.xml"

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/hostmanager/model/IRepository;->getDataFileDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "file":Ljava/io/File;
    const-string v2, "HostManager/IRepository"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readMyAppsSetupInfo file = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 125
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readSettingSetupInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Ljava/io/File;

    const-string v2, "settings_result.xml"

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/hostmanager/model/IRepository;->getDataFileDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "file":Ljava/io/File;
    const-string v2, "HostManager/IRepository"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readSettingSetupInfo file = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 173
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ClearBackupAppListData()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "HostManager/IRepository"

    const-string v1, "saveBackupAppData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/samsung/android/hostmanager/model/IRepository;->db:Lcom/samsung/android/hostmanager/br/DataBaseHelper;

    const-string v1, "BackupSync"

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/br/DataBaseHelper;->deleteEntireTable(Ljava/lang/String;)Z

    .line 53
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
    .line 262
    iget-object v0, p0, Lcom/samsung/android/hostmanager/model/IRepository;->db:Lcom/samsung/android/hostmanager/br/DataBaseHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/br/DataBaseHelper;->getAllBackupAppList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClockInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/model/IRepository;->readClocksSetupInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "HostManager/IRepository"

    const-string v3, "getClockInputStream() FileNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFavoriteReorderInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 177
    const/4 v1, 0x0

    .line 179
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/model/IRepository;->readFavoriteReorderSetupInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 183
    :goto_0
    return-object v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "HostManager/IRepository"

    const-string v3, "getFavoriteReorderInputStream() FileNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFontsInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 131
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/model/IRepository;->readFontsSetupInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 135
    :goto_0
    return-object v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "HostManager/IRepository"

    const-string v3, "getFontsInputStream() FileNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIntentFilter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/samsung/android/hostmanager/model/IRepository;->db:Lcom/samsung/android/hostmanager/br/DataBaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/br/DataBaseHelper;->getIntentFilter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMyAppsInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/model/IRepository;->readMyAppSetupInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "HostManager/IRepository"

    const-string v3, "getMyAppsInputStream() FileNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getOutputStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xml_file_path"    # Ljava/lang/String;
    .param p3, "xml_file_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 224
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 226
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 227
    :cond_0
    const-string v5, "HostManager/IRepository"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getOutputStream file = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "dirPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v3, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 232
    .local v0, "deleted":Z
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 233
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 234
    const-string v5, "HostManager/IRepository"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getOutputStream() deleted = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 237
    .local v4, "os":Ljava/io/OutputStream;
    return-object v4
.end method

.method public getSettingInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 159
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/model/IRepository;->readSettingSetupInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 163
    :goto_0
    return-object v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "HostManager/IRepository"

    const-string v3, "getSettingInputStream() FileNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeBackupAppListData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "HostManager/IRepository"

    const-string v1, "removeBackupAppListData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/samsung/android/hostmanager/model/IRepository;->db:Lcom/samsung/android/hostmanager/br/DataBaseHelper;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/hostmanager/br/DataBaseHelper;->updateEntryBackup(Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    return-void
.end method

.method public removeBackupData(Ljava/lang/String;Lcom/samsung/android/hostmanager/aidl/BackupInfo;)Z
    .locals 6
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "restoreInfo"    # Lcom/samsung/android/hostmanager/aidl/BackupInfo;

    .prologue
    .line 66
    iget-object v3, p0, Lcom/samsung/android/hostmanager/model/IRepository;->db:Lcom/samsung/android/hostmanager/br/DataBaseHelper;

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, p1, v4, v5}, Lcom/samsung/android/hostmanager/br/DataBaseHelper;->updateBackupFileApptable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    const/4 v2, 0x0

    .line 72
    .local v2, "fileDeleted":Z
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/aidl/BackupInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    .line 74
    if-eqz v2, :cond_0

    .line 75
    const-string v3, "HostManager/IRepository"

    const-string v4, "File Deleted Successfully"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return v2

    .line 78
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    const-string v3, "HostManager/IRepository"

    const-string v4, "File NOT Deleted - Some Problem"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
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
    .line 241
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 243
    :cond_1
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 246
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 249
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/samsung/android/hostmanager/model/IRepository;->db:Lcom/samsung/android/hostmanager/br/DataBaseHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/br/DataBaseHelper;->getAllBackupAppList(Ljava/lang/String;)Ljava/util/List;

    goto :goto_0
.end method

.method public restoreAppData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/hostmanager/model/IRepository;->db:Lcom/samsung/android/hostmanager/br/DataBaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/br/DataBaseHelper;->getBackupFileFrmAppTable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveBackupAppListData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "intentFilter"    # Ljava/lang/String;
    .param p4, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v0, "HostManager/IRepository"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveBackupAppData pkgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", appName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intentFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/samsung/android/hostmanager/model/IRepository;->db:Lcom/samsung/android/hostmanager/br/DataBaseHelper;

    const-string v4, ""

    move-object v1, p4

    move-object v2, p1

    move-object v3, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/hostmanager/br/DataBaseHelper;->updateEntryBackup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    return-void
.end method

.method public updateBackupFilepath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceID"    # Ljava/lang/String;
    .param p3, "filepath"    # Ljava/lang/String;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/android/hostmanager/model/IRepository;->db:Lcom/samsung/android/hostmanager/br/DataBaseHelper;

    invoke-virtual {v0, p2, p1, p3}, Lcom/samsung/android/hostmanager/br/DataBaseHelper;->updateBackupFileApptable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 267
    return-void
.end method

.method public validateMacAddress(Ljava/lang/String;)Z
    .locals 1
    .param p1, "macId"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/samsung/android/hostmanager/model/IRepository;->db:Lcom/samsung/android/hostmanager/br/DataBaseHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/br/DataBaseHelper;->validateMacAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
