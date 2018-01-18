.class Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;
.super Ljava/lang/Thread;
.source "RegisterUponInstallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;

.field private final synthetic val$future:Ljava/util/concurrent/Future;

.field private final synthetic val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;Ljava/util/concurrent/Future;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;->this$0:Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;

    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;->val$future:Ljava/util/concurrent/Future;

    .line 42
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;->val$future:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 54
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Service Registration has failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 49
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    invoke-static {}, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Service Registration has failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v1

    .line 52
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 53
    throw v1
.end method
