.class Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$2;
.super Landroid/os/Handler;
.source "HMSAPSASocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getHandlerByteThread(Landroid/os/Looper;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$2;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 762
    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$2;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$200(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 763
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$2;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$200(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$2;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$300(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 765
    .local v2, "id":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$2;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$400(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 767
    .local v0, "buf":[B
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket$2;->this$0:Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    invoke-static {v3, v2, v0}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$501(Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    .end local v0    # "buf":[B
    .end local v2    # "id":I
    :cond_0
    :goto_0
    return-void

    .line 768
    .restart local v0    # "buf":[B
    .restart local v2    # "id":I
    :catch_0
    move-exception v1

    .line 769
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
