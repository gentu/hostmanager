.class public Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SAExpandableCallback;
.super Lcom/msc/sa/aidl/ISAExpandableCallback$Stub;
.source "HMSAPProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SAExpandableCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .prologue
    .line 18194
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SAExpandableCallback;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISAExpandableCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveResult(IZLandroid/os/Bundle;)V
    .locals 10
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 18197
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user::onReceiveResult() = requestID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "isSuccess = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18198
    if-eqz p2, :cond_2

    .line 18199
    const/4 v0, 0x0

    .line 18200
    .local v0, "deviceID":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SAExpandableCallback;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getSendingUserDataSocket()Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v5

    .line 18201
    .local v5, "socket":Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
    if-eqz v5, :cond_0

    .line 18202
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user::send Device id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getDeviceBTAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18203
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getDeviceBTAddress()Ljava/lang/String;

    move-result-object v0

    .line 18204
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "user::onReceiveResult() setSendingUserInfo(false)"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18205
    invoke-virtual {v5, v9}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->setSendingUserInfo(Z)V

    .line 18207
    :cond_0
    if-eqz v0, :cond_1

    .line 18208
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "user::SAExpandableCallback:: success()!!!"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18209
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user::sendUserDataToSAServer():: ALL SUCCESS deviceID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18210
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SAExpandableCallback;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const-string v7, "user_data_setting_value"

    invoke-virtual {v6, v7, v9}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 18211
    .local v4, "scsPref":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 18212
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const/4 v6, 0x1

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 18213
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 18227
    .end local v0    # "deviceID":Ljava/lang/String;
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "scsPref":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 18216
    .end local v5    # "socket":Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
    :cond_2
    const-string v6, "error_code"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18217
    .local v2, "errorCode":Ljava/lang/String;
    const-string v6, "error_message"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18218
    .local v3, "errorMessage":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "user::SAExpandableCallback:: fail"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18219
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user::SAExpandableCallback:: errorCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18220
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user::SAExpandableCallback:: errorMessage = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18221
    iget-object v6, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$SAExpandableCallback;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v6}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getSendingUserDataSocket()Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v5

    .line 18222
    .restart local v5    # "socket":Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
    if-eqz v5, :cond_1

    .line 18223
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "user::onReceiveResult() setSendingUserInfo(false)"

    invoke-static {v6, v7}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18224
    invoke-virtual {v5, v9}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->setSendingUserInfo(Z)V

    goto :goto_0
.end method
