.class public abstract Lcom/samsung/android/hostmanager/connectionmanager/helper/TempBluetoothGattCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "TempBluetoothGattCallback.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onTempMonitorRssi(Landroid/bluetooth/BluetoothGatt;I)V
.end method
