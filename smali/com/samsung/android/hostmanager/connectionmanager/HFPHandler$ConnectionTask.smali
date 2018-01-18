.class Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;
.super Ljava/lang/Object;
.source "HFPHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionTask"
.end annotation


# instance fields
.field private mAdapterCheckRetryCount:I

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 858
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 859
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 860
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;->mAdapterCheckRetryCount:I

    .line 861
    return-void
.end method


# virtual methods
.method public initRetryCount()V
    .locals 2

    .prologue
    .line 865
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;->mAdapterCheckRetryCount:I

    .line 866
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HFP][CONNECTION] BT Adapter retry count initialized"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 871
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;->mAdapterCheckRetryCount:I

    if-lez v0, :cond_0

    .line 873
    iget v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;->mAdapterCheckRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;->mAdapterCheckRetryCount:I

    .line 874
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->releaseWakeLock()V

    .line 875
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$ConnectionTask;->mAdapterCheckRetryCount:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;Landroid/bluetooth/BluetoothDevice;I)Z

    .line 878
    :cond_0
    return-void
.end method
