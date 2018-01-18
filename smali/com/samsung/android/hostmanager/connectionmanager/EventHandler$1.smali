.class Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "EventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 181
    if-eqz p2, :cond_0

    .line 182
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 183
    .local v0, "msg":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 184
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$000(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
