.class Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$4;
.super Ljava/lang/Thread;
.source "HMSamsungAppStoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->installWGTinAPK(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$iObserver:Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$4;->this$1:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$4;->val$iObserver:Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    iput-object p3, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$4;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$4;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 534
    sget-object v3, Lcom/samsung/android/hostmanager/HMApplication;->sPMLock:Ljava/lang/Object;

    monitor-enter v3

    .line 535
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v4, "installWGTinAPK() inside synchronized block"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$4;->this$1:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$4;->val$iObserver:Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    invoke-static {v2, v4}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$202(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;)Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    .line 537
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$4;->this$1:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$300(Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;)Lcom/samsung/android/hostmanager/manager/IPackageManager;

    move-result-object v1

    .line 538
    .local v1, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    if-eqz v1, :cond_0

    .line 539
    const-string v2, ""

    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$4;->val$packageName:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$4;->val$filePath:Ljava/lang/String;

    invoke-interface {v1, v2, v4, v5, v6}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->installAppWithSignature(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    .line 550
    :goto_0
    monitor-exit v3

    .line 551
    return-void

    .line 543
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v4, "IPackageManager instance is null in installWGTinAPK"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$4;->val$iObserver:Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HMSamsungAppStoreService$1$4;->val$packageName:Ljava/lang/String;

    const/16 v5, -0x3e8

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/aidl/ICheckAppInstallStateCallback;->packageInstalled(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 550
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
