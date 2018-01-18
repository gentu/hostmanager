.class public abstract Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;
.super Ljava/lang/Object;
.source "ControlMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

.field protected final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "ControlMessageHandler"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 64
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;->mWorkerHandler:Landroid/os/Handler;

    .line 19
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .line 20
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    return-object v0
.end method


# virtual methods
.method protected abstract createWorker()Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;
.end method

.method protected getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    return-object v0
.end method

.method public requestMessage(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 6
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 31
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 35
    .local v1, "m":Landroid/os/Message;
    if-nez v1, :cond_0

    .line 37
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;->TAG:Ljava/lang/String;

    const-string v3, "Message is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v1, Landroid/os/Message;

    .end local v1    # "m":Landroid/os/Message;
    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 40
    .restart local v1    # "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 41
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 44
    :cond_0
    if-eqz v1, :cond_1

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "REQUEST_MESSAGE_DATA"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 47
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 54
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 55
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getMsgID()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-void
.end method
