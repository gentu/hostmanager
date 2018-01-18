.class public Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;
.super Ljava/lang/Object;
.source "TTSAppsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppCategory:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mImageFileName:Ljava/lang/String;

.field private mIsInstalled:Z

.field private mIsPreload:Z

.field private mPackageName:Ljava/lang/String;

.field private mSettingFileName:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;

.field private mVoiceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->TAG:Ljava/lang/String;

    .line 175
    new-instance v0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "imageFileName"    # Ljava/lang/String;
    .param p6, "settingFileName"    # Ljava/lang/String;
    .param p7, "isInstalled"    # Z
    .param p8, "isPreload"    # Z
    .param p9, "voiceType"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mAppName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mPackageName:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mClassName:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mVersion:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mImageFileName:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mSettingFileName:Ljava/lang/String;

    .line 40
    iput-boolean p7, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mIsInstalled:Z

    .line 41
    iput-boolean p8, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mIsPreload:Z

    .line 42
    iput-object p9, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mVoiceType:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getAppCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mAppCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mImageFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstalledState()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mIsInstalled:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreloadState()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mIsPreload:Z

    return v0
.end method

.method public getSettingFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mSettingFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mVoiceType:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mAppName:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mPackageName:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mClassName:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mVersion:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mImageFileName:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mSettingFileName:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mIsInstalled:Z

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mIsPreload:Z

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mVoiceType:Ljava/lang/String;

    .line 173
    return-void

    :cond_0
    move v0, v2

    .line 170
    goto :goto_0

    :cond_1
    move v1, v2

    .line 171
    goto :goto_1
.end method

.method public setAppCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "appCategory"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mAppCategory:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mClassName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setImageFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageFileName"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mImageFileName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setInstalledState(Z)V
    .locals 0
    .param p1, "isInstalled"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mIsInstalled:Z

    .line 78
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mAppName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mPackageName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPreloadState(Z)V
    .locals 0
    .param p1, "isPreload"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mIsPreload:Z

    .line 82
    return-void
.end method

.method public setSettingFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "settingFileName"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mSettingFileName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mVersion:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setVoiceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "voiceType"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mVoiceType:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setupTTSAppsInfo()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    sget-object v0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeToParcel..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mImageFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mSettingFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mIsInstalled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 158
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mIsPreload:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/TTSAppsInfo;->mVoiceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return-void

    :cond_0
    move v0, v2

    .line 157
    goto :goto_0

    :cond_1
    move v1, v2

    .line 158
    goto :goto_1
.end method
