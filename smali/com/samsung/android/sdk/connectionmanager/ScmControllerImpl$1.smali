.class Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;
.super Lcom/samsung/android/sdk/connectionmanager/EventHandler;
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
    .line 32
    iput-object p1, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/connectionmanager/EventHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private bondStateChanged(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 6
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 198
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$000(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 200
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 203
    .local v1, "itemBundle":Landroid/os/Bundle;
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;-><init>(Landroid/os/Bundle;)V

    .line 205
    .local v0, "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;->NONE:Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;

    .line 208
    .local v2, "state":Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "BUNDLE_CMKEY_STRING_BONDSTATE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "str":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 214
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$000(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;->value()I

    move-result v5

    invoke-interface {v4, v0, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;->onBondStateChanged(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    .line 218
    .end local v0    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .end local v1    # "itemBundle":Landroid/os/Bundle;
    .end local v2    # "state":Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;
    :cond_0
    return-void

    .line 211
    .restart local v0    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .restart local v1    # "itemBundle":Landroid/os/Bundle;
    .restart local v2    # "state":Lcom/samsung/android/sdk/connectionmanager/ScmController$BondState;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private cmStateChanged(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 4
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 244
    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v2}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$000(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 246
    sget-object v0, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;->CM_AVAILABLE:Lcom/samsung/android/sdk/connectionmanager/ScmController$State;

    .line 249
    .local v0, "state":Lcom/samsung/android/sdk/connectionmanager/ScmController$State;
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "BUNDLE_CMKEY_STRING_CM_STATE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmController$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 255
    .end local v1    # "str":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v2}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$000(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmController$State;->value()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;->onStateChanged(I)V

    .line 258
    .end local v0    # "state":Lcom/samsung/android/sdk/connectionmanager/ScmController$State;
    :cond_0
    return-void

    .line 252
    .restart local v0    # "state":Lcom/samsung/android/sdk/connectionmanager/ScmController$State;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private deviceAdded(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 4
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 231
    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v2}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$000(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 235
    .local v1, "itemBundle":Landroid/os/Bundle;
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;-><init>(Landroid/os/Bundle;)V

    .line 237
    .local v0, "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    iget-object v2, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v2}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$000(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;->getBTLinkFeature()I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;->onDeviceAdded(ILcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;)V

    .line 240
    .end local v0    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .end local v1    # "itemBundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private errorEventReceived(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 6
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 100
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$000(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 104
    .local v2, "itemBundle":Landroid/os/Bundle;
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;-><init>(Landroid/os/Bundle;)V

    .line 106
    .local v0, "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->SPP_FATAL:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    .line 109
    .local v1, "errorCode":Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "BUNDLE_CMKEY_STRING_ERRORCODE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "str":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 114
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$000(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->value()I

    move-result v5

    invoke-interface {v4, v0, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;->onError(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    .line 117
    .end local v0    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .end local v1    # "errorCode":Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;
    .end local v2    # "itemBundle":Landroid/os/Bundle;
    :cond_0
    return-void

    .line 111
    .restart local v0    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .restart local v1    # "errorCode":Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;
    .restart local v2    # "itemBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private errorWifiP2pEventReceived(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 6
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 121
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$000(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 125
    .local v2, "itemBundle":Landroid/os/Bundle;
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;-><init>(Landroid/os/Bundle;)V

    .line 127
    .local v0, "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    sget-object v1, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->WIFIP2P_CONNECT_ERROR:Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;

    .line 130
    .local v1, "errorCode":Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "BUNDLE_CMKEY_STRING_ERRORCODE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "str":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 135
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$000(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;->value()I

    move-result v5

    invoke-interface {v4, v0, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;->onError(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    .line 138
    .end local v0    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .end local v1    # "errorCode":Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;
    .end local v2    # "itemBundle":Landroid/os/Bundle;
    :cond_0
    return-void

    .line 132
    .restart local v0    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .restart local v1    # "errorCode":Lcom/samsung/android/sdk/connectionmanager/ScmController$ErrorCode;
    .restart local v2    # "itemBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private linkStateChanged(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 6
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 176
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$000(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 181
    .local v1, "itemBundle":Landroid/os/Bundle;
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;-><init>(Landroid/os/Bundle;)V

    .line 183
    .local v0, "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;

    .line 186
    .local v2, "state":Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "BUNDLE_CMKEY_STRING_LINKSTATE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "str":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 191
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$000(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;->value()I

    move-result v5

    invoke-interface {v4, v0, v5}, Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;->onLinkStateChanged(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    .line 194
    .end local v0    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .end local v1    # "itemBundle":Landroid/os/Bundle;
    .end local v2    # "state":Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;
    :cond_0
    return-void

    .line 188
    .restart local v0    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .restart local v1    # "itemBundle":Landroid/os/Bundle;
    .restart local v2    # "state":Lcom/samsung/android/sdk/connectionmanager/ScmController$LinkState;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private scanFinished(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 1
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$000(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$000(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;->onScanFinished()V

    .line 227
    :cond_0
    return-void
.end method

.method private serviceStateChanged(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 8
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 142
    iget-object v5, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$000(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 147
    .local v1, "itemBundle":Landroid/os/Bundle;
    new-instance v0, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/connectionmanager/ScmWearableDeviceImpl;-><init>(Landroid/os/Bundle;)V

    .line 149
    .local v0, "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    sget-object v4, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->SPP:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;

    .line 152
    .local v4, "type":Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "str":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 158
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->DISCONNECTED:Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;

    .line 161
    .local v2, "state":Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "BUNDLE_CMKEY_STRING_SERVICESTATE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    .restart local v3    # "str":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 167
    .end local v3    # "str":Ljava/lang/String;
    :goto_1
    const-string v5, "SbcmControllerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "serviceStateChanged : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/connectionmanager/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v5, p0, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->this$0:Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;

    invoke-static {v5}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;->access$000(Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl;)Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;->value()I

    move-result v6

    invoke-virtual {v2}, Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;->value()I

    move-result v7

    invoke-interface {v5, v0, v6, v7}, Lcom/samsung/android/sdk/connectionmanager/ScmController$EventListener;->onServiceStateChanged(Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;II)V

    .line 172
    .end local v0    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .end local v1    # "itemBundle":Landroid/os/Bundle;
    .end local v2    # "state":Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;
    .end local v4    # "type":Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;
    :goto_2
    return-void

    .line 170
    :cond_0
    const-string v5, "SbcmControllerImpl"

    const-string v6, "serviceStateChanged : mEventListener is null"

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/connectionmanager/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 164
    .restart local v0    # "device":Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;
    .restart local v1    # "itemBundle":Landroid/os/Bundle;
    .restart local v2    # "state":Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;
    .restart local v4    # "type":Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceType;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 155
    .end local v2    # "state":Lcom/samsung/android/sdk/connectionmanager/ScmController$ServiceState;
    :catch_1
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public handleEventMessage(Lcom/sec/android/api/iface/CVMessage;)V
    .locals 4
    .param p1, "cvm"    # Lcom/sec/android/api/iface/CVMessage;

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/sec/android/api/iface/CVMessage;->getEventID()I

    move-result v0

    .line 39
    .local v0, "eventID":I
    const-string v1, "SbcmControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEventHandler, handleEventMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/connectionmanager/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sparse-switch v0, :sswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 44
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->deviceAdded(Lcom/sec/android/api/iface/CVMessage;)V

    goto :goto_0

    .line 49
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->scanFinished(Lcom/sec/android/api/iface/CVMessage;)V

    goto :goto_0

    .line 55
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->bondStateChanged(Lcom/sec/android/api/iface/CVMessage;)V

    goto :goto_0

    .line 61
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->linkStateChanged(Lcom/sec/android/api/iface/CVMessage;)V

    goto :goto_0

    .line 67
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->serviceStateChanged(Lcom/sec/android/api/iface/CVMessage;)V

    goto :goto_0

    .line 73
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->errorEventReceived(Lcom/sec/android/api/iface/CVMessage;)V

    goto :goto_0

    .line 79
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->cmStateChanged(Lcom/sec/android/api/iface/CVMessage;)V

    goto :goto_0

    .line 85
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->errorEventReceived(Lcom/sec/android/api/iface/CVMessage;)V

    goto :goto_0

    .line 91
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/connectionmanager/ScmControllerImpl$1;->errorEventReceived(Lcom/sec/android/api/iface/CVMessage;)V

    goto :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x211 -> :sswitch_0
        0x212 -> :sswitch_1
        0x213 -> :sswitch_3
        0x215 -> :sswitch_4
        0x216 -> :sswitch_2
        0x223 -> :sswitch_8
        0x224 -> :sswitch_5
        0x229 -> :sswitch_6
        0x242 -> :sswitch_7
    .end sparse-switch
.end method
