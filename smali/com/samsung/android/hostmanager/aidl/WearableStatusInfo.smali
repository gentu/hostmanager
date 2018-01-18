.class public Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;
.super Ljava/lang/Object;
.source "WearableStatusInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;

.field private batteryLevel:Ljava/lang/String;

.field private binaryVersion:Ljava/lang/String;

.field private connectStatus:I

.field private deviceType:Ljava/lang/String;

.field private externalMemoryRemain:Ljava/lang/String;

.field private externalMemoryTotal:Ljava/lang/String;

.field private memoryRemain:Ljava/lang/String;

.field private memoryTotal:Ljava/lang/String;

.field private modelName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private transportType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "modelName"    # Ljava/lang/String;
    .param p4, "binaryVersion"    # Ljava/lang/String;
    .param p5, "platform"    # Ljava/lang/String;
    .param p6, "deviceType"    # Ljava/lang/String;
    .param p7, "connectStatus"    # I
    .param p8, "transportType"    # I
    .param p9, "batteryLevel"    # Ljava/lang/String;
    .param p10, "memoryRemain"    # Ljava/lang/String;
    .param p11, "memoryTotal"    # Ljava/lang/String;
    .param p12, "externalMemoryRemain"    # Ljava/lang/String;
    .param p13, "externalMemoryTotal"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->address:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->packageName:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->modelName:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->binaryVersion:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->platform:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->deviceType:Ljava/lang/String;

    .line 33
    iput p7, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->connectStatus:I

    .line 34
    iput p8, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->transportType:I

    .line 35
    iput-object p9, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->batteryLevel:Ljava/lang/String;

    .line 36
    iput-object p10, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->memoryRemain:Ljava/lang/String;

    .line 37
    iput-object p11, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->memoryTotal:Ljava/lang/String;

    .line 38
    iput-object p12, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->externalMemoryRemain:Ljava/lang/String;

    .line 39
    iput-object p13, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->externalMemoryTotal:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBatteryLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->batteryLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getBinaryVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->binaryVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectStatus()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->connectStatus:I

    return v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalMemoryRemain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->externalMemoryRemain:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalMemoryTotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->externalMemoryTotal:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoryRemain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->memoryRemain:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoryTotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->memoryTotal:Ljava/lang/String;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getTransportType()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->transportType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->address:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->packageName:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->modelName:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->binaryVersion:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->platform:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->deviceType:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->connectStatus:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->transportType:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->batteryLevel:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->memoryRemain:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->memoryTotal:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->externalMemoryRemain:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->externalMemoryTotal:Ljava/lang/String;

    .line 81
    return-void
.end method

.method protected setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->address:Ljava/lang/String;

    .line 106
    return-void
.end method

.method protected setBatteryLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "batteryLevel"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->batteryLevel:Ljava/lang/String;

    .line 212
    return-void
.end method

.method protected setBinaryVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "binaryVersion"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->binaryVersion:Ljava/lang/String;

    .line 142
    return-void
.end method

.method protected setConnectStatus(I)V
    .locals 0
    .param p1, "connectStatus"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->connectStatus:I

    .line 181
    return-void
.end method

.method protected setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->deviceType:Ljava/lang/String;

    .line 166
    return-void
.end method

.method protected setExternalMemoryRemain(Ljava/lang/String;)V
    .locals 0
    .param p1, "externalMemoryRemain"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->externalMemoryRemain:Ljava/lang/String;

    .line 248
    return-void
.end method

.method protected setExternalMemoryTotal(Ljava/lang/String;)V
    .locals 0
    .param p1, "externalMemoryTotal"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->externalMemoryTotal:Ljava/lang/String;

    .line 260
    return-void
.end method

.method protected setMemoryRemain(Ljava/lang/String;)V
    .locals 0
    .param p1, "memoryRemain"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->memoryRemain:Ljava/lang/String;

    .line 224
    return-void
.end method

.method protected setMemoryTotal(Ljava/lang/String;)V
    .locals 0
    .param p1, "memoryTotal"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->memoryTotal:Ljava/lang/String;

    .line 236
    return-void
.end method

.method protected setModelName(Ljava/lang/String;)V
    .locals 0
    .param p1, "modelName"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->modelName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method protected setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->packageName:Ljava/lang/String;

    .line 118
    return-void
.end method

.method protected setPlatform(Ljava/lang/String;)V
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->platform:Ljava/lang/String;

    .line 154
    return-void
.end method

.method protected setTransportType(I)V
    .locals 0
    .param p1, "transportType"    # I

    .prologue
    .line 198
    iput p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->transportType:I

    .line 199
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->modelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->binaryVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->platform:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->deviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->connectStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->transportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->batteryLevel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->memoryRemain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->memoryTotal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->externalMemoryRemain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableStatusInfo;->externalMemoryTotal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return-void
.end method
