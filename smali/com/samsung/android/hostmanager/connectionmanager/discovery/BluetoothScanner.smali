.class public abstract Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;
.super Ljava/lang/Object;
.source "BluetoothScanner.java"


# static fields
.field private static DEFAULT_SCAN_LOOP_COUNT:I

.field protected static TAG:Ljava/lang/String;


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mLoopCount:I

.field private mLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "BluetoothScanner"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->TAG:Ljava/lang/String;

    .line 13
    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->DEFAULT_SCAN_LOOP_COUNT:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->mLooper:Landroid/os/Looper;

    .line 17
    sget v0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->DEFAULT_SCAN_LOOP_COUNT:I

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->mLoopCount:I

    .line 19
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 22
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->mLooper:Landroid/os/Looper;

    .line 24
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 25
    return-void
.end method


# virtual methods
.method protected getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method protected getScanMaxLoopCount()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->mLoopCount:I

    return v0
.end method

.method protected getScannerLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public abstract isScanning()Z
.end method

.method protected startBluetoothScan()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 59
    :goto_0
    return v0

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->TAG:Ljava/lang/String;

    const-string v2, "Make the user enable BT if it isn\'t already"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 52
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->TAG:Ljava/lang/String;

    const-string v1, "Bluetooth is discovering"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 58
    :cond_2
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->TAG:Ljava/lang/String;

    const-string v1, "Bluetooth Scan is started"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v0

    goto :goto_0
.end method

.method public abstract startScan()Z
.end method

.method protected stopBluetoothScan()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 64
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 65
    const/4 v0, 0x0

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 69
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->TAG:Ljava/lang/String;

    const-string v1, "Bluetooth is discovering"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->TAG:Ljava/lang/String;

    const-string v1, "Bluetooth Scan is stopped"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    move-result v0

    goto :goto_0
.end method

.method public abstract stopScan()Z
.end method
