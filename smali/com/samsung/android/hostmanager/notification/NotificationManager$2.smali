.class Lcom/samsung/android/hostmanager/notification/NotificationManager$2;
.super Ljava/lang/Thread;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/notification/NotificationManager;->saveListInThread(ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/notification/NotificationManager;

.field final synthetic val$appList:Ljava/util/ArrayList;

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/notification/NotificationManager;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/notification/NotificationManager;

    .prologue
    .line 751
    iput-object p1, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager$2;->this$0:Lcom/samsung/android/hostmanager/notification/NotificationManager;

    iput p2, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager$2;->val$flags:I

    iput-object p3, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager$2;->val$appList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 754
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager$2;->this$0:Lcom/samsung/android/hostmanager/notification/NotificationManager;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->access$200(Lcom/samsung/android/hostmanager/notification/NotificationManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager$2;->this$0:Lcom/samsung/android/hostmanager/notification/NotificationManager;

    iget v3, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager$2;->val$flags:I

    iget-object v4, p0, Lcom/samsung/android/hostmanager/notification/NotificationManager$2;->val$appList:Ljava/util/ArrayList;

    invoke-static {v1, v3, v4}, Lcom/samsung/android/hostmanager/notification/NotificationManager;->access$300(Lcom/samsung/android/hostmanager/notification/NotificationManager;ILjava/util/ArrayList;)V

    .line 756
    monitor-exit v2

    .line 761
    :goto_0
    return-void

    .line 756
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationManager"

    const-string v2, "Exception while saving app list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
