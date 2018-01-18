.class public Lcom/samsung/android/hostmanager/pm/AppInstaller;
.super Ljava/lang/Object;
.source "AppInstaller.java"


# static fields
.field private static final PM_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mAppInstaller:Lcom/samsung/android/hostmanager/pm/AppInstaller;


# instance fields
.field private mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/samsung/android/hostmanager/pm/AppInstaller;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/pm/AppInstaller;->TAG:Ljava/lang/String;

    .line 12
    const-class v0, Lcom/samsung/android/hostmanager/pm/GearPackageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/pm/AppInstaller;->PM_TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/samsung/android/hostmanager/pm/AppInstaller;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/pm/AppInstaller;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/pm/AppInstaller;->mAppInstaller:Lcom/samsung/android/hostmanager/pm/AppInstaller;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/pm/AppInstaller;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/hostmanager/pm/AppInstaller;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/samsung/android/hostmanager/pm/AppInstaller;->mAppInstaller:Lcom/samsung/android/hostmanager/pm/AppInstaller;

    return-object v0
.end method


# virtual methods
.method public createAppIntallURI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 28
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    .line 29
    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 30
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 31
    .local v0, "appURI":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 32
    const-string v3, "ConsumerURIToAppStore"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    :cond_0
    if-eqz v0, :cond_1

    .line 35
    iget-object v3, p0, Lcom/samsung/android/hostmanager/pm/AppInstaller;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/service/ICHostManager;->connectMarket()V

    .line 44
    .end local v0    # "appURI":Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 37
    .restart local v0    # "appURI":Ljava/lang/String;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    sget-object v3, Lcom/samsung/android/hostmanager/pm/AppInstaller;->TAG:Ljava/lang/String;

    const-string v4, "Consumer App URI not available in Manifest."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    .end local v0    # "appURI":Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public installAppRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;
    .param p3, "consumerAppPackageName"    # Ljava/lang/String;
    .param p4, "from"    # I

    .prologue
    .line 47
    sget-object v0, Lcom/samsung/android/hostmanager/pm/AppInstaller;->PM_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/hostmanager/pm/AppInstaller;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": installAppRequest()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/samsung/android/hostmanager/pm/AppInstaller;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/service/ICHostManager;->installApkToWearable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    return-void
.end method

.method public installAppViaForceWifiDirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "appPath"    # Ljava/lang/String;
    .param p3, "consumerAppPackageName"    # Ljava/lang/String;
    .param p4, "from"    # I

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/android/hostmanager/pm/AppInstaller;->TAG:Ljava/lang/String;

    const-string v1, "installAppViaForceWifiDirect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/samsung/android/hostmanager/pm/AppInstaller;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/service/ICHostManager;->installAppViaForceWifiDirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public uninstallAppRequest(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "from"    # I

    .prologue
    .line 53
    sget-object v0, Lcom/samsung/android/hostmanager/pm/AppInstaller;->PM_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/hostmanager/pm/AppInstaller;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": uninstallAppRequest()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/samsung/android/hostmanager/pm/AppInstaller;->mICHostManager:Lcom/samsung/android/hostmanager/service/ICHostManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/ICHostManager;->uninstallAppToWearable(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    return-void
.end method
