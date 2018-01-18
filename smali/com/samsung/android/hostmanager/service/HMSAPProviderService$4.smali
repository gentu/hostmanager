.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$4;
.super Landroid/os/Handler;
.source "HMSAPProviderService.java"


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
    .line 2259
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$4;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2263
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2264
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 2265
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "btAddress"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2266
    .local v1, "btAddress":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CM::Initial Json Data Exchange fail...time out(150s)"

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1400()Lcom/samsung/android/hostmanager/connection/IWSocketManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/samsung/android/hostmanager/connection/IWSocketManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->isConnecting:Z

    .line 2269
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2270
    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$4;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$4;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const v5, 0x7f050027

    invoke-virtual {v4, v5}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2287
    :cond_0
    :goto_0
    return-void

    .line 2272
    :catch_0
    move-exception v2

    .line 2273
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
