.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;
.super Ljava/lang/Object;
.source "HMSAPProviderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->handleSetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;Z[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private retry:I

.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

.field final synthetic val$activate:Z

.field final synthetic val$deviceID:Ljava/lang/String;

.field final synthetic val$states:[I


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;[IZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .prologue
    .line 17764
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->val$deviceID:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->val$states:[I

    iput-boolean p4, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->val$activate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17765
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->retry:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 17768
    const/4 v0, 0x0

    .line 17770
    .local v0, "connected":Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$2602(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Lcom/samsung/android/hostmanager/service/IUHostManager;)Lcom/samsung/android/hostmanager/service/IUHostManager;

    .line 17771
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$2600(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->val$deviceID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/service/IUHostManager;->isConnected(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 17775
    :goto_0
    if-eqz v0, :cond_1

    .line 17776
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetCallForwardSuccess, Connected to Gear, retry ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->retry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17777
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->val$states:[I

    iget-boolean v4, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->val$activate:Z

    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->val$deviceID:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$3100(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;[IZLjava/lang/String;I)V

    .line 17779
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$3200()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 17780
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$3200()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17791
    :cond_0
    :goto_1
    return-void

    .line 17772
    :catch_0
    move-exception v1

    .line 17773
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 17783
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetCallForwardSuccess, not connected to Gear, let\'s try one more time, retry ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->retry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17784
    iget v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->retry:I

    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$3300()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 17785
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$3200()Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$3400()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17786
    iget v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->retry:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->retry:I

    goto :goto_1

    .line 17788
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->val$states:[I

    iget-boolean v4, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->val$activate:Z

    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$20;->val$deviceID:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$3100(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;[IZLjava/lang/String;I)V

    goto :goto_1
.end method
