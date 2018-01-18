.class Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$1;
.super Ljava/lang/Object;
.source "HFPHandler.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 80
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "arg1":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v0, p2}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->access$002(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 82
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->access$000(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;Landroid/bluetooth/BluetoothHeadset;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 90
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;->access$002(Lcom/samsung/android/hostmanager/connectionmanager/HFPHandler;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 93
    :cond_0
    return-void
.end method
