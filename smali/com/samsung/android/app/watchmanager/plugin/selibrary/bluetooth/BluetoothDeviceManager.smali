.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/bluetooth/BluetoothDeviceManager;
.super Ljava/lang/Object;
.source "BluetoothDeviceManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "BluetoothDeviceManager"

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/bluetooth/BluetoothDeviceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p1, p2, p3}, Landroid/bluetooth/BluetoothDevice;->semConnectGattByPublicAddress(Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method

.method public getActionAutoLockService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "com.samsung.bluetooth.device.action.AUTO_LOCK_SERVICE"

    return-object v0
.end method

.method public getActionInRangeAlert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "com.samsung.bluetooth.device.action.ACTION_IN_RANGE_ALERT"

    return-object v0
.end method

.method public getActionOutOfRangeAlert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "com.samsung.bluetooth.device.action.ACTION_OUT_OF_RANGE_ALERT"

    return-object v0
.end method

.method public getAliasName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 17
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraDisconnectionReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "com.samsung.bluetooth.device.extra.DISCONNECTION_REASON"

    return-object v0
.end method

.method public getExtraLinkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "com.samsung.bluetooth.device.extra.LINKTYPE"

    return-object v0
.end method

.method public getModelHighRssi()I
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->semGetModelHighRssi()I

    move-result v0

    return v0
.end method

.method public getModelLowRssi()I
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->semGetModelLowRssi()I

    move-result v0

    return v0
.end method

.method public getModelMidRssi()I
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->semGetModelMidRssi()I

    move-result v0

    return v0
.end method

.method public getRssiInRangeAlert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "com.samsung.bluetooth.device.action.RSSI_IN_RANGE_ALERT"

    return-object v0
.end method

.method public getRssiOutOfRangeAlert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "com.samsung.bluetooth.device.action.RSSI_OUT_OF_RANGE_ALERT"

    return-object v0
.end method

.method public monitorRawRssi(Landroid/bluetooth/BluetoothDevice;III)Z
    .locals 1
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "lowRssi"    # I
    .param p3, "midRssi"    # I
    .param p4, "highRssi"    # I

    .prologue
    .line 42
    invoke-virtual {p1, p2, p3, p4}, Landroid/bluetooth/BluetoothDevice;->semMonitorRssi(III)Z

    move-result v0

    return v0
.end method

.method public setAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 1
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "aliasName"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->semSetAlias(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceTypeAndDmtSupport(Landroid/bluetooth/BluetoothDevice;IZ)Z
    .locals 2
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # I
    .param p3, "dmt_supported"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/bluetooth/BluetoothDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "[SEBT]Unused SE-API"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    return v0
.end method
