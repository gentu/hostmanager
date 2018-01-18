.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$14;
.super Ljava/lang/Object;
.source "HMSAPProviderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setNotification(Ljava/lang/String;Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V
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
    .line 13342
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$14;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 13345
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$14;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$2400(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isPaired(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13346
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$14;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$2400(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is unpaired. remove noti icon."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13347
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$14;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 13348
    .local v0, "notiManager":Landroid/app/NotificationManager;
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 13349
    iget-object v1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$14;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v1, v4}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$2502(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;I)I

    .line 13351
    .end local v0    # "notiManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method
