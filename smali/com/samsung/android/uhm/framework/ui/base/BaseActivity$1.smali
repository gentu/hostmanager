.class Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    const-string v1, "device_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BaseActivity STEALTH_FINISH received. deviceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MyDeviceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    .line 82
    invoke-virtual {v3}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-virtual {v1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->isFinishedByUser:Z

    .line 85
    iget-object v1, p0, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity$1;->this$0:Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;

    invoke-virtual {v1}, Lcom/samsung/android/uhm/framework/ui/base/BaseActivity;->finish()V

    .line 87
    :cond_0
    return-void
.end method
