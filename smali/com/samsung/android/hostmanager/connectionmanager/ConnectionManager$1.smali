.class Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$1;
.super Landroid/os/Handler;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$000(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 182
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android CM resources are not initialized properly. Retry count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->access$400(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
