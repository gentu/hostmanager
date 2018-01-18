.class public Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;
.super Ljava/lang/Object;
.source "WearableConnectInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private btName:Ljava/lang/String;

.field private connectStatus:I

.field private deviceId:Ljava/lang/String;

.field private isSupportWearableStatus:Z

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "connectStatus"    # I
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "btName"    # Ljava/lang/String;
    .param p5, "isSupportWearableStatus"    # Z

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->packageName:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->connectStatus:I

    .line 21
    iput-object p3, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->deviceId:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->btName:Ljava/lang/String;

    .line 23
    iput-boolean p5, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->isSupportWearableStatus:Z

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getBtName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->btName:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectStatus()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->connectStatus:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportWearableStatus()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->isSupportWearableStatus:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->packageName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->connectStatus:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->deviceId:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->btName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "support":Ljava/lang/String;
    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->isSupportWearableStatus:Z

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->isSupportWearableStatus:Z

    goto :goto_0
.end method

.method protected setBtName(Ljava/lang/String;)V
    .locals 0
    .param p1, "btName"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->btName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method protected setConnectStatus(I)V
    .locals 0
    .param p1, "connectStatus"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->connectStatus:I

    .line 98
    return-void
.end method

.method protected setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->deviceId:Ljava/lang/String;

    .line 110
    return-void
.end method

.method protected setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->packageName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method protected setSupportWearableStatus(Z)V
    .locals 0
    .param p1, "isSupportWearableStatus"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->isSupportWearableStatus:Z

    .line 134
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->connectStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->btName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/WearableConnectInfo;->isSupportWearableStatus:Z

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "TRUE"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v0, "FALSE"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
