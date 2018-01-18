.class Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$2;
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
    .line 189
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 192
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    .line 194
    .local v4, "intent":Landroid/content/Intent;
    if-nez v4, :cond_1

    .line 195
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[jdub] handleMessage, intent is null!!"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 202
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[jdub] handleMessage, intent action is null!"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getRssiInRangeAlert()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v6, :cond_3

    .line 207
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[jdub] action : Strong"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 210
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 211
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v3

    .line 212
    .local v3, "deviceBundle":Landroid/os/Bundle;
    const-string v5, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 214
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    const-string v6, "SERVICECONTROLLER"

    const/16 v7, 0x227

    invoke-static {v5, v6, v7, v1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    goto :goto_0

    .line 215
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "deviceBundle":Landroid/os/Bundle;
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/bluetooth/BluetoothDeviceFactory;->get()Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;->getRssiOutOfRangeAlert()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v6, :cond_0

    .line 216
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[jdub] action : Weak"

    invoke-static {v5, v6}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 219
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 220
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v3

    .line 221
    .restart local v3    # "deviceBundle":Landroid/os/Bundle;
    const-string v5, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 223
    iget-object v5, p0, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    const-string v6, "SERVICECONTROLLER"

    const/16 v7, 0x226

    invoke-static {v5, v6, v7, v1, v4}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/Intent;)V

    goto :goto_0
.end method
