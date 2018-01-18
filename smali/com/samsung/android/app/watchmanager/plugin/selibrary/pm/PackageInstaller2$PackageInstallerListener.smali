.class Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;
.super Landroid/content/BroadcastReceiver;
.source "PackageInstaller2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallerListener"
.end annotation


# instance fields
.field install:Z

.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;->this$0:Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;->install:Z

    return-void
.end method


# virtual methods
.method install(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;->install:Z

    .line 139
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 142
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], install ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;->install:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v3, "android.content.pm.extra.STATUS"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 145
    .local v2, "result":I
    const-string v3, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "message":Ljava/lang/String;
    const-string v3, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageInstallerCallback: result ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], message ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], packageName ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    packed-switch v2, :pswitch_data_0

    .line 165
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Install failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;->this$0:Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;

    invoke-static {v3}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->access$200(Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;)Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 167
    iget-boolean v3, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;->install:Z

    if-eqz v3, :cond_2

    .line 168
    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;->this$0:Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;

    invoke-static {v3}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->access$200(Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;)Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;->packageInstalled(Ljava/lang/String;I)V

    .line 174
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;->this$0:Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;

    invoke-static {v3}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->access$300(Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;)V

    .line 175
    return-void

    .line 150
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "STATUS_PENDING_USER_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;->this$0:Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;

    invoke-static {v3}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->access$100(Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;)Landroid/content/Context;

    move-result-object v4

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "*** STATUS_SUCCESS ***"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;->this$0:Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;

    invoke-static {v3}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->access$200(Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;)Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 157
    iget-boolean v3, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;->install:Z

    if-eqz v3, :cond_1

    .line 158
    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;->this$0:Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;

    invoke-static {v3}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->access$200(Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;)Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;

    move-result-object v3

    invoke-interface {v3, v1, v6}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;->packageInstalled(Ljava/lang/String;I)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;->this$0:Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;

    invoke-static {v3}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->access$200(Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;)Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;

    move-result-object v3

    invoke-interface {v3, v1, v6}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;->packageUninstalled(Ljava/lang/String;I)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2$PackageInstallerListener;->this$0:Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;

    invoke-static {v3}, Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;->access$200(Lcom/samsung/android/app/watchmanager/plugin/selibrary/pm/PackageInstaller2;)Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;->packageUninstalled(Ljava/lang/String;I)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
