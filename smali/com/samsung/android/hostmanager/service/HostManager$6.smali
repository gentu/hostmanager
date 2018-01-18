.class Lcom/samsung/android/hostmanager/service/HostManager$6;
.super Ljava/lang/Object;
.source "HostManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HostManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HostManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HostManager;

    .prologue
    .line 1989
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HostManager$6;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1993
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mProviderSvcConn::onServiceConnected"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    .line 1994
    check-cast v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$LocalBinder;

    .line 1995
    .local v0, "binder":Lcom/samsung/android/hostmanager/service/HMSAPProviderService$LocalBinder;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager$6;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$LocalBinder;->getService()Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .line 1999
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager$6;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v1, v1, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager$6;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HostManager;->access$800(Lcom/samsung/android/hostmanager/service/HostManager;)Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setSetupHandler(Landroid/os/Handler;)V

    .line 2001
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HostManager$6;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/service/HostManager;->access$300(Lcom/samsung/android/hostmanager/service/HostManager;)Lcom/samsung/android/hostmanager/connection/IWConnectionManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/hostmanager/connection/IWConnectionManager;->proxyInit(Ljava/lang/String;I)I

    .line 2003
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 2007
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mProviderSvcConn::onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager$6;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setSetupHandler(Landroid/os/Handler;)V

    .line 2009
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager$6;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iput-object v2, v0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .line 2010
    return-void
.end method
