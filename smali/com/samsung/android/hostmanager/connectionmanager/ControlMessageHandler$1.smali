.class Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$1;
.super Landroid/os/Handler;
.source "ControlMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 69
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "REQUEST_MESSAGE_DATA"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/api/iface/CVMessage;

    .line 71
    .local v1, "cvm":Lcom/sec/android/api/iface/CVMessage;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/android/api/iface/CVMessage;->getMsgID()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;->createWorker()Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;

    move-result-object v2

    .line 74
    .local v2, "worker":Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;
    invoke-virtual {v1}, Lcom/sec/android/api/iface/CVMessage;->getMsgID()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;->mMsgId:J

    .line 75
    invoke-virtual {v1}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;->mCommandId:I

    .line 76
    invoke-virtual {v1}, Lcom/sec/android/api/iface/CVMessage;->getMessenger()Landroid/os/Messenger;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;->mReplyMessenger:Landroid/os/Messenger;

    .line 77
    invoke-virtual {v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;->work(Lcom/sec/android/api/iface/CVMessage;)V

    .line 78
    return-void
.end method
