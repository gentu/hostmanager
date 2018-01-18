.class Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$2;
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
    .line 93
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->access$500(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)Z

    .line 99
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    invoke-static {v0}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->access$400(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;->access$600(Lcom/samsung/android/hostmanager/connectionmanager/discovery/LeNBluetoothScanner;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    return-void
.end method
