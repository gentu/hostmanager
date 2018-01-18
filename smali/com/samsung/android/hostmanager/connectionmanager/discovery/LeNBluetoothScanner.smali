.class public Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;
.super Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;
.source "LeNBluetoothScanner.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final BT_SCAN_PERIOD:J = 0x2710L

.field private static final LE_SCAN_PERIOD:J = 0x1388L

.field private static final SCAN_MODE_CHANGE_PERIOD:J = 0x3e8L

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCurrentLoopCount:I

.field private mHandler:Landroid/os/Handler;

.field private mIsScanning:Z

.field private mLeCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mStartBtScanTask:Ljava/lang/Runnable;

.field private mStartLeScanTask:Ljava/lang/Runnable;

.field private mStopBtScanTask:Ljava/lang/Runnable;

.field private mStopLeScanTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LeN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "leCallback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;-><init>(Landroid/os/Looper;)V

    .line 24
    iput v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mCurrentLoopCount:I

    .line 26
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mIsScanning:Z

    .line 28
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mLeCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mStartLeScanTask:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$2;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mStopLeScanTask:Ljava/lang/Runnable;

    .line 103
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$3;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mStartBtScanTask:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$4;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mStopBtScanTask:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->getScannerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mHandler:Landroid/os/Handler;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mLeCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 38
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mIsScanning:Z

    .line 40
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->TAG:Ljava/lang/String;

    const-string v1, "Le & Bluetooth scan mode.."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    .prologue
    .line 13
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mCurrentLoopCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mCurrentLoopCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    .prologue
    .line 13
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mCurrentLoopCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mCurrentLoopCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->startLeScan()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mStopLeScanTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->stopLeScan()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mStartBtScanTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mStopBtScanTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mStartLeScanTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$902(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mIsScanning:Z

    return p1
.end method

.method private startLeScan()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 144
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 161
    :goto_0
    return v1

    .line 148
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eq v3, v2, :cond_1

    .line 149
    sget-object v2, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->TAG:Ljava/lang/String;

    const-string v3, "Make the user enable BT if it isn\'t already"

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 154
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->TAG:Ljava/lang/String;

    const-string v3, "Bluetooth is discovering"

    invoke-static {v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 159
    :cond_2
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->TAG:Ljava/lang/String;

    const-string v3, "LE Scan is started"

    invoke-static {v1, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mLeCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move v1, v2

    .line 161
    goto :goto_0
.end method

.method private stopLeScan()Z
    .locals 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 169
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 170
    const/4 v1, 0x0

    .line 176
    :goto_0
    return v1

    .line 173
    :cond_0
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->TAG:Ljava/lang/String;

    const-string v2, "LE Scan is stopped"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mLeCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 176
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isScanning()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mIsScanning:Z

    return v0
.end method

.method public startScan()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 46
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mIsScanning:Z

    if-eqz v2, :cond_0

    .line 47
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->TAG:Ljava/lang/String;

    const-string v2, "already scanning.."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_0
    return v0

    .line 51
    :cond_0
    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mCurrentLoopCount:I

    .line 52
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mIsScanning:Z

    .line 54
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mStartLeScanTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    .line 56
    goto :goto_0
.end method

.method public stopScan()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mStartLeScanTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mStartBtScanTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mStopLeScanTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mStopBtScanTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->stopBluetoothScan()Z

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->stopLeScan()Z

    .line 70
    iput v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mCurrentLoopCount:I

    .line 71
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->mIsScanning:Z

    .line 73
    const/4 v0, 0x1

    return v0
.end method
