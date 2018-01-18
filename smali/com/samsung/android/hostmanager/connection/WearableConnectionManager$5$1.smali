.class Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5$1;
.super Ljava/lang/Object;
.source "WearableConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->onServiceStateChanged(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;

    .prologue
    .line 780
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5$1;->this$1:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 783
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM::SCS::Logout state is remained for 10s...change Notibar...btAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5$1;->this$1:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1500(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    sput-boolean v3, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->isLogOutState:Z

    .line 785
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5$1;->this$1:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;

    iget-object v1, v1, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$5;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$1500(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setNotification(Ljava/lang/String;Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    .line 786
    return-void
.end method
