.class public Lcom/samsung/android/app/watchmanager/plugin/libfactory/pm/PackageInstallerFactory;
.super Ljava/lang/Object;
.source "PackageInstallerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/util/FeatureUtil;->supportSem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    new-instance v0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, "mInterface":Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;
    :goto_0
    return-object v0

    .line 19
    .end local v0    # "mInterface":Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;
    :cond_0
    new-instance v0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;-><init>(Landroid/content/Context;)V

    .restart local v0    # "mInterface":Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;
    goto :goto_0
.end method
