.class Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$2;
.super Ljava/lang/Object;
.source "SAAgentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 252
    const-string v0, "SAAgentService"

    const-string v1, "[jdub] retry to call requestServiceConnection()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->access$000(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;)Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    .line 255
    return-void
.end method
