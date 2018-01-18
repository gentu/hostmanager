.class Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;
.super Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface$Stub;
.source "CallForwardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/callforward/CallForwardManager;
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
    .line 414
    iput-object p1, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-direct {p0}, Lcom/samsung/accessory/callprovider/ICallForwardingCallbackInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public result(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 417
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ICallForwardingCallbackInterface :: result starts"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    if-eqz p1, :cond_2

    .line 419
    const-string v4, "Type"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 420
    .local v3, "type_response":I
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ICallForwardingCallbackInterface :: result message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$500(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getWearableDevicePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "gearNumber":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ICallForwardingCallbackInterface :: gearNumber"

    invoke-static {v4, v5, v0}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4, v0}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$600(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    if-nez v3, :cond_5

    .line 428
    const-string v4, "phone_number"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "number":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MESSAGE_GET_CALLFORWARDING resultNumber"

    invoke-static {v4, v5, v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "FAILED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 431
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$700(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)V

    .line 432
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$500(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onGetCallForwardError(Ljava/lang/String;)V

    .line 501
    .end local v1    # "number":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$1300(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)V

    .line 503
    .end local v0    # "gearNumber":Ljava/lang/String;
    .end local v3    # "type_response":I
    :cond_2
    return-void

    .line 434
    .restart local v0    # "gearNumber":Ljava/lang/String;
    .restart local v1    # "number":Ljava/lang/String;
    .restart local v3    # "type_response":I
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$900(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v0}, Lcom/samsung/android/hostmanager/callforward/TelephonyHelper;->compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 435
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$500(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [I

    aput v8, v6, v8

    invoke-interface {v4, v5, v1, v6}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onGetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_0

    .line 437
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$700(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)V

    .line 438
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$500(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onGetCallForwardError(Ljava/lang/String;)V

    goto :goto_0

    .line 441
    .end local v1    # "number":Ljava/lang/String;
    :cond_5
    if-ne v3, v7, :cond_9

    .line 442
    const-string v4, "phone_number"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    .restart local v1    # "number":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MESSAGE_SET_CALLFORWARDING resultNumber"

    invoke-static {v4, v5, v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v4, "FAILED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 445
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$500(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$1000(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Z

    move-result v6

    invoke-interface {v4, v5, v6, v9}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardError(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 447
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$1000(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 448
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$500(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$1000(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Z

    move-result v6

    new-array v7, v7, [I

    aput v8, v7, v8

    invoke-interface {v4, v5, v1, v6, v7}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;Z[I)V

    goto/16 :goto_0

    .line 450
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$900(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v0}, Lcom/samsung/android/hostmanager/callforward/TelephonyHelper;->compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 451
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$500(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$1000(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Z

    move-result v6

    new-array v7, v7, [I

    aput v8, v7, v8

    invoke-interface {v4, v5, v1, v6, v7}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;Z[I)V

    goto/16 :goto_0

    .line 453
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$500(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$1000(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Z

    move-result v6

    invoke-interface {v4, v5, v6, v10}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardError(Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .line 457
    .end local v1    # "number":Ljava/lang/String;
    :cond_9
    if-ne v3, v9, :cond_a

    .line 458
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MESSAGE_TIMEOUT_GET"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$500(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onGetCallForwardError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 460
    :cond_a
    const/4 v4, 0x3

    if-ne v3, v4, :cond_b

    .line 461
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MESSAGE_TIMEOUT_SET"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$500(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$1000(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Z

    move-result v6

    invoke-interface {v4, v5, v6, v9}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardError(Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .line 463
    :cond_b
    const/4 v4, 0x4

    if-ne v3, v4, :cond_11

    .line 464
    const-string v4, "phone_number"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    .restart local v1    # "number":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MESSAGE_SET_CALLFORWARDING_USSD resultNumber"

    invoke-static {v4, v5, v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 467
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$500(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$1000(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Z

    move-result v6

    invoke-interface {v4, v5, v6, v9}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardError(Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .line 469
    :cond_c
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$1100(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 470
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$900(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/samsung/android/hostmanager/callforward/PhoneUtilsJpn;->parseUSSD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 471
    .local v2, "resultParseUSSDResult":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NTT carrier has ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    if-nez v2, :cond_d

    .line 473
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$500(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$1000(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Z

    move-result v6

    invoke-interface {v4, v5, v6, v9}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardError(Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .line 475
    :cond_d
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$500(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$1000(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Z

    move-result v6

    new-array v7, v7, [I

    aput v8, v7, v8

    invoke-interface {v4, v5, v1, v6, v7}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;Z[I)V

    goto/16 :goto_0

    .line 477
    .end local v2    # "resultParseUSSDResult":Ljava/lang/String;
    :cond_e
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$1200(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    move-result-object v4

    .line 478
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getCarrier()Ljava/lang/String;

    move-result-object v4

    .line 477
    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/PrimaryUSSDResponceParserUtils;->isExistKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 479
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    .line 480
    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$900(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$1200(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getCarrier()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/samsung/android/hostmanager/callforward/PrimaryUSSDResponceParserUtils;->parseUSSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 481
    .restart local v2    # "resultParseUSSDResult":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resultParseUSSDResult has value ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    if-nez v2, :cond_f

    .line 484
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$500(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$1000(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Z

    move-result v6

    invoke-interface {v4, v5, v6, v9}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardError(Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .line 487
    :cond_f
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$500(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$1000(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Z

    move-result v6

    new-array v7, v7, [I

    aput v8, v7, v8

    invoke-interface {v4, v5, v1, v6, v7}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;Z[I)V

    goto/16 :goto_0

    .line 493
    .end local v2    # "resultParseUSSDResult":Ljava/lang/String;
    :cond_10
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$500(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$1000(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Z

    move-result v6

    new-array v7, v7, [I

    aput v8, v7, v8

    invoke-interface {v4, v5, v1, v6, v7}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardSuccess(Ljava/lang/String;Ljava/lang/String;Z[I)V

    goto/16 :goto_0

    .line 496
    .end local v1    # "number":Ljava/lang/String;
    :cond_11
    if-ne v3, v10, :cond_1

    .line 497
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MESSAGE_TIMEOUT_SET_USSD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v4, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$800(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v5}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$500(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/hostmanager/callforward/CallForwardManager$8;->this$0:Lcom/samsung/android/hostmanager/callforward/CallForwardManager;

    invoke-static {v6}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->access$1000(Lcom/samsung/android/hostmanager/callforward/CallForwardManager;)Z

    move-result v6

    invoke-interface {v4, v5, v6, v9}, Lcom/samsung/android/hostmanager/callforward/ICallForwardListener;->onSetCallForwardError(Ljava/lang/String;ZI)V

    goto/16 :goto_0
.end method
