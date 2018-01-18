.class public Lcom/samsung/android/hostmanager/aidl/FontsSetup;
.super Ljava/lang/Object;
.source "FontsSetup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/FontsSetup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppCategory:Ljava/lang/String;

.field private mAppImageName:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mFamilyName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPreload:Z

.field private mSettingFileName:Ljava/lang/String;

.field private mShown:Z

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/FontsSetup$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/aidl/FontsSetup$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "imageFileName"    # Ljava/lang/String;
    .param p5, "settingFileName"    # Ljava/lang/String;
    .param p6, "isPreload"    # Z
    .param p7, "version"    # Ljava/lang/String;
    .param p8, "isShown"    # Z
    .param p9, "familyName"    # Ljava/lang/String;
    .param p10, "appCategory"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mAppName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mPackageName:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mClassName:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mAppImageName:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mSettingFileName:Ljava/lang/String;

    .line 34
    iput-boolean p6, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mPreload:Z

    .line 35
    iput-object p7, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mVersion:Ljava/lang/String;

    .line 36
    iput-boolean p8, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mShown:Z

    .line 37
    iput-object p9, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mFamilyName:Ljava/lang/String;

    .line 38
    iput-object p10, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mAppCategory:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getAppCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mAppCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mAppImageName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreloadState()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mPreload:Z

    return v0
.end method

.method public getSettingFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mSettingFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getShownState()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mShown:Z

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mAppName:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mPackageName:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mClassName:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mAppImageName:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mSettingFileName:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mPreload:Z

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mVersion:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mShown:Z

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mFamilyName:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mAppCategory:Ljava/lang/String;

    .line 159
    return-void

    :cond_0
    move v0, v2

    .line 154
    goto :goto_0

    :cond_1
    move v1, v2

    .line 156
    goto :goto_1
.end method

.method public setAppCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "appCategory"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mAppCategory:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mClassName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setFamilyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "familyName"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mFamilyName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appImageName"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mAppImageName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mAppName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mPackageName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPreloadState(Z)V
    .locals 0
    .param p1, "isPreload"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mPreload:Z

    .line 66
    return-void
.end method

.method public setSettingFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "settingFileName"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mSettingFileName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setShownState(Z)V
    .locals 0
    .param p1, "isShown"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mShown:Z

    .line 74
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mVersion:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setupFontsSetupInfor()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mAppImageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mSettingFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mPreload:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mShown:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mFamilyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/hostmanager/aidl/FontsSetup;->mAppCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return-void

    :cond_0
    move v0, v2

    .line 141
    goto :goto_0

    :cond_1
    move v1, v2

    .line 143
    goto :goto_1
.end method
