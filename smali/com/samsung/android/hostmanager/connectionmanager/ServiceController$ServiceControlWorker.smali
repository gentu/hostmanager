.class Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;
.super Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;
.source "ServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceControlWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    .line 510
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;)V

    .line 511
    return-void
.end method


# virtual methods
.method public work(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 519
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->excutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$ServiceControlWorker;Lcom/sec/android/api/iface/CVMessage;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1215
    return-void
.end method
