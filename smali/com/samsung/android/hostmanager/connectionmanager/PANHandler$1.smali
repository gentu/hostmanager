.class Lcom/samsung/android/hostmanager/connectionmanager/PANHandler$1;
.super Ljava/lang/Object;
.source "PANHandler.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 51
    sget v0, Lcom/samsung/android/reflectwrapper/BluetoothProfileWrap;->PAN:I

    if-ne v0, p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "arg1":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v0, p2}, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->access$002(Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;

    invoke-static {v1}, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->access$000(Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;)Landroid/bluetooth/BluetoothPan;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;Landroid/bluetooth/BluetoothPan;)V

    .line 56
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 61
    sget v0, Lcom/samsung/android/reflectwrapper/BluetoothProfileWrap;->PAN:I

    if-ne v0, p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;->access$002(Lcom/samsung/android/hostmanager/connectionmanager/PANHandler;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 65
    :cond_0
    return-void
.end method
