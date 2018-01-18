.class Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$1;
.super Ljava/lang/Object;
.source "LpSCSLEAutoConnectHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->checkLowLevelDisconnection(Landroid/bluetooth/BluetoothDevice;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/LpSCSLEAutoConnectHandler$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->connectAllBTProfile(Landroid/bluetooth/BluetoothDevice;)V

    .line 1209
    const-string v0, "LpSCSLEAutoConnectHandler"

    const-string v1, "[CMAC] checkLowLevelDisconnection : SCS state is not in Connected state. ConnectAllBT "

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    return-void
.end method
