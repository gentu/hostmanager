.class Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$3;
.super Ljava/lang/Object;
.source "AutoDisableHelper.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$3;->this$0:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCallForwardError(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisableCallForwardListener :: onGetCallForwardError starts, deviceID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisableCallForwardListener :: onGetCallForwardError ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method

.method public onGetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "states"    # [I

    .prologue
    .line 233
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisableCallForwardListener :: onGetCallForwardSuccess starts, deviceID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisableCallForwardListener :: onGetCallForwardSuccess ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method public onProgress(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "activate"    # Z

    .prologue
    .line 248
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisableCallForwardListener :: onProgress starts, deviceID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], activate ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisableCallForwardListener :: onProgress ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method public onSetCallForwardError(Ljava/lang/String;ZI)V
    .locals 7
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "activate"    # Z
    .param p3, "reason"    # I

    .prologue
    .line 208
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DisableCallForwardListener :: onSetCallForwardError starts, activate ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], deviceID ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], reason ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$3;->this$0:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$500(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$3;->this$0:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$600(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->getInstance()Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$3;->this$0:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$700(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$3;->this$0:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    .line 213
    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$800(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$3;->this$0:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    .line 214
    invoke-static {v5}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$400(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v5

    const/4 v6, 0x0

    .line 212
    invoke-static {v2, v3, v4, v5, v6}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$900(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;Z)V

    .line 228
    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisableCallForwardListener :: onSetCallForwardError ends"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void

    .line 216
    :cond_1
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "send UHM.ACTION_CF_AUTO_DISABLE_FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v0, "bun":Landroid/os/Bundle;
    const-string v2, "deviceid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v1, Landroid/content/Intent;

    const-string v2, "UHM.ACTION_CF_AUTO_DISABLE_FAILED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 221
    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$3;->this$0:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$700(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$3;->this$0:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$400(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$3;->this$0:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$400(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardError(Ljava/lang/String;ZI)V

    goto :goto_0
.end method

.method public onSetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;Z[I)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "activate"    # Z
    .param p4, "states"    # [I

    .prologue
    .line 196
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisableCallForwardListener :: onSetCallForwardSuccess starts"

    invoke-static {v0, v1, p2}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetCallForwardSuccess starts, activate ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], deviceID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], states ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$3;->this$0:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    .line 199
    invoke-static {v2, p4}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$200(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;[I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$3;->this$0:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$400(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper$3;->this$0:Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$400(Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;Z[I)V

    .line 203
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/AutoDisableHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisableCallForwardListener :: onSetCallForwardSuccess ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method
