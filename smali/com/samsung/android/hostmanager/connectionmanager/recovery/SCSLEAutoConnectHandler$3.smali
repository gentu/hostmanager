.class Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler$3;
.super Ljava/lang/Object;
.source "SCSLEAutoConnectHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->sendCommandMessage(Landroid/bluetooth/BluetoothDevice;Landroid/os/Bundle;)V
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
    .line 1642
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler$3;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1647
    const-string v0, "SCSLEAutoConnectHandler"

    const-string v1, "[CMAC] CMD_AUTO_CONNECT : start auto connect after HFP Connection Fail"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler$3;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler$3;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/recovery/SCSLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V

    .line 1650
    return-void
.end method
