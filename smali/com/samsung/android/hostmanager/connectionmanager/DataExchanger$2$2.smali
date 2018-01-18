.class Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2$2;
.super Ljava/lang/Object;
.source "DataExchanger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2$2;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 394
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[jdub] SAAgent.onDestroy() - start diff thread "

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/4 v1, 0x0

    .line 398
    .local v1, "mAccessoryManager":Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2$2;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$900(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    .line 399
    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2$2;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;

    iget-object v3, v3, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$900(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getEventHandler()Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-result-object v3

    .line 400
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->getAccessoryEventCallback()Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;

    move-result-object v3

    .line 398
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager$AccessoryEventListener;)Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 411
    :goto_0
    if-eqz v1, :cond_0

    .line 412
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->release()V

    .line 414
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[jdub] SAAgent.onDestroy() - End  diff thread "

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[jdub] SsdkUnsupportedException: SamAccessoryManager.getDefaultInstance"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 406
    .end local v0    # "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    :catch_1
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[jdub] Exception: SamAccessoryManager.getDefaultInstance"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
