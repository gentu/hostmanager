.class Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$1;
.super Ljava/lang/Object;
.source "ConnectionManagerConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->access$002(Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;

    invoke-static {p2}, Lcom/sec/android/api/iface/IConnectionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/api/iface/IConnectionManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->access$102(Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;Lcom/sec/android/api/iface/IConnectionManager;)Lcom/sec/android/api/iface/IConnectionManager;

    .line 129
    invoke-static {}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;

    invoke-static {v2}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->access$000(Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/connectionmanager/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;

    invoke-static {v0}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->access$300(Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;)V

    .line 132
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->access$002(Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 137
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->access$102(Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;Lcom/sec/android/api/iface/IConnectionManager;)Lcom/sec/android/api/iface/IConnectionManager;

    .line 139
    invoke-static {}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;

    invoke-static {v2}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->access$000(Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/connectionmanager/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;

    invoke-static {v0}, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;->access$400(Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;)V

    .line 142
    return-void
.end method
