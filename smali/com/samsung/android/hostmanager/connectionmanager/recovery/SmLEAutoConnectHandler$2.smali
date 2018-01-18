.class Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler$2;
.super Ljava/lang/Object;
.source "SmLEAutoConnectHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->sendCommandMessage(Landroid/bluetooth/BluetoothDevice;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1384
    const-string v0, "SmLEAutoConnecter"

    const-string v1, "[CMAC] CMD_AUTO_CONNECT : start auto connect after HFP Connection Fail"

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler$2;->this$0:Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;

    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;->access$100(Lcom/samsung/android/hostmanager/connectionmanager/recovery/SmLEAutoConnectHandler;Landroid/bluetooth/BluetoothDevice;)V

    .line 1387
    return-void
.end method
