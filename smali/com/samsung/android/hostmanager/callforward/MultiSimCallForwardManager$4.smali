.class Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;
.super Ljava/lang/Object;
.source "MultiSimCallForwardManager.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCallForwardError(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 424
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGetCallForwardError starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$700(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)V

    .line 431
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGetCallForwardError ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    const-string v1, ""

    invoke-static {v0, p1, v1}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$1300(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 2
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "states"    # [I

    .prologue
    .line 412
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGetCallForwardSuccess starts"

    invoke-static {v0, v1, p2}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$1200(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)V

    .line 414
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$700(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)V

    .line 419
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGetCallForwardSuccess ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$1300(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProgress(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "activate"    # Z

    .prologue
    .line 436
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress starts, deviceID ["

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

    .line 437
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProgress ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void
.end method

.method public onSetCallForwardError(Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "activate"    # Z
    .param p3, "reason"    # I

    .prologue
    const/4 v3, 0x0

    .line 394
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetCallForwardError starts, activate ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], reason ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetCallForwardError starts, simState ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$100(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v0, v3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$600(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;Z)V

    .line 397
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$700(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)V

    .line 407
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSetCallForwardError ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$1000(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)[I

    move-result-object v0

    aget v0, v0, v3

    sget v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_SUCCESS:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$1000(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    sget v1, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->RESULT_SUCCESS:I

    if-ne v0, v1, :cond_2

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    const-string v1, ""

    invoke-static {v0, p1, v1, p2}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$900(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$1100(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;Ljava/lang/String;ZI)V

    goto :goto_0
.end method

.method public onSetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;Z[I)V
    .locals 3
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "activate"    # Z
    .param p4, "states"    # [I

    .prologue
    .line 380
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSetCallForwardSuccess starts"

    invoke-static {v0, v1, p2}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetCallForwardSuccess starts, activate ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetCallForwardSuccess starts, simState ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$100(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$SimState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$600(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;Z)V

    .line 384
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$700(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;)V

    .line 389
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSetCallForwardSuccess ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager$4;->this$0:Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;->access$900(Lcom/samsung/android/hostmanager/callforward/MultiSimCallForwardManager;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
