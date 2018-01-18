.class public Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageDeleteObserver;,
        Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageInstallObserver;
    }
.end annotation


# static fields
.field public static final INSTALL_REPLACE_EXISTING:I = 0x2


# instance fields
.field private deleteObserver:Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageDeleteObserver;

.field private installObserver:Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageInstallObserver;

.field private mContext:Landroid/content/Context;

.field private mOnStatusReturned:Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;

.field private method:Ljava/lang/reflect/Method;

.field private pm:Landroid/content/pm/PackageManager;

.field private uninstallmethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v2, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageInstallObserver;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageInstallObserver;-><init>(Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;)V

    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->installObserver:Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageInstallObserver;

    .line 58
    new-instance v2, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageDeleteObserver;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageDeleteObserver;-><init>(Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;)V

    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->deleteObserver:Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageDeleteObserver;

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->pm:Landroid/content/pm/PackageManager;

    .line 62
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Landroid/net/Uri;

    aput-object v2, v0, v3

    const-class v2, Landroid/content/pm/IPackageInstallObserver;

    aput-object v2, v0, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v5

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v6

    .line 64
    .local v0, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    const-class v2, Landroid/content/pm/IPackageDeleteObserver;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    .line 66
    .local v1, "uninstalltypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "installPackage"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->method:Ljava/lang/reflect/Method;

    .line 67
    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "deletePackage"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->uninstallmethod:Ljava/lang/reflect/Method;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;)Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->mOnStatusReturned:Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;

    return-object v0
.end method


# virtual methods
.method public SetOnStatusReturned(Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;)V
    .locals 0
    .param p1, "onstatusReturned"    # Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->mOnStatusReturned:Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;

    .line 54
    return-void
.end method

.method public installPackage(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
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
    const/4 v6, 0x2

    .line 86
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 87
    .local v0, "installerPkg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->pm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->installObserver:Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageInstallObserver;

    aput-object v5, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void

    .line 86
    .end local v0    # "installerPkg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 78
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 80
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 81
    .local v0, "packageURI":Landroid/net/Uri;
    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->installPackage(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public installPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
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
    const/4 v8, 0x2

    .line 92
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 94
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 95
    .local v1, "apkUri":Landroid/net/Uri;
    if-eqz p2, :cond_1

    move-object v2, p2

    .line 96
    .local v2, "installerPkg":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->method:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->pm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->installObserver:Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageInstallObserver;

    aput-object v7, v5, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x3

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void

    .line 95
    .end local v2    # "installerPkg":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 6
    .param p1, "packagename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->uninstallmethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->pm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->deleteObserver:Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageDeleteObserver;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method
