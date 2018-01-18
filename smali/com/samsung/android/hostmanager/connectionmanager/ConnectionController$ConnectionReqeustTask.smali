.class Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionReqeustTask;
.super Ljava/lang/Object;
.source "ConnectionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionReqeustTask"
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    .prologue
    .line 2180
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionReqeustTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionReqeustTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getServiceController()Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionReqeustTask;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->requestWaitingConnection(Landroid/os/Bundle;)V

    .line 2193
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2185
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController$ConnectionReqeustTask;->bundle:Landroid/os/Bundle;

    .line 2186
    return-void
.end method
