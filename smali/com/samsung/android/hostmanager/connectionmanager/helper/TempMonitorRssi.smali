.class public Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;
.super Ljava/lang/Object;
.source "TempMonitorRssi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi$TempRssiTask;
    }
.end annotation


# static fields
.field private static DELAY_TIME:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "TempMonitorRssi"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;->TAG:Ljava/lang/String;

    .line 17
    const/16 v0, 0x3e8

    sput v0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;->DELAY_TIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getCMMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;->mHandler:Landroid/os/Handler;

    .line 19
    const/16 v0, -0x55

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;->mMid:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;

    .prologue
    .line 11
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;->mMid:I

    return v0
.end method


# virtual methods
.method public monitorRssi(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCallback;III)Z
    .locals 5
    .param p1, "btGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "callbacks"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p3, "lowRssi"    # I
    .param p4, "midRssi"    # I
    .param p5, "highRssi"    # I

    .prologue
    const/4 v4, 0x1

    .line 25
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 27
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;->TAG:Ljava/lang/String;

    const-string v2, "[CMAC] stop monitorRssi!!"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->i_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :goto_0
    return v4

    .line 32
    :cond_0
    iput p4, p0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;->mMid:I

    .line 34
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi$TempRssiTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi$TempRssiTask;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;)V

    .line 35
    .local v0, "task":Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi$TempRssiTask;
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi$TempRssiTask;->setData(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCallback;)V

    .line 37
    sget-object v1, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMAC] after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;->DELAY_TIME:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", will call \'onTempMonitorRssi\' callback!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->i_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;->DELAY_TIME:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
