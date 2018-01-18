.class Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;
.super Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;
.source "ScmControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/connectionmanager/ResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private getErrorType(Lcom/sec/android/api/iface/CVMessage;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;
    .locals 4
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 391
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "str":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->FAIL:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    .line 395
    .local v0, "error":Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;
    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 400
    :goto_0
    return-object v0

    .line 396
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getServiceTypeList(Lcom/sec/android/api/iface/CVMessage;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/api/iface/CVMessage;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "BUNDLE_CMKEY_STRINGLIST_SERVICETYPELIST"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 408
    .local v3, "typeStrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 409
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 427
    :cond_0
    return-object v2

    .line 411
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v2, "typeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 417
    .local v1, "type":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    move-result-object v0

    .line 419
    .local v0, "sType":Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->value()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    .end local v0    # "sType":Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private responseCancel(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 6
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->getErrorType(Lcom/sec/android/api/iface/CVMessage;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    move-result-object v1

    .line 355
    .local v1, "error":Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->getServiceTypeList(Lcom/sec/android/api/iface/CVMessage;)Ljava/util/ArrayList;

    move-result-object v3

    .line 357
    .local v3, "typeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 360
    .local v2, "itemBundle":Landroid/os/Bundle;
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;-><init>(Landroid/os/Bundle;)V

    .line 362
    .local v0, "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$100(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 363
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$100(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->value()I

    move-result v5

    invoke-interface {v4, v0, v3, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onCancel(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    .line 365
    :cond_0
    return-void
.end method

.method private responseConnect(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 6
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->getErrorType(Lcom/sec/android/api/iface/CVMessage;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    move-result-object v1

    .line 340
    .local v1, "error":Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->getServiceTypeList(Lcom/sec/android/api/iface/CVMessage;)Ljava/util/ArrayList;

    move-result-object v3

    .line 342
    .local v3, "typeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 345
    .local v2, "itemBundle":Landroid/os/Bundle;
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;-><init>(Landroid/os/Bundle;)V

    .line 347
    .local v0, "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$100(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 348
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$100(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->value()I

    move-result v5

    invoke-interface {v4, v0, v3, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onConnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    .line 351
    :cond_0
    return-void
.end method

.method private responseDisconnect(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 6
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->getErrorType(Lcom/sec/android/api/iface/CVMessage;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    move-result-object v1

    .line 370
    .local v1, "error":Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->getServiceTypeList(Lcom/sec/android/api/iface/CVMessage;)Ljava/util/ArrayList;

    move-result-object v3

    .line 372
    .local v3, "typeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 375
    .local v2, "itemBundle":Landroid/os/Bundle;
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;-><init>(Landroid/os/Bundle;)V

    .line 377
    .local v0, "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$100(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 378
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$100(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->value()I

    move-result v5

    invoke-interface {v4, v0, v3, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onDisconnect(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;Ljava/util/ArrayList;I)V

    .line 380
    :cond_0
    return-void
.end method

.method private responseScsSetAccount(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 3
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->getErrorType(Lcom/sec/android/api/iface/CVMessage;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    move-result-object v0

    .line 385
    .local v0, "error":Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$100(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$100(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->value()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onSetAccount(I)V

    .line 388
    :cond_0
    return-void
.end method

.method private responseStartScan(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 3
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->getErrorType(Lcom/sec/android/api/iface/CVMessage;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    move-result-object v0

    .line 307
    .local v0, "error":Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$100(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$100(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->value()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onStartScan(I)V

    .line 310
    :cond_0
    return-void
.end method

.method private responseStopScan(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 3
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->getErrorType(Lcom/sec/android/api/iface/CVMessage;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    move-result-object v0

    .line 316
    .local v0, "error":Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$100(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$100(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->value()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onStopScan(I)V

    .line 320
    :cond_0
    return-void
.end method

.method private responseUnpairing(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 5
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->getErrorType(Lcom/sec/android/api/iface/CVMessage;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;

    move-result-object v1

    .line 326
    .local v1, "error":Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 329
    .local v2, "itemBundle":Landroid/os/Bundle;
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;-><init>(Landroid/os/Bundle;)V

    .line 331
    .local v0, "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    iget-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v3}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$100(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 332
    iget-object v3, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v3}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$100(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorType;->value()I

    move-result v4

    invoke-interface {v3, v0, v4}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ResponseListener;->onRemoveBond(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    .line 335
    :cond_0
    return-void
.end method


# virtual methods
.method public handleResponseMessage(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 4
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 267
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v0

    .line 269
    .local v0, "cmd":I
    const-string v1, "SbcmControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mResponseHandler, handleEventMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/connectionmanager/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sparse-switch v0, :sswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 273
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->responseStartScan(Lcom/sec/android/api/iface/CVMessage;)V

    goto :goto_0

    .line 277
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->responseStopScan(Lcom/sec/android/api/iface/CVMessage;)V

    goto :goto_0

    .line 281
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->responseUnpairing(Lcom/sec/android/api/iface/CVMessage;)V

    goto :goto_0

    .line 285
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->responseConnect(Lcom/sec/android/api/iface/CVMessage;)V

    goto :goto_0

    .line 289
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->responseCancel(Lcom/sec/android/api/iface/CVMessage;)V

    goto :goto_0

    .line 293
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->responseDisconnect(Lcom/sec/android/api/iface/CVMessage;)V

    goto :goto_0

    .line 297
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$2;->responseScsSetAccount(Lcom/sec/android/api/iface/CVMessage;)V

    goto :goto_0

    .line 271
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_5
        0x24 -> :sswitch_4
        0x26 -> :sswitch_6
    .end sparse-switch
.end method
