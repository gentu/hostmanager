.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/bluetooth/BluetoothHeadsetManager;
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
    .locals 1
    .param p1, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 12
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothHeadset;->semConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 17
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothHeadset;->semDisconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 22
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothHeadset;->semGetPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public setHeadsetSettings(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p1, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "settingValue"    # I

    .prologue
    .line 32
    const/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, p3}, Landroid/bluetooth/BluetoothHeadset;->semSetHeadsetSetting(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    return v0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p1, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "priority"    # I

    .prologue
    .line 27
    invoke-virtual {p1, p2, p3}, Landroid/bluetooth/BluetoothHeadset;->semSetPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method
