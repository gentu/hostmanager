.class Lcom/samsung/android/hostmanager/pm/InstallManager$1;
.super Ljava/lang/Object;
.source "InstallManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/pm/InstallManager;->installPackage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/pm/InstallManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/pm/InstallManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/pm/InstallManager;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/samsung/android/hostmanager/pm/InstallManager$1;->this$0:Lcom/samsung/android/hostmanager/pm/InstallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 177
    sget-object v3, Lcom/samsung/android/hostmanager/pm/InstallManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " packageName :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returnCode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v3, p0, Lcom/samsung/android/hostmanager/pm/InstallManager$1;->this$0:Lcom/samsung/android/hostmanager/pm/InstallManager;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/pm/InstallManager;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;

    .line 180
    .local v0, "appInfo":Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;
    if-eqz v0, :cond_0

    .line 181
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 183
    const-string v3, "status"

    const/16 v4, 0xf

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    iget-object v3, p0, Lcom/samsung/android/hostmanager/pm/InstallManager$1;->this$0:Lcom/samsung/android/hostmanager/pm/InstallManager;

    invoke-static {v3, p1}, Lcom/samsung/android/hostmanager/pm/InstallManager;->access$000(Lcom/samsung/android/hostmanager/pm/InstallManager;Ljava/lang/String;)V

    .line 189
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/hostmanager/service/IUHostManager;->onSpecialAppInstallStatus(Landroid/os/Bundle;)V

    .line 191
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;->downloadedPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    sget-object v3, Lcom/samsung/android/hostmanager/pm/InstallManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;->downloadedPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  deleted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 187
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v3, "status"

    const/16 v4, 0x10

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 196
    .restart local v2    # "file":Ljava/io/File;
    :cond_2
    sget-object v3, Lcom/samsung/android/hostmanager/pm/InstallManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/hostmanager/pm/DownloadAppInfo;->downloadedPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not deleted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public packageUninstalled(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 206
    return-void
.end method
