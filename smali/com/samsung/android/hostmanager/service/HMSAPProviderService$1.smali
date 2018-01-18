.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$1;
.super Ljava/lang/Object;
.source "HMSAPProviderService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .prologue
    .line 797
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x1

    .line 802
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCS::Service Connected.. needTokenReqest"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v0, v4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$702(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Z)Z

    .line 805
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {p2}, Lcom/msc/sa/aidl/ISAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->mISaService:Lcom/msc/sa/aidl/ISAService;

    .line 806
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    new-instance v1, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SACallback;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SACallback;-><init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Lcom/samsung/android/hostmanager/service/HMSAPProviderService$1;)V

    iput-object v1, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->mSACallback:Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SACallback;

    .line 807
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$900(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1000(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->requestTokenFromUI(Ljava/lang/String;Z)V

    .line 809
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$902(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Z)Z

    .line 811
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 815
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCS::Service Disconnected"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$702(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Z)Z

    .line 818
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iput-object v2, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->mISaService:Lcom/msc/sa/aidl/ISAService;

    .line 819
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$1;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iput-object v2, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->mSACallback:Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SACallback;

    .line 820
    return-void
.end method
