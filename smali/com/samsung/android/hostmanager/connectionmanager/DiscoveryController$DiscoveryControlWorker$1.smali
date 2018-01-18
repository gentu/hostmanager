.class Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker$1;
.super Ljava/lang/Object;
.source "DiscoveryController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;->work(Lcom/sec/android/api/iface/CVMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;

.field final synthetic val$message:Lcom/sec/android/api/iface/CVMessage;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;Lcom/sec/android/api/iface/CVMessage;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private requestStartScan()V
    .locals 4

    .prologue
    .line 90
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->access$000(Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;)V

    .line 92
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v1, "resBundle":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 95
    .local v0, "res":Z
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;)Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;)Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->startScan()Z

    move-result v0

    .line 98
    :cond_0
    if-eqz v0, :cond_1

    .line 99
    const-string v2, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v3, "SUCCESS"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;

    invoke-virtual {v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;->response(Landroid/os/Bundle;)V

    .line 105
    return-void

    .line 101
    :cond_1
    const-string v2, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v3, "FAIL"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestStopScan()V
    .locals 4

    .prologue
    .line 109
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v1, "resBundle":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 112
    .local v0, "res":Z
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;)Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;

    iget-object v2, v2, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;)Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->stopScan()Z

    move-result v0

    .line 115
    :cond_0
    if-eqz v0, :cond_1

    .line 116
    const-string v2, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v3, "SUCCESS"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker$1;->this$1:Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;

    invoke-virtual {v2, v1}, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;->response(Landroid/os/Bundle;)V

    .line 122
    return-void

    .line 118
    :cond_1
    const-string v2, "BUNDLE_CMKEY_STRING_ERRORTYPE"

    const-string v3, "FAIL"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker$1;->val$message:Lcom/sec/android/api/iface/CVMessage;

    invoke-virtual {v0}, Lcom/sec/android/api/iface/CVMessage;->getCmdID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 75
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker$1;->requestStartScan()V

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker$1;->requestStopScan()V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
