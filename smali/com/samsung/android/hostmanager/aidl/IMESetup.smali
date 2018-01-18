.class public Lcom/samsung/android/hostmanager/aidl/IMESetup;
.super Ljava/lang/Object;
.source "IMESetup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/IMESetup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppCategory:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mImageFileName:Ljava/lang/String;

.field private mIsPreload:Z

.field private mIsShown:Z

.field private mPackageName:Ljava/lang/String;

.field private mSettingFileName:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/IMESetup$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/aidl/IMESetup$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/aidl/IMESetup;->readFromParcel(Landroid/os/Parcel;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "imageFileName"    # Ljava/lang/String;
    .param p6, "settingFileName"    # Ljava/lang/String;
    .param p7, "isShown"    # Z
    .param p8, "appCategory"    # Ljava/lang/String;
    .param p9, "isPreload"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mAppName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mPackageName:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mClassName:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mVersion:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mImageFileName:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mSettingFileName:Ljava/lang/String;

    .line 34
    iput-boolean p7, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mIsShown:Z

    .line 35
    iput-object p8, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mAppCategory:Ljava/lang/String;

    .line 36
    iput-boolean p9, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mIsPreload:Z

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getAppCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mAppCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mImageFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreloadState()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mIsPreload:Z

    return v0
.end method

.method public getSettingFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mSettingFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getShownState()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mIsShown:Z

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mAppName:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mPackageName:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mClassName:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mVersion:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mImageFileName:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mSettingFileName:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mIsShown:Z

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mAppCategory:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mIsPreload:Z

    .line 148
    return-void

    :cond_0
    move v0, v2

    .line 145
    goto :goto_0

    :cond_1
    move v1, v2

    .line 147
    goto :goto_1
.end method

.method public setAppCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "appCategory"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mAppCategory:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mClassName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setImageFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageFileName"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mImageFileName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mAppName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mPackageName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setPreloadState(Z)V
    .locals 0
    .param p1, "isPreload"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mIsPreload:Z

    .line 76
    return-void
.end method

.method public setSettingFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "settingFileName"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mSettingFileName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setShownState(Z)V
    .locals 0
    .param p1, "isShown"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mIsShown:Z

    .line 68
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mVersion:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setupTTSSetupInfo()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mImageFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mSettingFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mIsShown:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mAppCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/IMESetup;->mIsPreload:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 136
    return-void

    :cond_0
    move v0, v2

    .line 133
    goto :goto_0

    :cond_1
    move v1, v2

    .line 135
    goto :goto_1
.end method
