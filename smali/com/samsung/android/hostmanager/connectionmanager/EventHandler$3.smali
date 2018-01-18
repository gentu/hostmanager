.class Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$3;
.super Landroid/os/Handler;
.source "EventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 265
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EventHandler : Received intent"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 268
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 269
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Intent is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->releaseWakeLock()V

    .line 275
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 278
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Intent action is null"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->w_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_2
    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 284
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$300(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto :goto_0

    .line 286
    :cond_3
    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 288
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$400(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto :goto_0

    .line 290
    :cond_4
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 292
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$500(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto :goto_0

    .line 294
    :cond_5
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 296
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto :goto_0

    .line 298
    :cond_6
    const-string v2, "android.bluetooth.device.action.UUID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 300
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$700(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto :goto_0

    .line 302
    :cond_7
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 304
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$800(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto :goto_0

    .line 306
    :cond_8
    const-string v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 308
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$900(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto :goto_0

    .line 310
    :cond_9
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 312
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1000(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 314
    :cond_a
    const-string v2, "com.sec.android.service.connectionmanager.action.MSG_WAIT_FOR_CM_GATTSERVICE_BINDING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 316
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1100(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 318
    :cond_b
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 320
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1200(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 322
    :cond_c
    const-string v2, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 324
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1300(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 326
    :cond_d
    const-string v2, "com.samsung.android.plugin.ACTION_PLUGIN_CHANGE_NOTI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 327
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1400(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 328
    :cond_e
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 330
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1500(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 331
    :cond_f
    const-string v2, "com.sec.android.service.connectionmanager.action.MSG_SET_MANUAL_AUTO_LOCK_RSSI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-static {v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$1600(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
