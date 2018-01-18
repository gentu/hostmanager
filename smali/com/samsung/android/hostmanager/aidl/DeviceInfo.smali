.class public Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivity:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceFeature:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceID:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDevicePlatform:Ljava/lang/String;

.field private mDevicePlatformVersion:Ljava/lang/String;

.field private mDeviceType:Ljava/lang/String;

.field private mHostManagerVersion:Ljava/lang/String;

.field private mMCC:Ljava/lang/String;

.field private mMNC:Ljava/lang/String;

.field private mModelNumber:Ljava/lang/String;

.field private mNotification:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSalesCode:Ljava/lang/String;

.field private mSecurity:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSerialNumber:Ljava/lang/String;

.field private mSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSwVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mAppInfoList:Ljava/util/ArrayList;

    .line 122
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mAppInfoList:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 97
    return-void
.end method

.method protected constructor <init>(Lcom/samsung/android/hostmanager/aidl/DeviceInfo;)V
    .locals 1
    .param p1, "device"    # Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mAppInfoList:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceID:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDevicePlatform()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDevicePlatform:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDevicePlatformVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDevicePlatformVersion:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceType:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getModelNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mModelNumber:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSwVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSwVersion:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSalesCode:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSerialNumber:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getMCC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mMCC:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getMNC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mMNC:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getHostManagerVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mHostManagerVersion:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getConnectivity()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mConnectivity:Ljava/util/HashMap;

    .line 113
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mAppInfoList:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceFeature()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceFeature:Ljava/util/HashMap;

    .line 115
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSecurity()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSecurity:Ljava/util/HashMap;

    .line 116
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getNotification()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mNotification:Ljava/util/HashMap;

    .line 117
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSettings()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSettings:Ljava/util/HashMap;

    .line 118
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public getAppInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mAppInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getConnectivity()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mConnectivity:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDeviceFeature()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceFeature:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicePlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDevicePlatform:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicePlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDevicePlatformVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getHostManagerVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mHostManagerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMCC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mMCC:Ljava/lang/String;

    return-object v0
.end method

.method public getMNC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mMNC:Ljava/lang/String;

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mModelNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNotification()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mNotification:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSalesCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurity()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSecurity:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSettings()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSettings:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSwVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSwVersion:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceID:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDevicePlatform:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDevicePlatformVersion:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceType:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mModelNumber:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSwVersion:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSalesCode:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSerialNumber:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mMCC:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mMNC:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mHostManagerVersion:Ljava/lang/String;

    .line 167
    const-class v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mConnectivity:Ljava/util/HashMap;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 169
    .local v2, "listsize":I
    iget-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mAppInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 173
    const-class v3, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    .line 174
    .local v0, "appinfo":Lcom/samsung/android/hostmanager/aidl/AppInfo;
    iget-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "appinfo":Lcom/samsung/android/hostmanager/aidl/AppInfo;
    .end local v1    # "i":I
    :cond_0
    const-class v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceFeature:Ljava/util/HashMap;

    .line 178
    const-class v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSecurity:Ljava/util/HashMap;

    .line 179
    const-class v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mNotification:Ljava/util/HashMap;

    .line 180
    const-class v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSettings:Ljava/util/HashMap;

    .line 181
    return-void
.end method

.method public setAppInfoList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "AppInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mAppInfoList:Ljava/util/ArrayList;

    .line 306
    return-void
.end method

.method public setConnectivity(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "Connectivity":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mConnectivity:Ljava/util/HashMap;

    .line 298
    return-void
.end method

.method public setDeviceFeature(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "DeviceFeature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceFeature:Ljava/util/HashMap;

    .line 314
    return-void
.end method

.method public setDeviceID(Ljava/lang/String;)V
    .locals 0
    .param p1, "DeviceID"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceID:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "DeviceName"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setDevicePlatform(Ljava/lang/String;)V
    .locals 0
    .param p1, "DevicePlatform"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDevicePlatform:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setDevicePlatformVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "DevicePlatformVersion"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDevicePlatformVersion:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "DeviceType"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceType:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setHostManagerVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "HostManagerVersion"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mHostManagerVersion:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setMCC(Ljava/lang/String;)V
    .locals 0
    .param p1, "MCC"    # Ljava/lang/String;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mMCC:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setMNC(Ljava/lang/String;)V
    .locals 0
    .param p1, "MNC"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mMNC:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setModelNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "ModelNumber"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mModelNumber:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setNotification(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "Notification":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mNotification:Ljava/util/HashMap;

    .line 330
    return-void
.end method

.method public setSalesCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "salesCode"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSalesCode:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setSecurity(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "Security":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSecurity:Ljava/util/HashMap;

    .line 322
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "serialNumber"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSerialNumber:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setSettings(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "Settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSettings:Ljava/util/HashMap;

    .line 338
    return-void
.end method

.method public setStatus(Lcom/samsung/android/hostmanager/aidl/DeviceInfo;)V
    .locals 1
    .param p1, "device"    # Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceID:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDevicePlatform()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDevicePlatform:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDevicePlatformVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDevicePlatformVersion:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceType:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getModelNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mModelNumber:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSwVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSwVersion:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSalesCode:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSerialNumber:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getMCC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mMCC:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getMNC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mMNC:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getHostManagerVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mHostManagerVersion:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getConnectivity()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mConnectivity:Ljava/util/HashMap;

    .line 88
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mAppInfoList:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceFeature()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceFeature:Ljava/util/HashMap;

    .line 90
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSecurity()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSecurity:Ljava/util/HashMap;

    .line 91
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getNotification()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mNotification:Ljava/util/HashMap;

    .line 92
    invoke-virtual {p1}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getSettings()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSettings:Ljava/util/HashMap;

    .line 93
    return-void
.end method

.method public setStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "deviceid"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "devicePlatform"    # Ljava/lang/String;
    .param p4, "devicePlatformVersion"    # Ljava/lang/String;
    .param p5, "deviceType"    # Ljava/lang/String;
    .param p6, "modelNumber"    # Ljava/lang/String;
    .param p7, "swVersion"    # Ljava/lang/String;
    .param p8, "salesCode"    # Ljava/lang/String;
    .param p9, "serialNumber"    # Ljava/lang/String;
    .param p10, "MCC"    # Ljava/lang/String;
    .param p11, "MNC"    # Ljava/lang/String;
    .param p12, "hostManageVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/AppInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p13, "connectivity":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p14, "appInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    .local p15, "devicefeature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p16, "security":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p17, "notification":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p18, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceID:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDevicePlatform:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDevicePlatformVersion:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceType:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mModelNumber:Ljava/lang/String;

    .line 60
    iput-object p7, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSwVersion:Ljava/lang/String;

    .line 61
    iput-object p8, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSalesCode:Ljava/lang/String;

    .line 62
    iput-object p9, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSerialNumber:Ljava/lang/String;

    .line 63
    iput-object p10, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mMCC:Ljava/lang/String;

    .line 64
    iput-object p11, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mMNC:Ljava/lang/String;

    .line 65
    iput-object p12, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mHostManagerVersion:Ljava/lang/String;

    .line 66
    iput-object p13, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mConnectivity:Ljava/util/HashMap;

    .line 67
    iput-object p14, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mAppInfoList:Ljava/util/ArrayList;

    .line 68
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceFeature:Ljava/util/HashMap;

    .line 69
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSecurity:Ljava/util/HashMap;

    .line 70
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mNotification:Ljava/util/HashMap;

    .line 71
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSettings:Ljava/util/HashMap;

    .line 72
    return-void
.end method

.method public setSwVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "SwVersion"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSwVersion:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 131
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDevicePlatform:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDevicePlatformVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mModelNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSwVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSalesCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mMCC:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mMNC:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mHostManagerVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mConnectivity:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 144
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    .line 146
    .local v0, "AppInfoItem":Lcom/samsung/android/hostmanager/aidl/AppInfo;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 147
    .end local v0    # "AppInfoItem":Lcom/samsung/android/hostmanager/aidl/AppInfo;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mDeviceFeature:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 148
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSecurity:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 149
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mNotification:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 150
    iget-object v1, p0, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->mSettings:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 151
    return-void
.end method
