.class Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$3;
.super Ljava/lang/Thread;
.source "HMSamsungAppStoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->installWGTOverN(Landroid/net/Uri;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;

.field final synthetic val$iObserver:Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$3;->this$1:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$3;->val$iObserver:Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    iput-object p3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$3;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 487
    sget-object v2, Lcom/samsung/android/hostmanager/HMApplication;->sPMLock:Ljava/lang/Object;

    monitor-enter v2

    .line 488
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "installWGTOverN() inside synchronized block"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$3;->this$1:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;

    iget-object v1, v1, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$3;->val$iObserver:Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    invoke-static {v1, v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$202(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    .line 490
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$3;->this$1:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;

    iget-object v1, v1, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$300(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v0

    .line 491
    .local v0, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    if-eqz v0, :cond_0

    .line 492
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$3;->val$uri:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->installWGT(Landroid/net/Uri;I)V

    .line 498
    :goto_0
    monitor-exit v2

    .line 499
    return-void

    .line 496
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IPackageManager instance is null in installWGTOverN "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 498
    .end local v0    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
