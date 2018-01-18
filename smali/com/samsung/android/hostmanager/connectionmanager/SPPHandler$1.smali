.class Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1;
.super Ljava/lang/Object;
.source "SPPHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 82
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$002(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Z)Z

    .line 84
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initialize as part of new thread - start"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getEventHandler()Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->getAccessoryEventCallback()Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$202(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    move-result-object v3

    .line 88
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$302(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    .line 90
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$400(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$002(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Z)Z

    .line 102
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$300(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[CM_SPP] getinstance mAccessoryManager success!!"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$300(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$500(Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;)V

    .line 107
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initialize as part of new thread - End"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[CMWS][jdub] SsdkUnsupportedException: SamAccessoryManager.getDefaultInstance"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v0    # "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    :catch_1
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SPPHandler;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[CMWS][jdub] Exception: SamAccessoryManager.getDefaultInstance"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
