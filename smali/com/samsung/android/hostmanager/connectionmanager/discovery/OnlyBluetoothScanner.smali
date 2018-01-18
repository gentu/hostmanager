.class public Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;
.super Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;
.source "OnlyBluetoothScanner.java"


# static fields
.field private static final BT_SCAN_PERIOD:J = 0x2710L

.field private static final SCAN_MODE_CHANGE_PERIOD:J = 0x3e8L

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCurrentLoopCount:I

.field private mHandler:Landroid/os/Handler;

.field private mIsScanning:Z

.field private mStartBtScanTask:Ljava/lang/Runnable;

.field private mStopBtScanTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;-><init>(Landroid/os/Looper;)V

    .line 18
    iput v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mCurrentLoopCount:I

    .line 20
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mIsScanning:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$1;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mStartBtScanTask:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$2;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mStopBtScanTask:Ljava/lang/Runnable;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->getScannerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mHandler:Landroid/os/Handler;

    .line 29
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mIsScanning:Z

    .line 31
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->TAG:Ljava/lang/String;

    const-string v1, "Only Bluetooth scan mode.."

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    .prologue
    .line 9
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mCurrentLoopCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;
    .param p1, "x1"    # I

    .prologue
    .line 9
    iput p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mCurrentLoopCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    .prologue
    .line 9
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mCurrentLoopCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mCurrentLoopCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mStopBtScanTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mStartBtScanTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mIsScanning:Z

    return p1
.end method


# virtual methods
.method public isScanning()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mIsScanning:Z

    return v0
.end method

.method public startScan()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 37
    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mIsScanning:Z

    if-eqz v2, :cond_0

    .line 38
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->TAG:Ljava/lang/String;

    const-string v2, "already scanning.."

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_0
    return v0

    .line 42
    :cond_0
    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mCurrentLoopCount:I

    .line 43
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mIsScanning:Z

    .line 45
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mStartBtScanTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    .line 47
    goto :goto_0
.end method

.method public stopScan()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mStartBtScanTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mStopBtScanTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->stopBluetoothScan()Z

    .line 58
    iput v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mCurrentLoopCount:I

    .line 59
    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->mIsScanning:Z

    .line 61
    const/4 v0, 0x1

    return v0
.end method
