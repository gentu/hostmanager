.class Landroid/bluetooth/BluetoothHidDevice$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothHidDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHidDevice;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHidDevice;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 4
    .param p1, "up"    # Z

    .prologue
    .line 150
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBluetoothStateChange: up="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidDevice;->access$100(Landroid/bluetooth/BluetoothHidDevice;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    .line 153
    if-nez p1, :cond_1

    .line 154
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Unbinding service..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidDevice;->access$200(Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothHidDevice;->access$202(Landroid/bluetooth/BluetoothHidDevice;Landroid/bluetooth/IBluetoothHidDevice;)Landroid/bluetooth/IBluetoothHidDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidDevice;->access$300(Landroid/bluetooth/BluetoothHidDevice;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-static {v3}, Landroid/bluetooth/BluetoothHidDevice;->access$100(Landroid/bluetooth/BluetoothHidDevice;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 176
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "onBluetoothStateChange: could not unbind service:"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 175
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 165
    :cond_1
    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidDevice;->access$200(Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v1

    if-nez v1, :cond_0

    .line 166
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Binding HID Device service..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHidDevice;->doBind()Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 169
    :catch_1
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "onBluetoothStateChange: could not bind to HID Dev service: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "onBluetoothStateChange: could not bind to HID Dev service: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
