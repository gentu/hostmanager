.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThreadWMS;
.super Ljava/lang/Thread;
.source "HMSAPProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckValidationThreadWMS"
.end annotation


# instance fields
.field private api_server_url:Ljava/lang/String;

.field private savedToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 712
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThreadWMS;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 709
    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThreadWMS;->savedToken:Ljava/lang/String;

    .line 710
    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThreadWMS;->api_server_url:Ljava/lang/String;

    .line 713
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCS::CheckValidationThreadWMS::token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iput-object p2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThreadWMS;->savedToken:Ljava/lang/String;

    .line 715
    iput-object p3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThreadWMS;->api_server_url:Ljava/lang/String;

    .line 716
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThreadWMS;->setDaemon(Z)V

    .line 717
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 721
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CheckValidationThreadWMS Start..."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThreadWMS;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThreadWMS;->savedToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThreadWMS;->api_server_url:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$100(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isValidWMS:Z

    .line 723
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCS::CheckValidationThreadWMS::isValidWMS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isValidWMS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    sget-boolean v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isValidWMS:Z

    if-nez v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThreadWMS;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$200(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;ILjava/lang/String;)V

    .line 730
    :goto_0
    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThreadWMS;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, v3, v3, v3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendTokenToSAPnWMSnCM(ZZZ)V

    goto :goto_0
.end method
