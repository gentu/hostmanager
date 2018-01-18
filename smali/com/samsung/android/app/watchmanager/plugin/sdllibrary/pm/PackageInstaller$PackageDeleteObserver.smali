.class Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageDeleteObserver;->this$0:Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageDeleteObserver;->this$0:Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->access$000(Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;)Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller$PackageDeleteObserver;->this$0:Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;->access$000(Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/pm/PackageInstaller;)Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;->packageUninstalled(Ljava/lang/String;I)V

    .line 48
    :cond_0
    return-void
.end method
