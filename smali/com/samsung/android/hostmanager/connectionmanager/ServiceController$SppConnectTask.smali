.class Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SppConnectTask;
.super Ljava/lang/Object;
.source "ServiceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SppConnectTask"
.end annotation


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2673
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SppConnectTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2671
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SppConnectTask;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2674
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SppConnectTask;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2675
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SppConnectTask for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2681
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2683
    .local v0, "bundleOldAC":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SppConnectTask;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2684
    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/helper/DeviceConverter;->convertToItemBundle(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 2685
    .local v1, "itemBundle":Landroid/os/Bundle;
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2687
    const-string v2, "BUNDLE_CMKEY_STRING_SERVICETYPE"

    sget-object v3, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->ALL:Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;

    .line 2688
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/connectionmanager/Event$ServiceType;->name()Ljava/lang/String;

    move-result-object v3

    .line 2687
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    const-string v2, "RECOVERY_CASE"

    const-string v3, "RECOVERY_CASE"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2691
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[CMAC] Request SPP Connectoin for Old Auto Connection(HFP)..."

    invoke-static {v2, v3}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->v_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 2693
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController$SppConnectTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/ServiceController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->requestCommand(ILandroid/os/Bundle;)V

    .line 2695
    return-void
.end method
