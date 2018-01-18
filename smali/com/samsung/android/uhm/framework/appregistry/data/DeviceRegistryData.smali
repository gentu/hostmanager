.class public Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;
.super Ljava/lang/Object;
.source "DeviceRegistryData.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field public _id:Ljava/lang/String;

.field public deviceBtID:Ljava/lang/String;

.field public deviceFixedName:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public isConnected:I

.field public lastLaunch:I

.field public neckletAutoConnection:Ljava/lang/String;

.field public packagename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_deviceName"    # Ljava/lang/String;
    .param p3, "_deviceBtID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_deviceName"    # Ljava/lang/String;
    .param p3, "_deviceBtID"    # Ljava/lang/String;
    .param p4, "_lastLaunch"    # I

    .prologue
    .line 39
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_deviceName"    # Ljava/lang/String;
    .param p3, "_deviceBtID"    # Ljava/lang/String;
    .param p4, "_lastLaunch"    # I
    .param p5, "_connected"    # I

    .prologue
    .line 42
    const-string v6, "null"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 8
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_deviceName"    # Ljava/lang/String;
    .param p3, "_deviceBtID"    # Ljava/lang/String;
    .param p4, "_lastLaunch"    # I
    .param p5, "_connected"    # I
    .param p6, "_neckletAutoConnection"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p3}, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->getBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_deviceName"    # Ljava/lang/String;
    .param p3, "_deviceBtID"    # Ljava/lang/String;
    .param p4, "_lastLaunch"    # I
    .param p5, "_connected"    # I
    .param p6, "_neckletAutoConnection"    # Ljava/lang/String;
    .param p7, "_deviceFixedName"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->packagename:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceName:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceBtID:Ljava/lang/String;

    .line 51
    iput p4, p0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->lastLaunch:I

    .line 52
    iput p5, p0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->isConnected:I

    .line 53
    iput-object p6, p0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->neckletAutoConnection:Ljava/lang/String;

    .line 54
    iput-object p7, p0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceFixedName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static getBTName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "BTAddress"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->getBTName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBTName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "BTAddress"    # Ljava/lang/String;
    .param p1, "original"    # Z

    .prologue
    .line 62
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 63
    .local v3, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v3, :cond_2

    .line 64
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    const-string v0, "Bluetooth"

    .line 69
    .local v0, "btName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 70
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 75
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    sget-object v4, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBTName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    if-eqz p1, :cond_0

    .line 83
    .end local v0    # "btName":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 71
    .restart local v0    # "btName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 72
    .local v2, "ie":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v2    # "ie":Ljava/lang/IllegalArgumentException;
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->getSimpleBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 78
    .end local v0    # "btName":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->TAG:Ljava/lang/String;

    const-string v5, "mBluetoothAdapter is disable "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 81
    :cond_2
    sget-object v4, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->TAG:Ljava/lang/String;

    const-string v5, "mBluetoothAdapter is null "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static getSimpleBTName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "BTName"    # Ljava/lang/String;

    .prologue
    .line 88
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 96
    .end local p0    # "BTName":Ljava/lang/String;
    .local v0, "lastPosition":I
    .local v1, "simpleName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 89
    .end local v0    # "lastPosition":I
    .end local v1    # "simpleName":Ljava/lang/String;
    .restart local p0    # "BTName":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimpleBTName BTName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v1, 0x0

    .line 91
    .restart local v1    # "simpleName":Ljava/lang/String;
    const-string v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 92
    .restart local v0    # "lastPosition":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 94
    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 95
    sget-object v2, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimpleBTName simpleName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    .line 96
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    const-string v0, "\nDB::[-- DeviceRegistryData --]"

    .line 102
    .local v0, "string":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nDB::packagename : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->packagename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nDB::deviceBtID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceBtID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nDB::deviceName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nDB::deviceFixedName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->deviceFixedName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nDB::isConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->isConnected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nDB::neckletAutoConnection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/appregistry/data/DeviceRegistryData;->neckletAutoConnection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n-------------------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    return-object v0
.end method
