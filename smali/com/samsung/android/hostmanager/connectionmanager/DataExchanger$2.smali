.class Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;
.super Ljava/lang/Object;
.source "DataExchanger.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ISAPEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;Ljava/lang/String;)V
    .locals 6
    .param p1, "error"    # Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 286
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[jdub] ISAPEventListener.onConnected, error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;->SUCCESS:Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

    if-ne p1, v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v2, v5}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$402(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;Z)Z

    .line 290
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v2, p2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$502(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 294
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v3, "SUCCESS"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v2, "BUNDLE_STRING_ADDRESS"

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 297
    .local v1, "deviceBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 298
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v2, v5, v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$700(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;ILandroid/os/Bundle;)V

    .line 301
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    iget-object v4, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v4}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$500(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$800(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->setWearableProfileVersion(Ljava/lang/String;)V

    .line 316
    :goto_0
    return-void

    .line 304
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "deviceBundle":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$402(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;Z)Z

    .line 307
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 308
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v3, "FAIL"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v2, "BUNDLE_STRING_ADDRESS"

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 311
    .restart local v1    # "deviceBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 312
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v2, v5, v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$700(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 390
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[jdub] SAAgent.onDestroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2$2;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 416
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 417
    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 6
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    const/16 v5, 0x100

    .line 343
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[jdub] onError, errorMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[jdub] onError, errorCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/16 v2, 0xc0d

    if-ne p2, v2, :cond_0

    .line 348
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$1200(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$1100(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 382
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 383
    .local v1, "eventBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 384
    const-string v2, "BUNDLE_CMKEY_STRING_ERRORCODE"

    const-string v3, "SPP_FATAL"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$900(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    const/16 v3, 0x224

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->publishEvent(ILandroid/os/Bundle;)V

    .line 386
    return-void

    .line 349
    .end local v1    # "eventBundle":Landroid/os/Bundle;
    :cond_0
    const/16 v2, 0x500

    if-eq p2, v2, :cond_1

    const/16 v2, 0x406

    if-eq p2, v2, :cond_1

    const/16 v2, 0x407

    if-eq p2, v2, :cond_1

    const/16 v2, 0x40d

    if-ne p2, v2, :cond_3

    .line 351
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$1300(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 352
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$1308(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)I

    .line 353
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->findPeer()Z

    goto :goto_0

    .line 355
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$1302(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;I)I

    .line 357
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 358
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v3, "FAIL"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v2, "BUNDLE_CMKEY_INT_ERRORCODE"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 360
    const-string v2, "BUNDLE_STRING_ADDRESS"

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v2, v5, v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$700(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 363
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    const/16 v2, 0x404

    if-ne p2, v2, :cond_4

    .line 365
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 371
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 374
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 375
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v3, "FAIL"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v2, "BUNDLE_CMKEY_INT_ERRORCODE"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 377
    const-string v2, "BUNDLE_STRING_ADDRESS"

    iget-object v3, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v3}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v2, v5, v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$700(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public onReceivedData([BLcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "error"    # Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;

    .prologue
    .line 331
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[jdub] << onReceivedData, error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$AgentErrorType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 335
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[jdub] << received data["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v1, p1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$1000(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;[B)V

    .line 339
    return-void
.end method

.method public onServiceConnectionLost(Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;)V
    .locals 4
    .param p1, "reason"    # Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;

    .prologue
    const/4 v3, 0x0

    .line 320
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[jdub] onServiceConnectionLost, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/connectionmanager/SAAgentService$ConnectionLostReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v0, v3}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$402(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;Z)Z

    .line 323
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$900(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getWearableState()Lcom/samsung/android/hostmanager/connectionmanager/WearableState;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/WearableState;->setFindPeerComplete(Ljava/lang/String;Z)V

    .line 326
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;->access$502(Lcom/samsung/android/hostmanager/connectionmanager/DataExchanger;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    return-void
.end method
