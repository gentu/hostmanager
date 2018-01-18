.class Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$4;
.super Ljava/lang/Object;
.source "LeNBluetoothScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->stopBluetoothScan()Z

    .line 122
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->access$108(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)I

    .line 124
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->getScanMaxLoopCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->access$400(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->access$800(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scanning loop end!!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->access$102(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;I)I

    .line 133
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$4;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->access$902(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;Z)Z

    goto :goto_0
.end method
