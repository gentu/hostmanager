.class Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1SendTask;
.super Ljava/lang/Object;
.source "DataExchanger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->sendBytes([B)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendTask"
.end annotation


# instance fields
.field bytes:[B

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;
    .param p2, "_bytes"    # [B

    .prologue
    .line 200
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1SendTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1SendTask;->bytes:[B

    .line 202
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1SendTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$000(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1SendTask;->bytes:[B

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->sendBytes([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$1SendTask;->bytes:[B

    .line 216
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[jdub] sendBytes exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
