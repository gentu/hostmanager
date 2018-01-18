.class Lcom/samsung/android/hostmanager/service/HostManager$10;
.super Ljava/lang/Object;
.source "HostManager.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;


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
    .line 3481
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HostManager$10;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCallForwardError(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 3510
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGetCallForwardError"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3511
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager$10;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v0, :cond_0

    .line 3512
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager$10;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->handleGetCallForwardError(Ljava/lang/String;)V

    .line 3514
    :cond_0
    return-void
.end method

.method public onGetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "states"    # [I

    .prologue
    .line 3494
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGetCallForwardSuccess"

    invoke-static {v0, v1, p2}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3495
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager$10;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v0, :cond_0

    .line 3496
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager$10;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->handleGetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 3498
    :cond_0
    return-void
.end method

.method public onProgress(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "activate"    # Z

    .prologue
    .line 3518
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress starts, deviceID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], activate ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3519
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager$10;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HostManager;->access$1100(Lcom/samsung/android/hostmanager/service/HostManager;)V

    .line 3520
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProgress ends"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3521
    return-void
.end method

.method public onSetCallForwardError(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "activate"    # Z
    .param p3, "reason"    # I

    .prologue
    .line 3502
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetCallForwardError, activate ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], reason ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3503
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager$10;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v0, :cond_0

    .line 3504
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager$10;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->handleSetCallForwardError(Ljava/lang/String;ZI)V

    .line 3506
    :cond_0
    return-void
.end method

.method public onSetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;Z[I)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "activate"    # Z
    .param p4, "states"    # [I

    .prologue
    .line 3485
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSetCallForwardSuccess"

    invoke-static {v0, v1, p2}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3486
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetCallForwardSuccess, activate ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3487
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager$10;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v0, :cond_0

    .line 3488
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HostManager$10;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->handleSetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;Z[I)V

    .line 3490
    :cond_0
    return-void
.end method
