.class Lcom/samsung/android/hostmanager/service/HostManager$7$1;
.super Landroid/os/Handler;
.source "HostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/HostManager$7;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hostmanager/service/HostManager$7;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HostManager$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/hostmanager/service/HostManager$7;

    .prologue
    .line 2165
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HostManager$7$1;->this$1:Lcom/samsung/android/hostmanager/service/HostManager$7;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2168
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2169
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "DEVICEID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2170
    .local v1, "deviceID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.intent.action.LOCALE_CHANGED deviceID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager$7$1;->this$1:Lcom/samsung/android/hostmanager/service/HostManager$7;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/service/HostManager$7;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v2, :cond_0

    .line 2175
    iget-object v2, p0, Lcom/samsung/android/hostmanager/service/HostManager$7$1;->this$1:Lcom/samsung/android/hostmanager/service/HostManager$7;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/service/HostManager$7;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v2, v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->onlySendLocale(Ljava/lang/String;)V

    .line 2178
    :cond_0
    return-void
.end method
