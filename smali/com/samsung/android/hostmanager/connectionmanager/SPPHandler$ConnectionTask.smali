.class Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionTask;
.super Ljava/lang/Object;
.source "SPPHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionTask"
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 887
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionTask;->mAddress:Ljava/lang/String;

    .line 888
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionTask;->mAddress:Ljava/lang/String;

    .line 889
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    .line 895
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$ConnectionTask;->mAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$1000(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Ljava/lang/String;)Z

    .line 897
    return-void
.end method
