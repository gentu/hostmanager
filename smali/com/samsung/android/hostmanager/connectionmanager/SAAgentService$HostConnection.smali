.class public Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$HostConnection;
.super Lcom/samsung/android/sdk/accessory/SASocket;
.source "SAAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HostConnection"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HostConnection"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$HostConnection;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    .line 311
    const-class v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$HostConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SASocket;-><init>(Ljava/lang/String;)V

    .line 313
    const-string v0, "HostConnection"

    const-string v1, "[jdub] HostConnection constructor!!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method private getReason(I)Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 346
    sparse-switch p1, :sswitch_data_0

    .line 357
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;->UNKNOWN_REASON:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    :goto_0
    return-object v0

    .line 348
    :sswitch_0
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;->DEVICE_DETACHED:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    goto :goto_0

    .line 351
    :sswitch_1
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;->PEER_DISCONNECTED:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    goto :goto_0

    .line 354
    :sswitch_2
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;->UNKNOWN_REASON:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    goto :goto_0

    .line 346
    nop

    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_2
        0x201 -> :sswitch_1
        0x209 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public onError(ILjava/lang/String;I)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # I

    .prologue
    .line 319
    const-string v0, "HostConnection"

    const-string v1, "[jdub] HostConnection onError!!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public onReceive(I[B)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [B

    .prologue
    .line 325
    const-string v0, "HostConnection"

    const-string v1, "[jdub] HostConnection onReceive!!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$HostConnection;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;)Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$HostConnection;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;)Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;->SUCCESS:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

    invoke-interface {v0, p2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;->onReceivedData([BLcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;)V

    .line 331
    :cond_0
    return-void
.end method

.method protected onServiceConnectionLost(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 336
    const-string v0, "HostConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[jdub] HostConnection onServiceConnectionLost : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$HostConnection;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;)Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$HostConnection;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;)Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$HostConnection;->getReason(I)Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;->onServiceConnectionLost(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;)V

    .line 342
    :cond_0
    return-void
.end method
