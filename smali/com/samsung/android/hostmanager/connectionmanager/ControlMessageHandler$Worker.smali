.class public abstract Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;
.super Ljava/lang/Object;
.source "ControlMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "Worker"
.end annotation


# instance fields
.field protected mCommandId:I

.field protected mMsgId:J

.field protected mReplyMessenger:Landroid/os/Messenger;

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method


# virtual methods
.method protected response(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 107
    new-instance v0, Lcom/sec/android/api/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/api/iface/CVMessage;-><init>()V

    .line 109
    .local v0, "cvm":Lcom/sec/android/api/iface/CVMessage;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/api/iface/CVMessage;->setMsgType(I)V

    .line 110
    iget v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/api/iface/CVMessage;->setCmdID(I)V

    .line 111
    iget-wide v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;->mMsgId:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/api/iface/CVMessage;->setMsgID(J)V

    .line 112
    if-nez p1, :cond_0

    .line 113
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "bundle":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 115
    .restart local p1    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/api/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 116
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;->mReplyMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lcom/sec/android/api/iface/CVMessage;->setMessenger(Landroid/os/Messenger;)V

    .line 117
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getMessagePublisher()Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/hostmanager/connectionmanager/MessagePublisher;->putQ(Lcom/sec/android/api/iface/CVMessage;)Z

    .line 118
    return-void
.end method

.method public abstract work(Lcom/sec/android/api/iface/CVMessage;)V
.end method
