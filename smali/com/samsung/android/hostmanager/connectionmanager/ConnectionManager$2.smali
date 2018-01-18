.class Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$2;
.super Lcom/sec/android/api/iface/IConnectionManager$Stub;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-direct {p0}, Lcom/sec/android/api/iface/IConnectionManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public requestAsync(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Z
    .locals 3
    .param p1, "subscriber"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/sec/android/api/iface/CVMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAsync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$500(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MSG] connection manager was not initialized."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Z

    move-result v0

    return v0
.end method

.method public requestSync(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Lcom/sec/android/api/iface/CVMessage;
    .locals 3
    .param p1, "subscriber"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/sec/android/api/iface/CVMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 540
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$500(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MSG] connection manager was not initialized."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$700(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Lcom/sec/android/api/iface/CVMessage;

    move-result-object v0

    return-object v0
.end method

.method public subscribeEvent(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Z
    .locals 3
    .param p1, "subscriber"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/sec/android/api/iface/CVMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 553
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSG] subscribeEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$800(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)Z

    move-result v0

    return v0
.end method

.method public unsubscribeEvent(Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)V
    .locals 3
    .param p1, "subscriber"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/sec/android/api/iface/CVMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 561
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSG] unsubscribeEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$900(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Ljava/lang/String;Lcom/sec/android/api/iface/CVMessage;)V

    .line 564
    return-void
.end method
