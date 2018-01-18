.class public Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/BluetoothHeadsetManager;
.super Ljava/lang/Object;
.source "BluetoothHeadsetManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothHeadsetInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    const-string v0, "connect"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/bluetooth/BluetoothDevice;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    const-string v0, "disconnect"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/bluetooth/BluetoothDevice;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 24
    const-string v0, "getPriority"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setHeadsetSettings(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4
    .param p1, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "settingValue"    # I

    .prologue
    .line 34
    const-string v0, "setHeadsetSettings"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4
    .param p1, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "priority"    # I

    .prologue
    .line 29
    const-string v0, "setPriority"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
