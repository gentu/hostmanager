.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$16;
.super Ljava/lang/Object;
.source "HMSAPProviderService.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/devicemotion/IMovementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->doCheckDeviceMotionAndAutoCF(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

.field final synthetic val$activate:Z

.field final synthetic val$deviceID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .prologue
    .line 16372
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$16;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$16;->val$deviceID:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$16;->val$activate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 4
    .param p1, "motion"    # Z

    .prologue
    .line 16376
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMovementListener :: onResult motion ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16377
    if-eqz p1, :cond_0

    .line 16379
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$16;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->mCallForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$16;->val$deviceID:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$16;->val$activate:Z

    const/4 v3, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardError(Ljava/lang/String;ZI)V

    .line 16386
    :goto_0
    return-void

    .line 16381
    :cond_0
    const-string v0, "TRANSPORT_SCS"

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$16;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1400()Lcom/samsung/android/hostmanager/connection/IWSocketManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$16;->val$deviceID:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/hostmanager/connection/IWSocketManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getConnectType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$2700(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16382
    new-instance v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$16;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$16;->val$deviceID:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$16;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->mCallForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    invoke-direct {v1, v0, v2, v3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;)V

    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$16;->val$activate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$16;->val$deviceID:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getWearableDevicePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->startsetCallForwarding(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 16384
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$16;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->mCallForwardListener:Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$16;->val$deviceID:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$16;->val$activate:Z

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardError(Ljava/lang/String;ZI)V

    goto :goto_0
.end method
