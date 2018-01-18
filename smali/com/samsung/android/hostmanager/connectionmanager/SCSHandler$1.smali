.class Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$1;
.super Ljava/lang/Object;
.source "SCSHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 50
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->access$002(Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;Z)Z

    .line 51
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initialize as part of new thread - start"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getEventHandler()Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->getAccessoryEventCallback()Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->access$202(Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    move-result-object v3

    .line 55
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->access$302(Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;

    .line 57
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->access$400(Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    invoke-static {v1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->access$002(Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;Z)Z

    .line 68
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initialize as part new of thread - End"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[CMWS][jdub] SsdkUnsupportedException: SamAccessoryManager.getDefaultInstance"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    invoke-static {v1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->access$002(Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;Z)Z

    goto :goto_0

    .line 62
    .end local v0    # "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[CMWS][jdub] Exception: SamAccessoryManager.getDefaultInstance"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;

    invoke-static {v1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;->access$002(Lcom/samsung/android/hostmanager/connectionmanager/SCSHandler;Z)Z

    goto :goto_0
.end method
