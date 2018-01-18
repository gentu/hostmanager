.class Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;
.super Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;
.source "ConnectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionControlWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .line 204
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;)V

    .line 205
    return-void
.end method


# virtual methods
.method public work(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 213
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->excutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionControlWorker;Lcom/sec/android/api/iface/CVMessage;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 469
    return-void
.end method
