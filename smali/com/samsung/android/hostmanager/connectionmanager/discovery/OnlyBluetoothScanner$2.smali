.class Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$2;
.super Ljava/lang/Object;
.source "OnlyBluetoothScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->stopBluetoothScan()Z

    .line 89
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->access$108(Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;)I

    .line 91
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->getScanMaxLoopCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->access$300(Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->access$400(Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scanning loop end!!"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->access$102(Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;I)I

    .line 100
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    invoke-static {v0, v2}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->access$502(Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;Z)Z

    goto :goto_0
.end method
