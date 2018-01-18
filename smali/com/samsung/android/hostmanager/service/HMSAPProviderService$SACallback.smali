.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SACallback;
.super Lcom/msc/sa/aidl/ISACallback$Stub;
.source "HMSAPProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SACallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)V
    .locals 0

    .prologue
    .line 740
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SACallback;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISACallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Lcom/samsung/android/hostmanager/service/HMSAPProviderService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    .param p2, "x1"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService$1;

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SACallback;-><init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 8
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 745
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCS::Receive Token!!!!!!!!!!!!!!!!   onReceiveAccessToken: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_2

    const-string v3, "FOR HM"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", isSuccess = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SCS::Receive Token!!!!!!!! START !!!!!!!!  ================================================="

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 749
    sput-boolean v6, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isValid:Z

    .line 753
    :cond_0
    :goto_1
    if-eqz p2, :cond_4

    .line 754
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SACallback;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v3, p1, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$400(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;ILandroid/os/Bundle;)V

    .line 783
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SACallback;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SACallback;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v4, v4, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->mRegistrationCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->release(Ljava/lang/String;)V

    .line 785
    if-nez p1, :cond_1

    .line 786
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SACallback;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const-string v4, "scs_pref_WMS"

    invoke-virtual {v3, v4, v7}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 787
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v3, "scs_setting_value"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 789
    .local v2, "value":Z
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SACallback;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v3, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$300(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Z)V

    .line 790
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SACallback;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const/4 v4, 0x0

    invoke-static {v3, v6, v4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$200(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;ILjava/lang/String;)V

    .line 792
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    .end local v2    # "value":Z
    :cond_1
    :goto_3
    return-void

    .line 745
    :cond_2
    const-string v3, "FOR WMS"

    goto :goto_0

    .line 750
    :cond_3
    if-ne p1, v6, :cond_0

    if-eqz p2, :cond_0

    .line 751
    sput-boolean v6, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isValidWMS:Z

    goto :goto_1

    .line 773
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SACallback;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v3, p1, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$500(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 776
    .local v0, "errorCode":Ljava/lang/String;
    const-string v3, "SAC_0501"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 777
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SCS::onReceiveAccessToken() SAC_0501 error occured, no need to change SCS setting value"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 780
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SACallback;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v3, v7, v0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$600(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;ZLjava/lang/String;)V

    goto :goto_2
.end method
