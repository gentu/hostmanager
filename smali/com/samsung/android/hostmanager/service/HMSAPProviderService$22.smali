.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$22;
.super Ljava/lang/Object;
.source "HMSAPProviderService.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;


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
    .line 17872
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$22;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCallForwardError(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 17911
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetCallForwardError starts, deviceID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17912
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$22;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->handleGetCallForwardError(Ljava/lang/String;)V

    .line 17913
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGetCallForwardError ends"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17914
    return-void
.end method

.method public onGetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "states"    # [I

    .prologue
    .line 17904
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetCallForwardSuccess starts, deviceID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17905
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$22;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->handleGetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 17906
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGetCallForwardSuccess ends"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17907
    return-void
.end method

.method public onProgress(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "activate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 17918
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProgress starts, deviceID ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], activate ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17919
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$22;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const/4 v0, 0x2

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0, p1, v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendCallForwardResponse([IILjava/lang/String;I)V

    .line 17920
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProgress ends"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17921
    return-void

    .line 17919
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method public onSetCallForwardError(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "activate"    # Z
    .param p3, "reason"    # I

    .prologue
    .line 17897
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetCallForwardError starts, activate ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], deviceID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 17898
    iget-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$22;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->handleSetCallForwardError(Ljava/lang/String;ZI)V

    .line 17899
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSetCallForwardError ends"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17900
    return-void
.end method

.method public onSetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;Z[I)V
    .locals 6
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "activate"    # Z
    .param p4, "states"    # [I

    .prologue
    .line 17876
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onSetCallForwardSuccess starts"

    invoke-static {v3, v4, p2}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17877
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSetCallForwardSuccess starts, activate ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], deviceID ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], states ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17878
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$22;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->handleSetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;Z[I)V

    .line 17880
    if-eqz p3, :cond_1

    .line 17881
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$22;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v3, p4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$3500(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;[I)Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    move-result-object v1

    .line 17882
    .local v1, "cfSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    const-string v3, "ARS"

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getCfType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 17883
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "send UHM.ACTION_SHOW_CF_NOTIFICATION"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17884
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17885
    .local v0, "bun":Landroid/os/Bundle;
    const-string v3, "deviceid"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17886
    new-instance v2, Landroid/content/Intent;

    const-string v3, "UHM.ACTION_SHOW_CF_NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17887
    .local v2, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 17888
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$22;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v3, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendBroadcast(Landroid/content/Intent;)V

    .line 17892
    .end local v0    # "bun":Landroid/os/Bundle;
    .end local v1    # "cfSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onSetCallForwardSuccess ends"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17893
    return-void
.end method
