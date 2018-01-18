.class public Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;
.super Ljava/lang/Object;
.source "WearableDevice.java"


# instance fields
.field private address:Ljava/lang/String;

.field private bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private linkFeature:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->name:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->address:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->LINK_EDR:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->linkFeature:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    .line 24
    iput-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 25
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getLinkFeature()Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->linkFeature:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->address:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 59
    return-void
.end method

.method public setLinkFeature(Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;)V
    .locals 1
    .param p1, "feature"    # Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;->LINK_DUAL:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->linkFeature:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->linkFeature:Lcom/samsung/android/hostmanager/connectionmanager/Event$LinkFeature;

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/android/hostmanager/connectionmanager/WearableDevice;->name:Ljava/lang/String;

    .line 33
    return-void
.end method
