.class public Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;
.super Ljava/lang/Object;
.source "ConnectionManagerDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceCOD:I

.field private mDeviceName:Ljava/lang/String;

.field private mIsBonded:Z

.field private mIsConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;)V
    .locals 1
    .param p1, "connectionManagerDevice"    # Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->getDeviceCOD()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mDeviceCOD:I

    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->getBondedState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mIsBonded:Z

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->getConnectedState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mIsConnected:Z

    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getBondedState()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mIsBonded:Z

    return v0
.end method

.method public getConnectedState()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mIsConnected:Z

    return v0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCOD()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mDeviceCOD:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mDeviceCOD:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mIsBonded:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mIsConnected:Z

    .line 73
    return-void

    :cond_0
    move v0, v2

    .line 71
    goto :goto_0

    :cond_1
    move v1, v2

    .line 72
    goto :goto_1
.end method

.method public setBondedState(Z)V
    .locals 0
    .param p1, "bondedState"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mIsBonded:Z

    .line 116
    return-void
.end method

.method public setConnectedState(Z)V
    .locals 0
    .param p1, "connectedState"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mIsConnected:Z

    .line 112
    return-void
.end method

.method public setConnectionManagerDeviceInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceCOD"    # I
    .param p4, "isBonded"    # Ljava/lang/Boolean;
    .param p5, "isConnected"    # Ljava/lang/Boolean;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mDeviceCOD:I

    .line 25
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mIsBonded:Z

    .line 26
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mIsConnected:Z

    .line 27
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mDeviceCOD:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mIsBonded:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 64
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/ConnectionManagerDeviceInfo;->mIsConnected:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 65
    return-void

    :cond_0
    move v0, v2

    .line 63
    goto :goto_0

    :cond_1
    move v1, v2

    .line 64
    goto :goto_1
.end method
