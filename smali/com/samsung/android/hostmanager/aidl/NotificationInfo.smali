.class public Lcom/samsung/android/hostmanager/aidl/NotificationInfo;
.super Ljava/lang/Object;
.source "NotificationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BODY:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/NotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final THUMBNAIL:I = 0x3

.field public static final TIME:I = 0x1

.field public static final TITLE:I


# instance fields
.field private mAppId:I

.field private mComponent:[I

.field private mDeviceID:Ljava/lang/String;

.field private mDeviceType:Ljava/lang/String;

.field private mLimitNotification:Z

.field private mMaxByte:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/aidl/NotificationInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II[IZ)V
    .locals 0
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "deviceType"    # Ljava/lang/String;
    .param p3, "appId"    # I
    .param p4, "maxByte"    # I
    .param p5, "component"    # [I
    .param p6, "limitNotification"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mDeviceID:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mDeviceType:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mAppId:I

    .line 31
    iput p4, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mMaxByte:I

    .line 32
    iput-object p5, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mComponent:[I

    .line 33
    iput-boolean p6, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mLimitNotification:Z

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mAppId:I

    return v0
.end method

.method public getComponent()[I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mComponent:[I

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getLimitNotification()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mLimitNotification:Z

    return v0
.end method

.method public getMaxByte()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mMaxByte:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mDeviceID:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mDeviceType:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mAppId:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mMaxByte:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mComponent:[I

    .line 67
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mComponent:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mLimitNotification:Z

    .line 69
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAppId(I)V
    .locals 0
    .param p1, "appId"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mAppId:I

    .line 102
    return-void
.end method

.method public setComponent([I)V
    .locals 0
    .param p1, "component"    # [I

    .prologue
    .line 117
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mComponent:[I

    .line 118
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mDeviceID:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mDeviceType:Ljava/lang/String;

    return-void
.end method

.method public setLimitNotification(Z)V
    .locals 0
    .param p1, "limitNotification"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mLimitNotification:Z

    .line 126
    return-void
.end method

.method public setMaxByte(I)V
    .locals 0
    .param p1, "maxByte"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mMaxByte:I

    .line 110
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mDeviceID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mDeviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mAppId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mMaxByte:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mComponent:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mComponent:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 58
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationInfo;->mLimitNotification:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 59
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
