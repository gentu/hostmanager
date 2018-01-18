.class Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$1;
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
    .line 81
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 85
    invoke-static {}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scanning loop : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    invoke-static {v2}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->access$200(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)Z

    .line 89
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->access$400(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->access$300(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method
