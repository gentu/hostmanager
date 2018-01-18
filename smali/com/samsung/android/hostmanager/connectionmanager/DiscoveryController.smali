.class public Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;
.super Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;
.source "DiscoveryController.java"

# interfaces
.implements Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBluetoothScanner:Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;

.field private mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

.field private mFoundDeviceSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFoundDeviceSetMutex:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "DiscoveryController"

    sput-object v0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;)V
    .locals 2
    .param p1, "manager"    # Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;
    .param p2, "scanner"    # Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;)V

    .line 19
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->mFoundDeviceSetMutex:Ljava/lang/Object;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->mFoundDeviceSet:Ljava/util/TreeSet;

    .line 23
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->mBluetoothScanner:Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;

    .line 25
    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->mBluetoothScanner:Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->mFoundDeviceSetMutex:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->mFoundDeviceSet:Ljava/util/TreeSet;

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->getEventHandler()Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    .line 36
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->mEventHandler:Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;

    const-string v1, "DISCOVERYCONTROLLER"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/EventHandler;->registerCallback(Lcom/samsung/android/hostmanager/connectionmanager/ControlCallback;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->resetFoundDevice()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;)Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->mBluetoothScanner:Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;

    return-object v0
.end method

.method private isDuplicatedDevice(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 149
    if-nez p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->mFoundDeviceSet:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->mFoundDeviceSetMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->mFoundDeviceSet:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 160
    monitor-exit v1

    .line 162
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notify2Subscriber(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 168
    const/16 v2, 0x211

    if-ne p1, v2, :cond_3

    if-eqz p2, :cond_3

    .line 170
    const-string v2, "BUNDLE_CMKEY_BUNDLE_WEARABLEDEVICE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 172
    .local v1, "deviceBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 173
    const-string v2, "BUNDLE_STRING_ADDRESS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "address":Ljava/lang/String;
    const-string v2, "BUNDLE_BOOLEAN_WEARABLECODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "deviceBundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 181
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v1    # "deviceBundle":Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->isDuplicatedDevice(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "deviceBundle":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->getConnectionManager()Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/ConnectionManager;->publishEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 185
    :cond_3
    const/16 v2, 0x212

    if-ne p1, v2, :cond_2

    .line 187
    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->mBluetoothScanner:Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->mBluetoothScanner:Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;

    invoke-virtual {v2}, Lcom/samsung/android/hostmanager/connectionmanager/discovery/BluetoothScanner;->isScanning()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method private resetFoundDevice()V
    .locals 2

    .prologue
    .line 141
    iget-object v1, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->mFoundDeviceSetMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->mFoundDeviceSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 143
    monitor-exit v1

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected createWorker()Lcom/samsung/android/hostmanager/connectionmanager/ControlMessageHandler$Worker;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;

    invoke-direct {v0, p0}, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController$DiscoveryControlWorker;-><init>(Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;)V

    return-object v0
.end method

.method public onReceivedEvent(ILandroid/os/Bundle;Landroid/content/Intent;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    sget-object v0, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive Event ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/connectionmanager/util/DLog;->d_service(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hostmanager/connectionmanager/DiscoveryController;->notify2Subscriber(ILandroid/os/Bundle;)V

    .line 138
    return-void
.end method

.method public terminate()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
