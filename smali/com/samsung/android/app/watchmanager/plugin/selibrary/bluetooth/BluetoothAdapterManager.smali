.class public Lcom/samsung/android/app/watchmanager/plugin/selibrary/bluetooth/BluetoothAdapterManager;
.super Ljava/lang/Object;
.source "BluetoothAdapterManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothAdapterInterface;


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "BluetoothAdapterManager"

    sput-object v0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/bluetooth/BluetoothAdapterManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAutoConnDevice(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->semClearBleAutoConnection()V

    .line 35
    return-void
.end method

.method public configHciSnoopLogForExternal(Landroid/bluetooth/BluetoothAdapter;Z)Z
    .locals 1
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->semConfigHciSnoopLogForExternal(Z)Z

    move-result v0

    return v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothAdapter;)I
    .locals 1
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->semGetConnectionState()I

    move-result v0

    return v0
.end method

.method public getLEAddress(Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/String;
    .locals 2
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 45
    sget-object v0, Lcom/samsung/android/app/watchmanager/plugin/selibrary/bluetooth/BluetoothAdapterManager;->TAG:Ljava/lang/String;

    const-string v1, "[SEBT]Unused SE-API"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBLEAutoconnectSupport(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 1
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->semIsBleAutoConnectionSupported()Z

    move-result v0

    return v0
.end method

.method public setConnectionScanParameter(Landroid/bluetooth/BluetoothAdapter;II)Z
    .locals 1
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "scan_interval"    # I
    .param p3, "scan_window"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter;->semSetBleConnectionScanParameter(II)Z

    move-result v0

    return v0
.end method

.method public shutdown(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 1
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->semShutdown()Z

    move-result v0

    return v0
.end method
