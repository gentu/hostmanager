.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThread;
.super Ljava/lang/Thread;
.source "HMSAPProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckValidationThread"
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

    .line 669
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThread;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 666
    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThread;->savedToken:Ljava/lang/String;

    .line 667
    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThread;->api_server_url:Ljava/lang/String;

    .line 670
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCS::CheckValidationThread::token = "

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

    .line 671
    iput-object p2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThread;->savedToken:Ljava/lang/String;

    .line 672
    iput-object p3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThread;->api_server_url:Ljava/lang/String;

    .line 673
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThread;->setDaemon(Z)V

    .line 674
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 678
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CheckValidationThread Start..."

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThread;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThread;->savedToken:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThread;->api_server_url:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$100(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    sput-boolean v5, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isValid:Z

    .line 680
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SCS::CheckValidationThread::isValid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isValid:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    sget-boolean v5, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isValid:Z

    if-eqz v5, :cond_0

    .line 683
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThread;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const-string v6, "scs_pref_WMS"

    invoke-virtual {v5, v6, v8}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 684
    .local v2, "prefWMS":Landroid/content/SharedPreferences;
    const-string v5, "access_token"

    const-string v6, "empty"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 685
    .local v3, "savedTokenWMS":Ljava/lang/String;
    const-string v5, "api_server_url"

    const-string v6, "empty"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "api_server_url_WMS":Ljava/lang/String;
    const-string v5, "empty"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 688
    sput-boolean v8, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isValidWMS:Z

    .line 695
    .end local v0    # "api_server_url_WMS":Ljava/lang/String;
    .end local v2    # "prefWMS":Landroid/content/SharedPreferences;
    .end local v3    # "savedTokenWMS":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v5, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isValid:Z

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isValidWMS:Z

    if-nez v5, :cond_3

    .line 696
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThread;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const/4 v6, 0x0

    invoke-static {v5, v8, v6}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$200(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;ILjava/lang/String;)V

    .line 704
    :goto_1
    return-void

    .line 690
    .restart local v0    # "api_server_url_WMS":Ljava/lang/String;
    .restart local v2    # "prefWMS":Landroid/content/SharedPreferences;
    .restart local v3    # "savedTokenWMS":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThread;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v5, v3, v0, v9}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$100(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    sput-boolean v5, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isValidWMS:Z

    .line 691
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SCS::CheckValidationThread::isValidWMS = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isValidWMS:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 698
    .end local v0    # "api_server_url_WMS":Ljava/lang/String;
    .end local v2    # "prefWMS":Landroid/content/SharedPreferences;
    .end local v3    # "savedTokenWMS":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThread;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const-string v6, "scs_pref_WMS"

    invoke-virtual {v5, v6, v8}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 699
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v5, "scs_setting_value"

    invoke-interface {v1, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 701
    .local v4, "value":Z
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThread;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v5, v9, v9, v9}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendTokenToSAPnWMSnCM(ZZZ)V

    .line 702
    iget-object v5, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$CheckValidationThread;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v5, v4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$300(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Z)V

    goto :goto_1
.end method
