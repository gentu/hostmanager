.class Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;
.super Ljava/lang/Object;
.source "ServiceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FindPeerTask"
.end annotation


# instance fields
.field private mFindPeerDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
    .param p2, "wDevice"    # Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .prologue
    .line 3243
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;->mFindPeerDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 3244
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;->mFindPeerDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    .line 3246
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FindPeerTask for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;->mFindPeerDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3247
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3252
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;->mFindPeerDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->SCS:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->isConnected(Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3253
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send Find Peer for SCS Connected Device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;->mFindPeerDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 3254
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$FindPeerTask;->mFindPeerDevice:Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$1100(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;)V

    .line 3256
    :cond_0
    return-void
.end method
