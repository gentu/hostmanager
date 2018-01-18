.class Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1;
.super Ljava/lang/Object;
.source "DataExchanger.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 258
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[jdub] SAP, bindService, onServiceConnected"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    .line 260
    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$LocalBinder;

    .line 262
    .local v0, "binder":Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$LocalBinder;
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$LocalBinder;->getService()Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$002(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;)Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    .line 264
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$000(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->setEventListener(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;)V

    .line 266
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$300(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 267
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[jdub]  FindPeer is Pending. Request Find Peer."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->findPeer()Z

    .line 269
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$302(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;Z)Z

    .line 271
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 275
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[jdub] SAP, onServiceDisconnected!!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$002(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;)Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    .line 278
    return-void
.end method
