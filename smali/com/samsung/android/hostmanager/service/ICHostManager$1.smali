.class Lcom/samsung/android/hostmanager/service/ICHostManager$1;
.super Ljava/lang/Object;
.source "ICHostManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/ICHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/ICHostManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/ICHostManager;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager$1;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 88
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onServiceConnected"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$LocalBinder;

    move-object v1, v0

    .line 91
    .local v1, "binder":Lcom/samsung/android/hostmanager/service/HMSAPProviderService$LocalBinder;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/ICHostManager$1;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$LocalBinder;->getService()Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .line 92
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/ICHostManager$1;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/ICHostManager$1;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$100(Lcom/samsung/android/hostmanager/service/ICHostManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setListenerICHM(Landroid/os/Handler;)V

    .line 95
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/ICHostManager$1;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/ICHostManager$1;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$200(Lcom/samsung/android/hostmanager/service/ICHostManager;)Lcom/samsung/android/hostmanager/service/HostManager$HMSetupHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setSetupHandler(Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v1    # "binder":Lcom/samsung/android/hostmanager/service/HMSAPProviderService$LocalBinder;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 104
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/ICHostManager$1;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .line 106
    return-void
.end method
