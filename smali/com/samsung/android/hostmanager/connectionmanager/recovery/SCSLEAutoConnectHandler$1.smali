.class Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler$1;
.super Ljava/lang/Object;
.source "SCSLEAutoConnectHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->checkLowLevelDisconnection(Landroid/bluetooth/BluetoothDevice;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler$1;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;

    iget-object v0, v0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->mConnectionManager:Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getConnectionController()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionController;->connectAllBTProfile(Landroid/bluetooth/BluetoothDevice;)V

    .line 1095
    const-string v0, "SCSLEAutoConnectHandler"

    const-string v1, "[CMAC] checkLowLevelDisconnection : SCS state is not in Connected state. ConnectAllBT "

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    return-void
.end method
