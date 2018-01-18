.class Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;
.super Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;
.source "DiscoveryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiscoveryControlWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;)V

    .line 57
    return-void
.end method


# virtual methods
.method public work(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 64
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->excutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;Lcom/sec/android/api/iface/CVMessage;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method
