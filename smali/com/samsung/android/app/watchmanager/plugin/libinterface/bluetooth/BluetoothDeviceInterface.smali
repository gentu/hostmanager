.class public interface abstract Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothDeviceInterface;
.super Ljava/lang/Object;
.source "BluetoothDeviceInterface.java"


# virtual methods
.method public abstract connectGattUsePublicAddr(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation
.end method

.method public abstract getActionAutoLockService()Ljava/lang/String;
.end method

.method public abstract getActionInRangeAlert()Ljava/lang/String;
.end method

.method public abstract getActionOutOfRangeAlert()Ljava/lang/String;
.end method

.method public abstract getAliasName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
.end method

.method public abstract getExtraDisconnectionReason()Ljava/lang/String;
.end method

.method public abstract getExtraLinkType()Ljava/lang/String;
.end method

.method public abstract getModelHighRssi()I
.end method

.method public abstract getModelLowRssi()I
.end method

.method public abstract getModelMidRssi()I
.end method

.method public abstract getRssiInRangeAlert()Ljava/lang/String;
.end method

.method public abstract getRssiOutOfRangeAlert()Ljava/lang/String;
.end method

.method public abstract monitorRawRssi(Landroid/bluetooth/BluetoothDevice;III)Z
.end method

.method public abstract setAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
.end method

.method public abstract setDeviceTypeAndDmtSupport(Landroid/bluetooth/BluetoothDevice;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation
.end method
