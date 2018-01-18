.class public Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/BluetoothAdapterManager;
.super Ljava/lang/Object;
.source "BluetoothAdapterManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/bluetooth/BluetoothAdapterInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAutoConnDevice(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 31
    const-string v0, "clearAutoConnDevice"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public configHciSnoopLogForExternal(Landroid/bluetooth/BluetoothAdapter;Z)Z
    .locals 4
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 21
    const-string v0, "configHciSnoopLogForExternal"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethodThrowsException(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothAdapter;)I
    .locals 2
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 16
    const-string v0, "getConnectionState"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethodThrowsException(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLEAddress(Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/String;
    .locals 2
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 41
    const-string v0, "getLEAddress"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isBLEAutoconnectSupport(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 3
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 11
    const-string v0, "isBLEAutoconnectSupport"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethodThrowsException(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setConnectionScanParameter(Landroid/bluetooth/BluetoothAdapter;II)Z
    .locals 4
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "scan_interval"    # I
    .param p3, "scan_window"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 26
    const-string v0, "setConnectionScanParameter"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethodThrowsException(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shutdown(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 2
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "shutdown"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/watchmanager/plugin/sdllibrary/bluetooth/ReflectUtil;->callMethodThrowsException(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
