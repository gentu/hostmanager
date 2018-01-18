.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;
.super Ljava/lang/Object;
.source "PackageInstaller2.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;
    }
.end annotation


# static fields
.field private static final INTENT_NAME:Ljava/lang/String; = "Gear2SPlugin.install_complete"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;

.field private mOnStatusReturned:Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gear2SPlugin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;)Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->mOnStatusReturned:Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->destroyReceiver()V

    return-void
.end method

.method private createIntentSender(Landroid/content/Context;I)Landroid/content/IntentSender;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionId"    # I

    .prologue
    .line 105
    new-instance v1, Landroid/content/Intent;

    const-string v2, "Gear2SPlugin.install_complete"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 106
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    return-object v1
.end method

.method private destroyReceiver()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->getListener()Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->mListener:Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;

    .line 132
    return-void
.end method

.method private getInputStream(Ljava/io/File;)Ljava/io/InputStream;
    .locals 5
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 112
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    move-object v1, v2

    .line 117
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_0
    return-object v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->TAG:Ljava/lang/String;

    const-string v4, "FileNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getListener()Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->mListener:Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;-><init>(Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->mListener:Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->mListener:Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;

    return-object v0
.end method

.method private installPackage_(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 67
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->installPackage__(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->getListener()Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;->install(Z)V

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->getListener()Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "Gear2SPlugin.install_complete"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->TAG:Ljava/lang/String;

    const-string v2, "IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private installPackage__(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    if-nez p2, :cond_0

    .line 102
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v11

    .line 81
    .local v11, "packageInstaller":Landroid/content/pm/PackageInstaller;
    new-instance v12, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 83
    .local v12, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v13

    .line 86
    .local v13, "sessionId":I
    invoke-virtual {v11, v13}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v2

    .line 87
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v10

    .line 88
    .local v10, "out":Ljava/io/OutputStream;
    const/high16 v3, 0x10000

    new-array v8, v3, [B

    .line 90
    .local v8, "buffer":[B
    const-wide/16 v14, 0x0

    .line 91
    .local v14, "total":J
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "c":I
    const/4 v3, -0x1

    if-eq v9, v3, :cond_1

    .line 92
    const/4 v3, 0x0

    invoke-virtual {v10, v8, v3, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 93
    int-to-long v4, v9

    add-long/2addr v14, v4

    goto :goto_1

    .line 95
    :cond_1
    sget-object v3, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrote totally "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v2, v10}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 98
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 100
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->createIntentSender(Landroid/content/Context;I)Landroid/content/IntentSender;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 101
    sget-object v3, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->TAG:Ljava/lang/String;

    const-string v4, "commit called"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public SetOnStatusReturned(Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;)V
    .locals 0
    .param p1, "onstatusReturned"    # Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->mOnStatusReturned:Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;

    .line 39
    return-void
.end method

.method public installPackage(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "apkFile"    # Landroid/net/Uri;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .param p3, "packName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->TAG:Ljava/lang/String;

    const-string v1, "not necessary to implement"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public installPackage(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .param p3, "packName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->getInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->installPackage_(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public installPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "apkFilePath"    # Ljava/lang/String;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .param p3, "packName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->installPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 6
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 43
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 44
    .local v0, "packageInstaller":Landroid/content/pm/PackageInstaller;
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->createIntentSender(Landroid/content/Context;I)Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->getListener()Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;->install(Z)V

    .line 47
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->getListener()Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "Gear2SPlugin.install_complete"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 48
    return-void
.end method
