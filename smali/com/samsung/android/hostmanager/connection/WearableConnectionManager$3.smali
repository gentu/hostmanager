.class Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$3;
.super Ljava/util/TimerTask;
.source "WearableConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->manageConnectionInfo(Ljava/lang/String;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$3;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 391
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CM::startManageConnectionInfo()::creatProxy timeout...mPendingConnection will be null."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$3;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    iput-object v2, v0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->mPendingConnection:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$PendingConnection;

    .line 394
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$3;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$602(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Z)Z

    .line 395
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager$3;->this$0:Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;->access$302(Lcom/samsung/android/hostmanager/connection/WearableConnectionManager;Lcom/samsung/android/sdk/connectionmanager/ScmController;)Lcom/samsung/android/sdk/connectionmanager/ScmController;

    .line 396
    return-void
.end method
