.class public Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi$TempRssiTask;
.super Ljava/lang/Object;
.source "TempMonitorRssi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TempRssiTask"
.end annotation


# instance fields
.field private mBtGatt:Landroid/bluetooth/BluetoothGatt;

.field private mCallbacks:Landroid/bluetooth/BluetoothGattCallback;

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;

    .prologue
    const/4 v0, 0x0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi$TempRssiTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi$TempRssiTask;->mBtGatt:Landroid/bluetooth/BluetoothGatt;

    .line 49
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi$TempRssiTask;->mCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi$TempRssiTask;->mCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi$TempRssiTask;->mCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    instance-of v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempBluetoothGattCallback;

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CMAC] call onTempMonitorRssi!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->i_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi$TempRssiTask;->mCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    check-cast v0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempBluetoothGattCallback;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi$TempRssiTask;->mBtGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi$TempRssiTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempBluetoothGattCallback;->onTempMonitorRssi(Landroid/bluetooth/BluetoothGatt;I)V

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CMAC] callback is empty!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->i_service(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setData(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCallback;)V
    .locals 0
    .param p1, "btGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "callbacks"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi$TempRssiTask;->mBtGatt:Landroid/bluetooth/BluetoothGatt;

    .line 54
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/helper/TempMonitorRssi$TempRssiTask;->mCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    .line 56
    return-void
.end method
