.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/bluetooth/BluetoothGattManager;
.super Ljava/lang/Object;
.source "BluetoothGattManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothGattInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public monitorRssi(Landroid/bluetooth/BluetoothGatt;III)Z
    .locals 1
    .param p1, "bluetoothGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "lowRssi"    # I
    .param p3, "midRssi"    # I
    .param p4, "highRssi"    # I

    .prologue
    .line 11
    invoke-virtual {p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGatt;->semMonitorRssi(III)Z

    move-result v0

    return v0
.end method
