.class Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$1;
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
    .line 69
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 73
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scanning loop : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->startBluetoothScan()Z

    .line 77
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->access$300(Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/discovery/OnlyBluetoothScanner;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    return-void
.end method
