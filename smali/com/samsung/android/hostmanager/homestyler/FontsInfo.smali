.class public Lcom/samsung/android/hostmanager/homestyler/FontsInfo;
.super Ljava/lang/Object;
.source "FontsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/hostmanager/br/BPackageInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hostmanager/homestyler/FontsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppCategory:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mFamilyName:Ljava/lang/String;

.field private mFontImageName:Ljava/lang/String;

.field private mFontName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPreloadFont:Z

.field private mSettingFileName:Ljava/lang/String;

.field private mShownState:Z

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->TAG:Ljava/lang/String;

    .line 176
    new-instance v0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "imageFileName"    # Ljava/lang/String;
    .param p5, "settingFileName"    # Ljava/lang/String;
    .param p6, "preloadState"    # Z
    .param p7, "version"    # Ljava/lang/String;
    .param p8, "shownState"    # Z
    .param p9, "family"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mFontName:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mPackageName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mClassName:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mFontImageName:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mSettingFileName:Ljava/lang/String;

    .line 39
    iput-boolean p6, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mPreloadFont:Z

    .line 40
    iput-object p7, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mVersion:Ljava/lang/String;

    .line 42
    iput-boolean p8, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mShownState:Z

    .line 43
    iput-object p9, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mFamilyName:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public getAppCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mAppCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Z
    .locals 1

    .prologue
    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getExplain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "unused"

    return-object v0
.end method

.method public getImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mFontImageName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mFontName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreloadState()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mPreloadFont:Z

    return v0
.end method

.method public getSettingFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mSettingFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getShownState()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mShownState:Z

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mFontName:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mPackageName:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mClassName:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mFontImageName:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mSettingFileName:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mPreloadFont:Z

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mVersion:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mShownState:Z

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mFamilyName:Ljava/lang/String;

    .line 174
    return-void

    :cond_0
    move v0, v2

    .line 169
    goto :goto_0

    :cond_1
    move v1, v2

    .line 172
    goto :goto_1
.end method

.method public setAppCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "appCategory"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mAppCategory:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mClassName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setFamilyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "familyName"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mFamilyName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appImageName"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mFontImageName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mFontName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mPackageName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setPreloadState(Z)V
    .locals 0
    .param p1, "isPreload"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mPreloadFont:Z

    .line 71
    return-void
.end method

.method public setSettingFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "settingFileName"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mSettingFileName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setShownState(Z)V
    .locals 0
    .param p1, "isShown"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mShownState:Z

    .line 83
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mVersion:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setupFontsSetupInfor()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    sget-object v0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->TAG:Ljava/lang/String;

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

    .line 151
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mFontName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mFontImageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mSettingFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mPreloadFont:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mShownState:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/hostmanager/homestyler/FontsInfo;->mFamilyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return-void

    :cond_0
    move v0, v2

    .line 156
    goto :goto_0

    :cond_1
    move v1, v2

    .line 159
    goto :goto_1
.end method
