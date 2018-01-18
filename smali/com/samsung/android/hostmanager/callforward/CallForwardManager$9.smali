.class Lcom/samsung/android/hostmanager/callforward/CallForwardManager$9;
.super Ljava/lang/Object;
.source "CallForwardManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->setARSType(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$9;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 526
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "send UHM.ACTION_SHOW_CF_ARS_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$9;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$900(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$9;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$1000(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UHM.ACTION_SHOW_CF_ENABLE_ARS_NOTIFICATION"

    :goto_0
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 528
    return-void

    .line 527
    :cond_0
    const-string v0, "UHM.ACTION_SHOW_CF_DISABLE_ARS_NOTIFICATION"

    goto :goto_0
.end method
