.class Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageInstallObserver;->this$0:Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageInstallObserver;->this$0:Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->access$000(Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;)Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageInstallObserver;->this$0:Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->access$000(Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;)Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;->packageInstalled(Ljava/lang/String;I)V

    .line 38
    :cond_0
    return-void
.end method
