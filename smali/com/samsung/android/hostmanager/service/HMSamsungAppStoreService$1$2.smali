.class Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$2;
.super Ljava/lang/Thread;
.source "HMSamsungAppStoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->installWGT(Ljava/lang/String;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$iObserver:Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$2;->this$1:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$2;->val$iObserver:Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    iput-object p3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$2;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 449
    sget-object v2, Lcom/samsung/android/hostmanager/HMApplication;->sPMLock:Ljava/lang/Object;

    monitor-enter v2

    .line 450
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "installWGT() inside synchronized block"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$2;->this$1:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;

    iget-object v1, v1, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$2;->val$iObserver:Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    invoke-static {v1, v3}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$202(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    .line 452
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$2;->this$1:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;

    iget-object v1, v1, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$300(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v0

    .line 453
    .local v0, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    if-eqz v0, :cond_0

    .line 454
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$2;->val$filePath:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->installWGT(Ljava/lang/String;I)V

    .line 460
    :goto_0
    monitor-exit v2

    .line 461
    return-void

    .line 458
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IPackageManager instance is null in installWGT "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 460
    .end local v0    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
