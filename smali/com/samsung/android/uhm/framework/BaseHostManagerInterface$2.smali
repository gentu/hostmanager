.class Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$2;
.super Landroid/content/BroadcastReceiver;
.source "BaseHostManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;


# direct methods
.method constructor <init>(Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface$2;->this$0:Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 291
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "action":Ljava/lang/String;
    const-string v2, "BaseHostManagerInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBTReceiver action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 295
    .local v1, "state":I
    const-string v2, "BaseHostManagerInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBTReceiver state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 297
    invoke-static {}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->access$100()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 298
    :try_start_0
    invoke-static {}, Lcom/samsung/android/uhm/framework/BaseHostManagerInterface;->access$100()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 299
    monitor-exit v3

    .line 302
    .end local v1    # "state":I
    :cond_0
    return-void

    .line 299
    .restart local v1    # "state":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
