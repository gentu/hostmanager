.class public Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/BluetoothDeviceManager;
.super Ljava/lang/Object;
.source "BluetoothDeviceManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;


# static fields
.field public static final EXTRA_DISCONNECTION_REASON:Ljava/lang/String; = "android.bluetooth.device.extra.DISCONNECTION_REASON"

.field public static final EXTRA_LINKTYPE:Ljava/lang/String; = "android.bluetooth.device.extra.LINKTYPE"


# instance fields
.field ACTION_AUTO_LOCK_SERVICE:Ljava/lang/String;

.field ACTION_IN_RANGE_ALERT:Ljava/lang/String;

.field ACTION_OUT_OF_RANGE_ALERT:Ljava/lang/String;

.field RSSI_IN_RANGE_ALERT:Ljava/lang/String;

.field RSSI_OUT_OF_RANGE_ALERT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "android.bluetooth.device.action.RSSI_OUT_OF_RANGE_ALERT"

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/BluetoothDeviceManager;->RSSI_OUT_OF_RANGE_ALERT:Ljava/lang/String;

    .line 13
    const-string v0, "android.bluetooth.device.action.RSSI_IN_RANGE_ALERT"

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/BluetoothDeviceManager;->RSSI_IN_RANGE_ALERT:Ljava/lang/String;

    .line 14
    const-string v0, "android.bluetooth.device.action.ACTION_OUT_OF_RANGE_ALERT"

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/BluetoothDeviceManager;->ACTION_OUT_OF_RANGE_ALERT:Ljava/lang/String;

    .line 15
    const-string v0, "android.bluetooth.device.action.ACTION_IN_RANGE_ALERT"

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/BluetoothDeviceManager;->ACTION_IN_RANGE_ALERT:Ljava/lang/String;

    .line 16
    const-string v0, "android.bluetooth.device.action.AUTO_LOCK_SERVICE"

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/BluetoothDeviceManager;->ACTION_AUTO_LOCK_SERVICE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .locals 6
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    const-string v0, "connectGattUsePubilcAddr"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    const-class v2, Landroid/bluetooth/BluetoothGattCallback;

    aput-object v2, v1, v4

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethodThrowsException(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getActionAutoLockService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/BluetoothDeviceManager;->ACTION_AUTO_LOCK_SERVICE:Ljava/lang/String;

    return-object v0
.end method

.method public getActionInRangeAlert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/BluetoothDeviceManager;->ACTION_IN_RANGE_ALERT:Ljava/lang/String;

    return-object v0
.end method

.method public getActionOutOfRangeAlert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/BluetoothDeviceManager;->ACTION_OUT_OF_RANGE_ALERT:Ljava/lang/String;

    return-object v0
.end method

.method public getAliasName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 23
    const-string v0, "getAliasName"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExtraDisconnectionReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "android.bluetooth.device.extra.DISCONNECTION_REASON"

    return-object v0
.end method

.method public getExtraLinkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "android.bluetooth.device.extra.LINKTYPE"

    return-object v0
.end method

.method public getModelHighRssi()I
    .locals 4

    .prologue
    .line 45
    const-class v1, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "getModelHighRssi"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "retObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getModelLowRssi()I
    .locals 4

    .prologue
    .line 33
    const-class v1, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "getModelLowRssi"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "retObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getModelMidRssi()I
    .locals 4

    .prologue
    .line 39
    const-class v1, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "getModelMidRssi"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "retObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getRssiInRangeAlert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/BluetoothDeviceManager;->RSSI_IN_RANGE_ALERT:Ljava/lang/String;

    return-object v0
.end method

.method public getRssiOutOfRangeAlert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/BluetoothDeviceManager;->RSSI_OUT_OF_RANGE_ALERT:Ljava/lang/String;

    return-object v0
.end method

.method public monitorRawRssi(Landroid/bluetooth/BluetoothDevice;III)Z
    .locals 4
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "lowRssi"    # I
    .param p3, "midRssi"    # I
    .param p4, "highRssi"    # I

    .prologue
    .line 51
    const-string v0, "monitorRawRssi"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 3
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "aliasName"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, "setAlias"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setDeviceTypeAndDmtSupport(Landroid/bluetooth/BluetoothDevice;IZ)Z
    .locals 4
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # I
    .param p3, "dmt_supported"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 56
    const-string v0, "setDeviceTypeAndDmtSupport"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethodThrowsException(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
